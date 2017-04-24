package sl.docx.view    ;

import sl.docx.DocxDocument;

import javax.swing.text.BoxView;
import javax.swing.text.Element;
import javax.swing.text.View;
import java.awt.*;

/**
 * Represents document root view.
 *
 * @author Stanislav Lapitsky
 */
public class SectionView extends BoxView {

    /**
     * Constructs a section view.
     *
     * @param elem the element this view is responsible for
     * @param axis either <code>View.X_AXIS</code> or <code>View.Y_AXIS</code>
     */
    public SectionView(Element elem, int axis) {
        super(elem, axis);
    }

    /**
     * Perform layout on the box
     *
     * @param width the width (inside of the insets) >= 0
     * @param height the height (inside of the insets) >= 0
     */
    protected void layout(int width, int height) {
        DocxDocument doc=(DocxDocument)getDocument();
        Insets margins=doc.getDocumentMargins();
        this.setInsets((short)margins.top,(short)margins.left,(short)margins.bottom,(short)margins.right );

        if (doc.DOCUMENT_WIDTH>0) {
            super.layout(doc.DOCUMENT_WIDTH-margins.left-margins.right,height);
        }
        else {
            super.layout(width,height);
        }
    }
    /**
     * Determines the minimum span for this view along an
     * axis.
     *
     * @param axis may be either View.X_AXIS or View.Y_AXIS
     * @returns  the span the view would like to be rendered into >= 0.
     *           Typically the view is told to render into the span
     *           that is returned, although there is no guarantee.
     *           The parent may choose to resize or break the view.
     * @exception IllegalArgumentException for an invalid axis type
     */
    public float getMinimumSpan(int axis) {
        if (axis==View.X_AXIS) {
            DocxDocument doc=(DocxDocument)this.getDocument();
            if (doc.DOCUMENT_WIDTH>0)
                return doc.DOCUMENT_WIDTH;
            else
                return super.getMinimumSpan(axis);
        }
        else {
            return super.getMinimumSpan(axis);
        }
    }
    /**
     * Determines the maximum span for this view along an
     * axis.
     *
     * @param axis may be either View.X_AXIS or View.Y_AXIS
     * @returns  the span the view would like to be rendered into >= 0.
     *           Typically the view is told to render into the span
     *           that is returned, although there is no guarantee.
     *           The parent may choose to resize or break the view.
     * @exception IllegalArgumentException for an invalid axis type
     */
    public float getMaximumSpan(int axis) {
        if (axis==View.X_AXIS) {
            DocxDocument doc=(DocxDocument)this.getDocument();
            if (doc.DOCUMENT_WIDTH>0)
                return doc.DOCUMENT_WIDTH;
            else
                return super.getMinimumSpan(axis);
        }
        else {
            return super.getMaximumSpan(axis);
        }
    }
    /**
     * Determines the preferred span for this view along an
     * axis.
     *
     * @param axis may be either View.X_AXIS or View.Y_AXIS
     * @returns  the span the view would like to be rendered into >= 0.
     *           Typically the view is told to render into the span
     *           that is returned, although there is no guarantee.
     *           The parent may choose to resize or break the view.
     * @exception IllegalArgumentException for an invalid axis type
     */
    public float getPreferredSpan(int axis) {
        if (axis==View.X_AXIS) {
            DocxDocument doc=(DocxDocument)this.getDocument();
            if (doc.DOCUMENT_WIDTH>0)
                return doc.DOCUMENT_WIDTH;
            else
                return super.getMinimumSpan(axis);
        }
        else {
            return super.getPreferredSpan(axis);
        }
    }

}