package org.jsoup;

import java.io.IOException;

/* loaded from: classes5.dex */
public class HttpStatusException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private final int f91717a;

    /* renamed from: b  reason: collision with root package name */
    private final String f91718b;

    public HttpStatusException(String str, int i4, String str2) {
        super(str + ". Status=" + i4 + ", URL=[" + str2 + "]");
        this.f91717a = i4;
        this.f91718b = str2;
    }

    public int getStatusCode() {
        return this.f91717a;
    }

    public String getUrl() {
        return this.f91718b;
    }
}
