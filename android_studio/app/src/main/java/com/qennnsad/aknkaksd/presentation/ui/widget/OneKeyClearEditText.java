package com.qennnsad.aknkaksd.presentation.ui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.CycleInterpolator;
import android.view.animation.TranslateAnimation;
import com.google.android.material.textfield.TextInputEditText;

/* loaded from: classes3.dex */
public class OneKeyClearEditText extends TextInputEditText {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f54327a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f54328b;

    /* renamed from: c  reason: collision with root package name */
    private c f54329c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b implements View.OnFocusChangeListener {
        private b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z9) {
            OneKeyClearEditText.this.f54328b = z9;
            if (OneKeyClearEditText.this.f54328b) {
                OneKeyClearEditText.this.setClearDrawableVisible(OneKeyClearEditText.this.getText().toString().length() >= 1);
            } else {
                OneKeyClearEditText.this.setClearDrawableVisible(false);
            }
            if (OneKeyClearEditText.this.f54329c != null) {
                OneKeyClearEditText.this.f54329c.onFocusChange(view, z9);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onFocusChange(View view, boolean z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class d implements TextWatcher {
        private d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            OneKeyClearEditText.this.setClearDrawableVisible(OneKeyClearEditText.this.getText().toString().length() >= 1);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    public OneKeyClearEditText(Context context) {
        super(context);
        d();
    }

    private void d() {
        this.f54327a = getCompoundDrawables()[2];
        setOnFocusChangeListener(new b());
        addTextChangedListener(new d());
        setClearDrawableVisible(false);
    }

    public void e() {
        startAnimation(f(5));
    }

    public Animation f(int i4) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 10.0f, 0.0f, 10.0f);
        translateAnimation.setInterpolator(new CycleInterpolator(i4));
        translateAnimation.setDuration(1000L);
        return translateAnimation;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (motionEvent.getX() > ((float) (getWidth() - getTotalPaddingRight())) && motionEvent.getX() < ((float) (getWidth() - getPaddingRight()))) {
                setText("");
            }
        }
        try {
            return super.onTouchEvent(motionEvent);
        } catch (SecurityException unused) {
            return true;
        }
    }

    public void setClearDrawableVisible(boolean z9) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], z9 ? this.f54327a : null, getCompoundDrawables()[3]);
    }

    public void setOneKeyClearOnFocusChangeListener(c cVar) {
        this.f54329c = cVar;
    }

    public OneKeyClearEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d();
    }

    public OneKeyClearEditText(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        d();
    }
}
