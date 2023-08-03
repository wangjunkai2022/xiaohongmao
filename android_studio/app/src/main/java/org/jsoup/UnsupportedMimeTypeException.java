package org.jsoup;

import java.io.IOException;

/* loaded from: classes5.dex */
public class UnsupportedMimeTypeException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private final String f91719a;

    /* renamed from: b  reason: collision with root package name */
    private final String f91720b;

    public UnsupportedMimeTypeException(String str, String str2, String str3) {
        super(str);
        this.f91719a = str2;
        this.f91720b = str3;
    }

    public String getMimeType() {
        return this.f91719a;
    }

    public String getUrl() {
        return this.f91720b;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Mimetype=" + this.f91719a + ", URL=" + this.f91720b;
    }
}
