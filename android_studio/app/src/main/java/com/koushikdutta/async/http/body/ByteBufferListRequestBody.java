package com.koushikdutta.async.http.body;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.parser.ByteBufferListParser;

/* loaded from: classes3.dex */
public class ByteBufferListRequestBody implements AsyncHttpRequestBody<ByteBufferList> {

    /* renamed from: b  reason: collision with root package name */
    public static String f44704b = "application/binary";

    /* renamed from: a  reason: collision with root package name */
    ByteBufferList f44705a;

    public ByteBufferListRequestBody() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(CompletedCallback completedCallback, Exception exc, ByteBufferList byteBufferList) {
        this.f44705a = byteBufferList;
        completedCallback.g(exc);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        new ByteBufferListParser().a(dataEmitter).B(new FutureCallback() { // from class: com.koushikdutta.async.http.body.a
            @Override // com.koushikdutta.async.future.FutureCallback
            public final void c(Exception exc, Object obj) {
                ByteBufferListRequestBody.this.c(completedCallback, exc, (ByteBufferList) obj);
            }
        });
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: b */
    public ByteBufferList get() {
        return this.f44705a;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        return f44704b;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        return this.f44705a.P();
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        Util.m(dataSink, this.f44705a, completedCallback);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        return true;
    }

    public ByteBufferListRequestBody(ByteBufferList byteBufferList) {
        this.f44705a = byteBufferList;
    }
}
