package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicLong;
import o7.l;

/* loaded from: classes4.dex */
public abstract class BasicQueueSubscription<T> extends AtomicLong implements l<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f75865a = -6671519529404341862L;

    @Override // o7.o
    public final boolean offer(T t9) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // o7.o
    public final boolean offer(T t9, T t10) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
