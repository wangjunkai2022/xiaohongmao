package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;

/* loaded from: classes3.dex */
public interface AsyncHttpRequestBody<T> {
    void K(DataEmitter dataEmitter, CompletedCallback completedCallback);

    T get();

    String getContentType();

    int length();

    void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback);

    boolean t0();
}
