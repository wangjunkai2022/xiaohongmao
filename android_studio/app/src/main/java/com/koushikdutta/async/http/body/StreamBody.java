package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class StreamBody implements AsyncHttpRequestBody<InputStream> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f44756d = "application/binary";

    /* renamed from: a  reason: collision with root package name */
    InputStream f44757a;

    /* renamed from: b  reason: collision with root package name */
    int f44758b;

    /* renamed from: c  reason: collision with root package name */
    String f44759c = "application/binary";

    public StreamBody(InputStream inputStream, int i4) {
        this.f44757a = inputStream;
        this.f44758b = i4;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, CompletedCallback completedCallback) {
        throw new AssertionError("not implemented");
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: a */
    public InputStream get() {
        return this.f44757a;
    }

    public StreamBody b(String str) {
        this.f44759c = str;
        return this;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        return this.f44759c;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        return this.f44758b;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        InputStream inputStream = this.f44757a;
        int i4 = this.f44758b;
        Util.h(inputStream, i4 < 0 ? 2147483647L : i4, dataSink, completedCallback);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        throw new AssertionError("not implemented");
    }
}
