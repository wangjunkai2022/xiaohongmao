package com.koushikdutta.async.http.callback;

import com.koushikdutta.async.callback.ResultCallback;
import com.koushikdutta.async.http.AsyncHttpResponse;

/* loaded from: classes3.dex */
public interface RequestCallback<T> extends ResultCallback<AsyncHttpResponse, T> {
    void a(AsyncHttpResponse asyncHttpResponse);

    void c(AsyncHttpResponse asyncHttpResponse, long j4, long j10);
}
