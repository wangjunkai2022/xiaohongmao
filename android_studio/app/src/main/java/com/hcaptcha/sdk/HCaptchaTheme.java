package com.hcaptcha.sdk;

import androidx.annotation.NonNull;
import com.fasterxml.jackson.annotation.a0;

/* loaded from: classes2.dex */
public enum HCaptchaTheme {
    DARK("dark"),
    LIGHT("light"),
    CONTRAST("contrast");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f38361a;

    HCaptchaTheme(String str) {
        this.f38361a = str;
    }

    public String getTheme() {
        return this.f38361a;
    }

    @Override // java.lang.Enum
    @NonNull
    @a0
    public String toString() {
        return this.f38361a;
    }
}
