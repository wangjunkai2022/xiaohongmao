package kotlinx.coroutines.rx2;

import io.reactivex.h0;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.n0;

/* compiled from: RxScheduler.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0019¢\u0006\u0004\b\u001f\u0010 J\u001c\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u001e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\fH\u0016J$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0016R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lkotlinx/coroutines/rx2/z;", "Lkotlinx/coroutines/n0;", "Lkotlinx/coroutines/a1;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "", "timeMillis", "Lkotlinx/coroutines/q;", "continuation", "r", "Lkotlinx/coroutines/l1;", "I", "", "toString", "", "other", "", "equals", "", "hashCode", "Lio/reactivex/h0;", "a", "Lio/reactivex/h0;", "r0", "()Lio/reactivex/h0;", "scheduler", "<init>", "(Lio/reactivex/h0;)V", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class z extends n0 implements a1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final h0 f86621a;

    public z(@m8.g h0 h0Var) {
        this.f86621a = h0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(io.reactivex.disposables.c cVar) {
        cVar.dispose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(kotlinx.coroutines.q qVar, z zVar) {
        qVar.B(zVar, Unit.INSTANCE);
    }

    @Override // kotlinx.coroutines.a1
    @m8.g
    public l1 I(long j4, @m8.g Runnable runnable, @m8.g CoroutineContext coroutineContext) {
        final io.reactivex.disposables.c g4 = this.f86621a.g(runnable, j4, TimeUnit.MILLISECONDS);
        return new l1() { // from class: kotlinx.coroutines.rx2.y
            @Override // kotlinx.coroutines.l1
            public final void dispose() {
                z.s0(io.reactivex.disposables.c.this);
            }
        };
    }

    @Override // kotlinx.coroutines.n0
    public void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        this.f86621a.f(runnable);
    }

    public boolean equals(@m8.h Object obj) {
        return (obj instanceof z) && ((z) obj).f86621a == this.f86621a;
    }

    @Override // kotlinx.coroutines.a1
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @m8.h
    public Object g0(long j4, @m8.g Continuation<? super Unit> continuation) {
        return a1.a.a(this, j4, continuation);
    }

    public int hashCode() {
        return System.identityHashCode(this.f86621a);
    }

    @Override // kotlinx.coroutines.a1
    public void r(long j4, @m8.g final kotlinx.coroutines.q<? super Unit> qVar) {
        c.p(qVar, this.f86621a.g(new Runnable() { // from class: kotlinx.coroutines.rx2.x
            @Override // java.lang.Runnable
            public final void run() {
                z.t0(kotlinx.coroutines.q.this, this);
            }
        }, j4, TimeUnit.MILLISECONDS));
    }

    @m8.g
    public final h0 r0() {
        return this.f86621a;
    }

    @Override // kotlinx.coroutines.n0
    @m8.g
    public String toString() {
        return this.f86621a.toString();
    }
}
