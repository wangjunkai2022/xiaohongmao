package com.hcaptcha.sdk;

import edu.umd.cs.findbugs.annotations.NonNull;
import edu.umd.cs.findbugs.annotations.Nullable;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import lombok.Generated;

/* loaded from: classes2.dex */
public class HCaptchaException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final HCaptchaError f38357a;

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public HCaptchaException(HCaptchaError hCaptchaError) {
        this.f38357a = hCaptchaError;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public boolean canEqual(@Nullable Object obj) {
        return obj instanceof HCaptchaException;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof HCaptchaException) {
            HCaptchaException hCaptchaException = (HCaptchaException) obj;
            if (hCaptchaException.canEqual(this) && super.equals(obj)) {
                HCaptchaError hCaptchaError = getHCaptchaError();
                HCaptchaError hCaptchaError2 = hCaptchaException.getHCaptchaError();
                return hCaptchaError != null ? hCaptchaError.equals(hCaptchaError2) : hCaptchaError2 == null;
            }
            return false;
        }
        return false;
    }

    public HCaptchaError getHCaptchaError() {
        return this.f38357a;
    }

    @Override // java.lang.Throwable
    @androidx.annotation.Nullable
    public String getMessage() {
        return this.f38357a.getMessage();
    }

    public int getStatusCode() {
        return this.f38357a.getErrorId();
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public int hashCode() {
        int hashCode = super.hashCode();
        HCaptchaError hCaptchaError = getHCaptchaError();
        return (hashCode * 59) + (hCaptchaError == null ? 43 : hCaptchaError.hashCode());
    }

    @Override // java.lang.Throwable
    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String toString() {
        return "HCaptchaException(hCaptchaError=" + getHCaptchaError() + ")";
    }
}
