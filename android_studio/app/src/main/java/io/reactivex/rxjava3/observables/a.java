package io.reactivex.rxjava3.observables;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.disposables.f;
import io.reactivex.rxjava3.internal.operators.observable.k;
import io.reactivex.rxjava3.internal.operators.observable.r2;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p7.c;
import p7.e;
import p7.g;

/* compiled from: ConnectableObservable.java */
/* loaded from: classes4.dex */
public abstract class a<T> extends g0<T> {
    @c
    @g("none")
    @e
    public g0<T> A8() {
        return B8(1);
    }

    @c
    @g("none")
    @e
    public g0<T> B8(int numberOfSubscribers) {
        return C8(numberOfSubscribers, io.reactivex.rxjava3.internal.functions.a.h());
    }

    @c
    @g("none")
    @e
    public g0<T> C8(int numberOfSubscribers, @e q7.g<? super f> connection) {
        Objects.requireNonNull(connection, "connection is null");
        if (numberOfSubscribers <= 0) {
            E8(connection);
            return io.reactivex.rxjava3.plugins.a.U(this);
        }
        return io.reactivex.rxjava3.plugins.a.R(new k(this, numberOfSubscribers, connection));
    }

    @g("none")
    @e
    public final f D8() {
        io.reactivex.rxjava3.internal.util.e eVar = new io.reactivex.rxjava3.internal.util.e();
        E8(eVar);
        return eVar.f81330a;
    }

    @g("none")
    public abstract void E8(@e q7.g<? super f> connection);

    @c
    @g("none")
    @e
    public g0<T> F8() {
        return io.reactivex.rxjava3.plugins.a.R(new r2(this));
    }

    @c
    @g("none")
    @e
    public final g0<T> G8(int subscriberCount) {
        return I8(subscriberCount, 0L, TimeUnit.NANOSECONDS, io.reactivex.rxjava3.schedulers.b.j());
    }

    @c
    @g("io.reactivex:computation")
    @e
    public final g0<T> H8(int subscriberCount, long timeout, @e TimeUnit unit) {
        return I8(subscriberCount, timeout, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @c
    @g("custom")
    @e
    public final g0<T> I8(int subscriberCount, long timeout, @e TimeUnit unit, @e o0 scheduler) {
        io.reactivex.rxjava3.internal.functions.b.b(subscriberCount, "subscriberCount");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new r2(this, subscriberCount, timeout, unit, scheduler));
    }

    @c
    @g("io.reactivex:computation")
    @e
    public final g0<T> J8(long timeout, @e TimeUnit unit) {
        return I8(1, timeout, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @c
    @g("custom")
    @e
    public final g0<T> K8(long timeout, @e TimeUnit unit, @e o0 scheduler) {
        return I8(1, timeout, unit, scheduler);
    }

    @g("none")
    public abstract void L8();
}
