package io.reactivex.rxjava3.flowables;

import io.reactivex.rxjava3.annotations.BackpressureKind;
import io.reactivex.rxjava3.core.m;
import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.disposables.f;
import io.reactivex.rxjava3.internal.operators.flowable.c3;
import io.reactivex.rxjava3.internal.operators.flowable.k;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p7.c;
import p7.e;
import p7.g;

/* compiled from: ConnectableFlowable.java */
/* loaded from: classes4.dex */
public abstract class a<T> extends m<T> {
    @c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public m<T> g9() {
        return h9(1);
    }

    @c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public m<T> h9(int numberOfSubscribers) {
        return i9(numberOfSubscribers, io.reactivex.rxjava3.internal.functions.a.h());
    }

    @c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public m<T> i9(int numberOfSubscribers, @e q7.g<? super f> connection) {
        Objects.requireNonNull(connection, "connection is null");
        if (numberOfSubscribers <= 0) {
            k9(connection);
            return io.reactivex.rxjava3.plugins.a.T(this);
        }
        return io.reactivex.rxjava3.plugins.a.P(new k(this, numberOfSubscribers, connection));
    }

    @g("none")
    @e
    public final f j9() {
        io.reactivex.rxjava3.internal.util.e eVar = new io.reactivex.rxjava3.internal.util.e();
        k9(eVar);
        return eVar.f81330a;
    }

    @g("none")
    public abstract void k9(@e q7.g<? super f> connection);

    @c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public m<T> l9() {
        return io.reactivex.rxjava3.plugins.a.P(new c3(this));
    }

    @c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final m<T> m9(int subscriberCount) {
        return o9(subscriberCount, 0L, TimeUnit.NANOSECONDS, io.reactivex.rxjava3.schedulers.b.j());
    }

    @c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("io.reactivex:computation")
    @e
    public final m<T> n9(int subscriberCount, long timeout, @e TimeUnit unit) {
        return o9(subscriberCount, timeout, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("custom")
    @e
    public final m<T> o9(int subscriberCount, long timeout, @e TimeUnit unit, @e o0 scheduler) {
        io.reactivex.rxjava3.internal.functions.b.b(subscriberCount, "subscriberCount");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new c3(this, subscriberCount, timeout, unit, scheduler));
    }

    @c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("io.reactivex:computation")
    @e
    public final m<T> p9(long timeout, @e TimeUnit unit) {
        return o9(1, timeout, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("custom")
    @e
    public final m<T> q9(long timeout, @e TimeUnit unit, @e o0 scheduler) {
        return o9(1, timeout, unit, scheduler);
    }

    @g("none")
    public abstract void r9();
}
