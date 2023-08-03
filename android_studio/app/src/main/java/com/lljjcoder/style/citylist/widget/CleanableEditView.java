package com.lljjcoder.style.citylist.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;

/* loaded from: classes3.dex */
public class CleanableEditView extends AppCompatEditText implements TextWatcher, View.OnFocusChangeListener {
    private boolean hasFocus;
    private Drawable left;
    private Drawable right;
    private int xUp;

    public CleanableEditView(Context context) {
        this(context, null);
    }

    private void addListeners() {
        try {
            setOnFocusChangeListener(this);
            addTextChangedListener(this);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void initDatas() {
        try {
            setCompoundDrawablesWithIntrinsicBounds(this.left, (Drawable) null, (Drawable) null, (Drawable) null);
            addListeners();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void initWedgits(AttributeSet attributeSet) {
        try {
            this.left = getCompoundDrawables()[0];
            this.right = getCompoundDrawables()[2];
            initDatas();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z9) {
        try {
            this.hasFocus = z9;
            String obj = getText().toString();
            if (z9) {
                if (obj.equalsIgnoreCase("")) {
                    setCompoundDrawablesWithIntrinsicBounds(this.left, (Drawable) null, (Drawable) null, (Drawable) null);
                } else {
                    setCompoundDrawablesWithIntrinsicBounds(this.left, (Drawable) null, this.right, (Drawable) null);
                }
            }
            if (z9) {
                return;
            }
            setCompoundDrawablesWithIntrinsicBounds(this.left, (Drawable) null, (Drawable) null, (Drawable) null);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        if (this.hasFocus) {
            if (TextUtils.isEmpty(charSequence)) {
                setCompoundDrawablesWithIntrinsicBounds(this.left, (Drawable) null, (Drawable) null, (Drawable) null);
                return;
            }
            if (this.right == null) {
                this.right = getCompoundDrawables()[2];
            }
            setCompoundDrawablesWithIntrinsicBounds(this.left, (Drawable) null, this.right, (Drawable) null);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            if (motionEvent.getAction() == 1) {
                this.xUp = (int) motionEvent.getX();
                if (getWidth() - this.xUp <= getCompoundPaddingRight() && !TextUtils.isEmpty(getText().toString())) {
                    setText("");
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return super.onTouchEvent(motionEvent);
    }

    public String text_String() {
        return getText().toString();
    }

    public CleanableEditView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842862);
    }

    public CleanableEditView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.hasFocus = false;
        this.xUp = 0;
        initWedgits(attributeSet);
    }
}
