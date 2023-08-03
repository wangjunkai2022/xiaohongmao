package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.parser.StringParser;

/* loaded from: classes3.dex */
public class StringBody implements AsyncHttpRequestBody<String> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f44760c = "text/plain";

    /* renamed from: a  reason: collision with root package name */
    byte[] f44761a;

    /* renamed from: b  reason: collision with root package name */
    String f44762b;

    public StringBody() {
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        new StringParser().a(dataEmitter).B(new FutureCallback<String>() { // from class: com.koushikdutta.async.http.body.StringBody.1
            @Override // com.koushikdutta.async.future.FutureCallback
            /* renamed from: a */
            public void c(Exception exc, String str) {
                StringBody.this.f44762b = str;
                completedCallback.g(exc);
            }
        });
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: a */
    public String get() {
        return toString();
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        return f44760c;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        if (this.f44761a == null) {
            this.f44761a = this.f44762b.getBytes();
        }
        return this.f44761a.length;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        if (this.f44761a == null) {
            this.f44761a = this.f44762b.getBytes();
        }
        Util.n(dataSink, this.f44761a, completedCallback);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        return true;
    }

    public String toString() {
        return this.f44762b;
    }

    public StringBody(String str) {
        this();
        this.f44762b = str;
    }
}
