package eltos.simpledialogfragment.input;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes3.dex */
public class TextInputAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* renamed from: a  reason: collision with root package name */
    public boolean f65206a;

    public TextInputAutoCompleteTextView(Context context) {
        super(context);
        this.f65206a = false;
    }

    @Override // android.widget.AutoCompleteTextView
    public boolean enoughToFilter() {
        return this.f65206a || super.enoughToFilter();
    }

    @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = getParent();
            while (true) {
                if (!(parent instanceof View)) {
                    break;
                } else if (parent instanceof TextInputLayout) {
                    editorInfo.hintText = ((TextInputLayout) parent).getHint();
                    break;
                } else {
                    parent = parent.getParent();
                }
            }
        }
        return onCreateInputConnection;
    }

    @Override // android.widget.AutoCompleteTextView
    protected void performFiltering(CharSequence charSequence, int i4) {
        if (this.f65206a) {
            charSequence = "";
        }
        super.performFiltering(charSequence, i4);
    }

    public TextInputAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f65206a = false;
    }

    public TextInputAutoCompleteTextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f65206a = false;
    }
}
