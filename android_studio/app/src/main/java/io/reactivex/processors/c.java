package io.reactivex.processors;

import io.reactivex.j;
import io.reactivex.o;

/* compiled from: FlowableProcessor.java */
/* loaded from: classes4.dex */
public abstract class c<T> extends j<T> implements org.reactivestreams.b<T, T>, o<T> {
    @m7.f
    public abstract Throwable M8();

    public abstract boolean N8();

    public abstract boolean O8();

    public abstract boolean P8();

    @m7.e
    @m7.c
    public final c<T> Q8() {
        return this instanceof g ? this : new g(this);
    }
}
