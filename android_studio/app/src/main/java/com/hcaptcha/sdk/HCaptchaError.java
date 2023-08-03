package com.hcaptcha.sdk;

import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public enum HCaptchaError {
    NETWORK_ERROR(7, "No internet connection"),
    INVALID_DATA(8, "Invalid data is not accepted by endpoints"),
    CHALLENGE_ERROR(9, "Challenge encountered error on setup"),
    INTERNAL_ERROR(10, "hCaptcha client encountered an internal error"),
    SESSION_TIMEOUT(15, "Session Timeout"),
    TOKEN_TIMEOUT(16, "Token Timeout"),
    CHALLENGE_CLOSED(30, "Challenge Closed"),
    RATE_LIMITED(31, "Rate Limited"),
    INVALID_CUSTOM_THEME(32, "Invalid custom theme"),
    ERROR(29, "Unknown error");
    

    /* renamed from: a  reason: collision with root package name */
    private final int f38355a;

    /* renamed from: b  reason: collision with root package name */
    private final String f38356b;

    HCaptchaError(int i4, String str) {
        this.f38355a = i4;
        this.f38356b = str;
    }

    @NonNull
    public static HCaptchaError fromId(int i4) {
        HCaptchaError[] values;
        for (HCaptchaError hCaptchaError : values()) {
            if (hCaptchaError.f38355a == i4) {
                return hCaptchaError;
            }
        }
        throw new RuntimeException("Unsupported error id: " + i4);
    }

    public int getErrorId() {
        return this.f38355a;
    }

    public String getMessage() {
        return this.f38356b;
    }

    @Override // java.lang.Enum
    @NonNull
    public String toString() {
        return this.f38356b;
    }
}
