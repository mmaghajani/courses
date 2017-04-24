<?php
class BankAccount{
	private $accountNumber;
	private $balance;
	private $owner;

	/*
	function __construct(){
		$this->accountNumber = 0;
		$this->balance = 0;
		$this->owner = "";
	}
	 */

	/*
	function __construct($num, $balance, $owner){
		$this->accountNumber = $num;
		$this->balance = $balance;
		$this->owner = $owner;
	}
	 */

	function BankAccount(){
		echo "1) I am the BankAccount \n";
	}

	function BankAccount($num, $balance, $owner){
		echo "2) I am the BankAccount \n";
	}

	function getNum(){
		return $this->accountNumber;
	}

	function getBalance(){
		return $this->balance;
	}

	function getOwner(){
		return $this->owner;
	}
}


/*
$ba = new BankAccount();
echo "Owner = ", $ba->getOwner(), ", Account# = ", $ba->getNum(), ", Balance = ", $ba->getBalance(), "\n";
 */

$ba = new BankAccount(120, 10000, "Ali");
echo "Owner = ", $ba->getOwner(), ", Account# = ", $ba->getNum(), ", Balance = ", $ba->getBalance(), "\n";
?>

