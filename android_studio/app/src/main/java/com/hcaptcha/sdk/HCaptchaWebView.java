package com.hcaptcha.sdk;

import android.content.Context;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes2.dex */
public class HCaptchaWebView extends WebView {
    public HCaptchaWebView(@NonNull Context context) {
        super(context);
    }

    public HCaptchaWebView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HCaptchaWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }

    @RequiresApi(api = 21)
    public HCaptchaWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onCheckIsTextEditor() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return super.onCheckIsTextEditor();
        }
        return false;
    }
}
