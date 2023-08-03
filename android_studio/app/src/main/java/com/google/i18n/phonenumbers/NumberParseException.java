package com.google.i18n.phonenumbers;

/* loaded from: classes2.dex */
public class NumberParseException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private ErrorType f35515a;

    /* renamed from: b  reason: collision with root package name */
    private String f35516b;

    /* loaded from: classes2.dex */
    public enum ErrorType {
        INVALID_COUNTRY_CODE,
        NOT_A_NUMBER,
        TOO_SHORT_AFTER_IDD,
        TOO_SHORT_NSN,
        TOO_LONG
    }

    public NumberParseException(ErrorType errorType, String str) {
        super(str);
        this.f35516b = str;
        this.f35515a = errorType;
    }

    public ErrorType getErrorType() {
        return this.f35515a;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "Error type: " + this.f35515a + ". " + this.f35516b;
    }
}
