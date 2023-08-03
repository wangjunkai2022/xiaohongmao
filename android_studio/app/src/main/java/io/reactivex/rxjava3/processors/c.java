package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.core.m;
import io.reactivex.rxjava3.core.r;

/* compiled from: FlowableProcessor.java */
/* loaded from: classes4.dex */
public abstract class c<T> extends m<T> implements org.reactivestreams.b<T, T>, r<T> {
    @p7.c
    @p7.f
    public abstract Throwable g9();

    @p7.c
    public abstract boolean h9();

    @p7.c
    public abstract boolean i9();

    @p7.c
    public abstract boolean j9();

    @p7.c
    @p7.e
    public final c<T> k9() {
        return this instanceof g ? this : new g(this);
    }
}
