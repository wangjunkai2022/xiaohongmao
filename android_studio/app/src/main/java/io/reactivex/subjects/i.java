package io.reactivex.subjects;

import io.reactivex.g0;
import io.reactivex.z;

/* compiled from: Subject.java */
/* loaded from: classes4.dex */
public abstract class i<T> extends z<T> implements g0<T> {
    @m7.f
    public abstract Throwable b();

    public abstract boolean d();

    public abstract boolean e();

    public abstract boolean f();

    @m7.e
    public final i<T> g() {
        return this instanceof g ? this : new g(this);
    }
}
