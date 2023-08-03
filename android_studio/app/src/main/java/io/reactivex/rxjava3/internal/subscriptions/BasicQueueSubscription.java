package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.internal.fuseable.n;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public abstract class BasicQueueSubscription<T> extends AtomicLong implements n<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f81280a = -6671519529404341862L;

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(T e4) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(T v12, T v22) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
