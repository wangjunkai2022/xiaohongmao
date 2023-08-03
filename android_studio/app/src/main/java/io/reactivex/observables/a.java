package io.reactivex.observables;

import io.reactivex.disposables.c;
import io.reactivex.h0;
import io.reactivex.internal.operators.observable.g2;
import io.reactivex.internal.operators.observable.h2;
import io.reactivex.internal.operators.observable.k;
import io.reactivex.internal.operators.observable.o2;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import m7.e;
import n7.g;

/* compiled from: ConnectableObservable.java */
/* loaded from: classes4.dex */
public abstract class a<T> extends z<T> {
    private a<T> h() {
        return this instanceof h2 ? io.reactivex.plugins.a.U(new g2(((h2) this).a())) : this;
    }

    @e
    public z<T> b() {
        return d(1);
    }

    @e
    public z<T> d(int i4) {
        return e(i4, io.reactivex.internal.functions.a.h());
    }

    @e
    public z<T> e(int i4, @e g<? super c> gVar) {
        if (i4 <= 0) {
            g(gVar);
            return io.reactivex.plugins.a.U(this);
        }
        return io.reactivex.plugins.a.R(new k(this, i4, gVar));
    }

    public final c f() {
        io.reactivex.internal.util.e eVar = new io.reactivex.internal.util.e();
        g(eVar);
        return eVar.f75915a;
    }

    public abstract void g(@e g<? super c> gVar);

    @e
    @m7.c
    @m7.g("none")
    public z<T> i() {
        return io.reactivex.plugins.a.R(new o2(h()));
    }

    @m7.c
    @m7.g("none")
    public final z<T> j(int i4) {
        return l(i4, 0L, TimeUnit.NANOSECONDS, io.reactivex.schedulers.b.i());
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> k(int i4, long j4, TimeUnit timeUnit) {
        return l(i4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("custom")
    public final z<T> l(int i4, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.h(i4, "subscriberCount");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new o2(h(), i4, j4, timeUnit, h0Var));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> m(long j4, TimeUnit timeUnit) {
        return l(1, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("custom")
    public final z<T> n(long j4, TimeUnit timeUnit, h0 h0Var) {
        return l(1, j4, timeUnit, h0Var);
    }
}
