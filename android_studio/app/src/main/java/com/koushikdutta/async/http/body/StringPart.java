package com.koushikdutta.async.http.body;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class StringPart extends StreamPart {

    /* renamed from: e  reason: collision with root package name */
    String f44765e;

    public StringPart(String str, String str2) {
        super(str, str2.getBytes().length, null);
        this.f44765e = str2;
    }

    @Override // com.koushikdutta.async.http.body.StreamPart
    protected InputStream i() throws IOException {
        return new ByteArrayInputStream(this.f44765e.getBytes());
    }

    public String j() {
        return this.f44765e;
    }

    public String toString() {
        return this.f44765e;
    }
}
