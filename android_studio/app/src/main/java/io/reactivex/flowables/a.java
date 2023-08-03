package io.reactivex.flowables;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.disposables.c;
import io.reactivex.h0;
import io.reactivex.internal.operators.flowable.k;
import io.reactivex.internal.operators.flowable.q2;
import io.reactivex.internal.operators.flowable.r2;
import io.reactivex.internal.operators.flowable.z2;
import io.reactivex.j;
import java.util.concurrent.TimeUnit;
import m7.e;
import n7.g;

/* compiled from: ConnectableFlowable.java */
/* loaded from: classes3.dex */
public abstract class a<T> extends j<T> {
    private a<T> R8() {
        if (this instanceof r2) {
            r2 r2Var = (r2) this;
            return io.reactivex.plugins.a.T(new q2(r2Var.a(), r2Var.b()));
        }
        return this;
    }

    @e
    public j<T> M8() {
        return N8(1);
    }

    @e
    public j<T> N8(int i4) {
        return O8(i4, io.reactivex.internal.functions.a.h());
    }

    @e
    public j<T> O8(int i4, @e g<? super c> gVar) {
        if (i4 <= 0) {
            Q8(gVar);
            return io.reactivex.plugins.a.T(this);
        }
        return io.reactivex.plugins.a.P(new k(this, i4, gVar));
    }

    public final c P8() {
        io.reactivex.internal.util.e eVar = new io.reactivex.internal.util.e();
        Q8(eVar);
        return eVar.f75915a;
    }

    public abstract void Q8(@e g<? super c> gVar);

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @e
    @m7.g("none")
    public j<T> S8() {
        return io.reactivex.plugins.a.P(new z2(R8()));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> T8(int i4) {
        return V8(i4, 0L, TimeUnit.NANOSECONDS, io.reactivex.schedulers.b.i());
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> U8(int i4, long j4, TimeUnit timeUnit) {
        return V8(i4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("custom")
    public final j<T> V8(int i4, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.h(i4, "subscriberCount");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new z2(R8(), i4, j4, timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> W8(long j4, TimeUnit timeUnit) {
        return V8(1, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("custom")
    public final j<T> X8(long j4, TimeUnit timeUnit, h0 h0Var) {
        return V8(1, j4, timeUnit, h0Var);
    }
}
