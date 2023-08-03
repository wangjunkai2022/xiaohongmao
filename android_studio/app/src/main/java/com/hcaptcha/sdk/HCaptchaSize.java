package com.hcaptcha.sdk;

import androidx.annotation.NonNull;
import com.fasterxml.jackson.annotation.a0;
import io.sentry.m2;

/* loaded from: classes2.dex */
public enum HCaptchaSize {
    INVISIBLE("invisible"),
    NORMAL(m2.D),
    COMPACT("compact");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f38359a;

    HCaptchaSize(String str) {
        this.f38359a = str;
    }

    public String getSize() {
        return this.f38359a;
    }

    @Override // java.lang.Enum
    @NonNull
    @a0
    public String toString() {
        return this.f38359a;
    }
}
