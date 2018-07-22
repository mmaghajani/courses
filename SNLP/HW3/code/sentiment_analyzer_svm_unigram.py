import copy
import math
import operator
import random
import pprint
from sklearn import svm

NUMBER_OF_LINE_IN_RAW_DATA = 519
DATA = dict()  # A dictionary of sets for each class
WORD_DATA = dict()  # A dictionary for all words


def read_data():
    global DATA
    file_path = "dataset.txt"
    cnt = 0
    with open(file_path) as fp:
        while cnt < NUMBER_OF_LINE_IN_RAW_DATA:
            line = fp.readline()
            cnt += 1
            data = line.split("@")
            tag = data[0]
            doc = data[1].replace("\n", " ").replace(".", " ").replace(",", " ").\
                replace("!", " ").replace(";", " ").replace(")", " ").replace("(", " ")
            if tag not in DATA.keys():
                DATA[tag] = list()
                DATA[tag].append(doc)
            else:
                DATA[tag].append(doc)


def tokenize():
    global WORD_DATA
    domains = list(DATA.keys())
    for domain in domains:
        sentences = DATA.get(domain)
        for sentence in sentences:
            words = set(sentence.split(" "))
            for word in words:
                if word not in WORD_DATA.keys():
                    WORD_DATA[word] = {"all": 1, domains[0]: 0, domains[1]: 0}
                    WORD_DATA[word][domain] += 1
                else:
                    WORD_DATA[word][domain] += 1
                    WORD_DATA[word]["all"] += 1
    while True:
        try:
            WORD_DATA.pop("")
        except KeyError as e:
            break


def classify(train, test):
    train_label = list(map(lambda x: x[-1:][0], train))
    final_train = list(map(lambda x: x[:-1], train))
    test_label = test[-1]
    final_test = list()
    final_test.append(test[:-1])
    clf = svm.LinearSVC(penalty='l1', loss='squared_hinge', dual=False, random_state=0)
    clf.fit(final_train, train_label)
    predicted_label = clf.predict(final_test)
    return predicted_label


def to_vec(features):
    vectored_data = list()
    for cat in DATA.keys():
        for doc in DATA.get(cat):
            vec = dict((el, 0) for el in features)
            count = 0
            for word in doc.split(" "):
                if word in vec.keys():
                    vec[word] += 1
                    count += 1
            if count == 0:
                count = 1
            vec = dict(map(lambda x: (x[0], x[1] / count), vec.items()))
            row = list(vec.values())
            row.append(cat)
            vectored_data.append(row)
    vectored_data = sorted(vectored_data, key=lambda k: random.random())
    return vectored_data


def leave_one_out(features):
    cnt = 0     # Number of correct prediction
    nn = 0      # Number of correct prediction for NEG category
    np = 0      # Number of wrong prediction for NEG category
    pn = 0      # Number of wrong prediction for POS category
    pp = 0      # Number of correct prediction for POS category
    vectored_data = to_vec(features)
    for index in range(0, len(vectored_data)):
        # removes one row for leave-one-out evaluation
        temp_vectored = copy.deepcopy(vectored_data)
        row = temp_vectored.pop(index)
        tag = row[-1]

        predicted_tag = classify(temp_vectored, row)
        if predicted_tag == tag and tag == "NEG":
            cnt += 1
            nn += 1
        elif predicted_tag == tag and tag == "POS":
            cnt += 1
            pp += 1
        elif predicted_tag != tag and tag == "POS":
            pn += 1
        elif predicted_tag != tag and tag == "NEG":
            np += 1

    return cnt, nn, np, pp, pn


def get_frequent_words(k):
    new_word_data = sorted(WORD_DATA.items(), key=lambda x: x[1]["all"], reverse=True)
    return list(map(lambda x: x[0], dict(new_word_data[:k]).items()))


def mutual_info():
    MIs = dict()
    N = NUMBER_OF_LINE_IN_RAW_DATA
    score = dict()
    for word in WORD_DATA.keys():
        Nw = WORD_DATA.get(word)["all"]
        Nwbar = N - Nw
        for cat in DATA.keys():
            Ni = len(DATA.get(cat))
            Niw = WORD_DATA.get(word)[cat]
            Niwbar = Ni - Niw
            Nibar = N - Ni
            Nibarw = Nw - Niw
            Nibarwbar = Nibar - Nibarw
            a = 0.0000000000
            b = 0.0000000000
            c = 0.0000000000
            d = 0.0000000000
            try:
                if Niw is not 0:
                    a = (Niw / N) * math.log2((N * Niw) / (Nw * Ni))
                if Niwbar is not 0:
                    b = (Niwbar / N) * math.log2((N * Niwbar) / (Nwbar * Ni))
                if Nibarw is not 0:
                    c = (Nibarw / N) * math.log2((N * Nibarw) / (Nw * Nibar))
                if Nibarwbar is not 0:
                    d = (Nibarwbar / N) * math.log2((N * Nibarwbar) / (Nwbar * Nibar))
            except ValueError as e:
                print(N , Niw , Ni , Niwbar , Nwbar, Nibarwbar, Nibar)
            MI = a + b + c + d
            if word not in MIs.keys():
                MIs[word] = {cat: MI}
            else:
                MIs.get(word).update({cat: MI})
        s = 0
        for cat in DATA.keys():
            Ni = len(DATA.get(cat))
            Pci = Ni / N
            s += (MIs.get(word)[cat] * Pci)
        score[word] = s
    MIs = dict(map(lambda x: (x[0], (score[x[0]],
                                     max(x[1].items(), key=operator.itemgetter(1)))), MIs.items()))
    MIs = sorted(MIs.items(), key=lambda x: x[1][0], reverse=True)
    return list(map(lambda x: x[0], dict(MIs[:100]).items()))


read_data()
tokenize()
features0 = mutual_info()
output = leave_one_out(features0)

print("NEG:\n")
precision = output[1]/(output[1]+output[4])
recall = output[1]/(output[1]+output[2])
b = 1
fscore = ((1+b**2)/b**2) * ((precision*recall)/(precision+recall))
print("Precision : ", precision)
print("Recall    : ", recall)
print("F-measure : ", fscore)
print("----------------------------")

print("POS:\n")
precision = output[3]/(output[3]+output[2])
recall = output[3]/(output[3]+output[4])
b = 1
fscore = ((1+b**2)/b**2) * ((precision*recall)/(precision+recall))
print("Precision : ", precision)
print("Recall    : ", recall)
print("F-measure : ", fscore)

print("============================")
print("Accuracy : ", (output[1]+output[3])/(output[1]+output[2]+output[3]+output[4]))
