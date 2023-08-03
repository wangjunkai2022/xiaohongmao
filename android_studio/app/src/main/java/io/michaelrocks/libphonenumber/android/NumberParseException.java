package io.michaelrocks.libphonenumber.android;

/* loaded from: classes3.dex */
public class NumberParseException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private ErrorType f70858a;

    /* renamed from: b  reason: collision with root package name */
    private String f70859b;

    /* loaded from: classes3.dex */
    public enum ErrorType {
        INVALID_COUNTRY_CODE,
        NOT_A_NUMBER,
        TOO_SHORT_AFTER_IDD,
        TOO_SHORT_NSN,
        TOO_LONG
    }

    public NumberParseException(ErrorType errorType, String message) {
        super(message);
        this.f70859b = message;
        this.f70858a = errorType;
    }

    public ErrorType getErrorType() {
        return this.f70858a;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "Error type: " + this.f70858a + ". " + this.f70859b;
    }
}
