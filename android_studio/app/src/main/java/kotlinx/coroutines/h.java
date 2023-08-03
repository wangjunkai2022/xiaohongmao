package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.t;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B!\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010\u0001\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\r\u0010\u0006\u001a\u00028\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/h;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/a;", "", t.b.f83859d, "", "p1", "()Ljava/lang/Object;", "Ljava/lang/Thread;", "c", "Ljava/lang/Thread;", "blockedThread", "Lkotlinx/coroutines/p1;", "d", "Lkotlinx/coroutines/p1;", "eventLoop", "", "E0", "()Z", "isScopedCoroutine", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "<init>", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/p1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class h<T> extends a<T> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Thread f86188c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private final p1 f86189d;

    public h(@m8.g CoroutineContext coroutineContext, @m8.g Thread thread, @m8.h p1 p1Var) {
        super(coroutineContext, true, true);
        this.f86188c = thread;
        this.f86189d = p1Var;
    }

    @Override // kotlinx.coroutines.q2
    protected boolean E0() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.q2
    public void T(@m8.h Object obj) {
        Unit unit;
        if (Intrinsics.areEqual(Thread.currentThread(), this.f86188c)) {
            return;
        }
        Thread thread = this.f86188c;
        b b10 = c.b();
        if (b10 == null) {
            unit = null;
        } else {
            b10.g(thread);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            LockSupport.unpark(thread);
        }
    }

    public final T p1() {
        Unit unit;
        b b10 = c.b();
        if (b10 != null) {
            b10.d();
        }
        try {
            p1 p1Var = this.f86189d;
            if (p1Var != null) {
                p1.v0(p1Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                p1 p1Var2 = this.f86189d;
                long z02 = p1Var2 == null ? Long.MAX_VALUE : p1Var2.z0();
                if (i()) {
                    p1 p1Var3 = this.f86189d;
                    if (p1Var3 != null) {
                        p1.q0(p1Var3, false, 1, null);
                    }
                    T t9 = (T) r2.o(y0());
                    e0 e0Var = t9 instanceof e0 ? (e0) t9 : null;
                    if (e0Var == null) {
                        return t9;
                    }
                    throw e0Var.f85246a;
                }
                b b11 = c.b();
                if (b11 == null) {
                    unit = null;
                } else {
                    b11.c(this, z02);
                    unit = Unit.INSTANCE;
                }
                if (unit == null) {
                    LockSupport.parkNanos(this, z02);
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            Y(interruptedException);
            throw interruptedException;
        } finally {
            b b12 = c.b();
            if (b12 != null) {
                b12.h();
            }
        }
    }
}
