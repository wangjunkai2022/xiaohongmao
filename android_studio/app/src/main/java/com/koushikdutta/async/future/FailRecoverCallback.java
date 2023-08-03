package com.koushikdutta.async.future;

/* loaded from: classes3.dex */
public interface FailRecoverCallback<T> {
    Future<T> a(Exception exc) throws Exception;
}
