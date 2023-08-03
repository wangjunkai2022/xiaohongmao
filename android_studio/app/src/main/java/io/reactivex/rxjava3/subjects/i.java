package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.n0;

/* compiled from: Subject.java */
/* loaded from: classes4.dex */
public abstract class i<T> extends g0<T> implements n0<T> {
    @p7.c
    @p7.f
    public abstract Throwable A8();

    @p7.c
    public abstract boolean B8();

    @p7.c
    public abstract boolean C8();

    @p7.c
    public abstract boolean D8();

    @p7.c
    @p7.e
    public final i<T> E8() {
        return this instanceof g ? this : new g(this);
    }
}
