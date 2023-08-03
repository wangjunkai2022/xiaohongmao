package com.koushikdutta.async.http;

import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.DataEmitter;

/* loaded from: classes3.dex */
public interface AsyncHttpResponse extends DataEmitter {
    AsyncSocket W();

    int c();

    AsyncHttpRequest e();

    Headers f();

    String message();

    String protocol();
}
