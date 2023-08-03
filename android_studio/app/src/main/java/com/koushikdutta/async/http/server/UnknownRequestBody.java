package com.koushikdutta.async.http.server;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;

/* loaded from: classes3.dex */
public class UnknownRequestBody implements AsyncHttpRequestBody<Void> {

    /* renamed from: a  reason: collision with root package name */
    int f45039a;

    /* renamed from: b  reason: collision with root package name */
    private String f45040b;

    /* renamed from: c  reason: collision with root package name */
    DataEmitter f45041c;

    public UnknownRequestBody(String str) {
        this.f45039a = -1;
        this.f45040b = str;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, CompletedCallback completedCallback) {
        this.f45041c = dataEmitter;
        dataEmitter.X(completedCallback);
        dataEmitter.b0(new DataCallback.NullDataCallback());
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: a */
    public Void get() {
        return null;
    }

    public DataEmitter b() {
        return this.f45041c;
    }

    @Deprecated
    public void c(DataCallback dataCallback, CompletedCallback completedCallback) {
        this.f45041c.X(completedCallback);
        this.f45041c.b0(dataCallback);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        return this.f45040b;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        return this.f45039a;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        Util.f(this.f45041c, dataSink, completedCallback);
        if (this.f45041c.i()) {
            this.f45041c.k();
        }
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        return false;
    }

    public UnknownRequestBody(DataEmitter dataEmitter, String str, int i4) {
        this.f45040b = str;
        this.f45041c = dataEmitter;
        this.f45039a = i4;
    }
}
