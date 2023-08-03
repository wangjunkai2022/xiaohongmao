package kotlinx.coroutines;

import com.facebook.common.callercontext.ContextChain;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.internal.InlineOnly;

/* compiled from: AbstractTimeSource.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\t\u0010\u0001\u001a\u00020\u0000H\u0081\b\u001a\t\u0010\u0002\u001a\u00020\u0000H\u0081\b\u001a\u0019\u0010\u0006\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0081\b\u001a\t\u0010\b\u001a\u00020\u0007H\u0081\b\u001a\t\u0010\t\u001a\u00020\u0007H\u0081\b\u001a\t\u0010\n\u001a\u00020\u0007H\u0081\b\u001a\t\u0010\u000b\u001a\u00020\u0007H\u0081\b\u001a\u0019\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0000H\u0081\b\u001a\u0011\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0081\b\"$\u0010\u0019\u001a\u0004\u0018\u00010\u00138\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0001\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"", "a", "c", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "k", "", "g", "h", "e", "j", "", "blocker", "nanos", "d", "Ljava/lang/Thread;", "thread", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/b;", "Lkotlinx/coroutines/b;", "b", "()Lkotlinx/coroutines/b;", "f", "(Lkotlinx/coroutines/b;)V", "timeSource", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class c {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private static b f84800a;

    @InlineOnly
    private static final long a() {
        b b10 = b();
        Long valueOf = b10 == null ? null : Long.valueOf(b10.a());
        return valueOf == null ? System.currentTimeMillis() : valueOf.longValue();
    }

    @m8.h
    public static final b b() {
        return f84800a;
    }

    @InlineOnly
    private static final long c() {
        b b10 = b();
        Long valueOf = b10 == null ? null : Long.valueOf(b10.b());
        return valueOf == null ? System.nanoTime() : valueOf.longValue();
    }

    @InlineOnly
    private static final void d(Object obj, long j4) {
        Unit unit;
        b b10 = b();
        if (b10 == null) {
            unit = null;
        } else {
            b10.c(obj, j4);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            LockSupport.parkNanos(obj, j4);
        }
    }

    @InlineOnly
    private static final void e() {
        b b10 = b();
        if (b10 == null) {
            return;
        }
        b10.d();
    }

    public static final void f(@m8.h b bVar) {
        f84800a = bVar;
    }

    @InlineOnly
    private static final void g() {
        b b10 = b();
        if (b10 == null) {
            return;
        }
        b10.e();
    }

    @InlineOnly
    private static final void h() {
        b b10 = b();
        if (b10 == null) {
            return;
        }
        b10.f();
    }

    @InlineOnly
    private static final void i(Thread thread) {
        Unit unit;
        b b10 = b();
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

    @InlineOnly
    private static final void j() {
        b b10 = b();
        if (b10 == null) {
            return;
        }
        b10.h();
    }

    @InlineOnly
    private static final Runnable k(Runnable runnable) {
        Runnable i4;
        b b10 = b();
        return (b10 == null || (i4 = b10.i(runnable)) == null) ? runnable : i4;
    }
}
