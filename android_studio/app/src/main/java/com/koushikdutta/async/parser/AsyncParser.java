package com.koushikdutta.async.parser;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public interface AsyncParser<T> {
    Future<T> a(DataEmitter dataEmitter);

    String b();

    void c(DataSink dataSink, T t9, CompletedCallback completedCallback);

    Type getType();
}
