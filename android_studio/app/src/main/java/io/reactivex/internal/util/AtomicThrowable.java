package io.reactivex.internal.util;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class AtomicThrowable extends AtomicReference<Throwable> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f75896a = 3949248817947090603L;

    public boolean addThrowable(Throwable th) {
        return g.a(this, th);
    }

    public boolean isTerminated() {
        return get() == g.f75916a;
    }

    public Throwable terminate() {
        return g.c(this);
    }
}
