package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.y;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.j2;

/* compiled from: Job.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\u001a\u0012\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000\u001a\u001b\u0010\u0004\u001a\u00020\u00002\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0014\u0010\b\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0000\u001a\u0017\u0010\n\u001a\u00020\t*\u00020\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u001c\u0010\u000f\u001a\u00020\t*\u00020\u00002\u0010\b\u0002\u0010\u000e\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\r\u001a\f\u0010\u0010\u001a\u00020\t*\u00020\u0000H\u0007\u001a\u0018\u0010\u0012\u001a\u00020\t*\u00020\u00002\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0011H\u0007\u001a\u001c\u0010\u0014\u001a\u00020\t*\u00020\u00132\u0010\b\u0002\u0010\u000e\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\r\u001a\f\u0010\u0015\u001a\u00020\t*\u00020\u0013H\u0007\u001a\n\u0010\u0016\u001a\u00020\t*\u00020\u0000\u001a\n\u0010\u0017\u001a\u00020\t*\u00020\u0013\u001a\u001e\u0010\u001a\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00182\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0011\u001a\u0018\u0010\u001c\u001a\u00020\u001b*\u00020\u00132\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0011H\u0007\u001a\u001c\u0010\u001d\u001a\u00020\t*\u00020\u00132\u0010\b\u0002\u0010\u000e\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\r\u001a\f\u0010\u001e\u001a\u00020\t*\u00020\u0013H\u0007\u001a\u0018\u0010\u001f\u001a\u00020\t*\u00020\u00132\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0011H\u0007\u001a\u001d\u0010!\u001a\u00020\u0011*\u0004\u0018\u00010\u00112\u0006\u0010 \u001a\u00020\u0000H\u0002¢\u0006\u0004\b!\u0010\"\"\u0015\u0010%\u001a\u00020\u001b*\u00020\u00138F¢\u0006\u0006\u001a\u0004\b#\u0010$\"\u0015\u0010 \u001a\u00020\u0000*\u00020\u00138F¢\u0006\u0006\u001a\u0004\b&\u0010'\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006("}, d2 = {"Lkotlinx/coroutines/j2;", "parent", "Lkotlinx/coroutines/c0;", "a", "b", "(Lkotlinx/coroutines/j2;)Lkotlinx/coroutines/j2;", "Lkotlinx/coroutines/l1;", "handle", "w", "", "l", "(Lkotlinx/coroutines/j2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "r", "p", "", "q", "Lkotlin/coroutines/CoroutineContext;", "f", "e", y.b.f83920h, y.b.f83919g, "", "message", "g", "", "h", "o", "m", "n", "job", "B", "(Ljava/lang/Throwable;Lkotlinx/coroutines/j2;)Ljava/lang/Throwable;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Lkotlin/coroutines/CoroutineContext;)Z", "isActive", "z", "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/j2;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/JobKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class o2 {
    public static final boolean A(@m8.g CoroutineContext coroutineContext) {
        j2 j2Var = (j2) coroutineContext.get(j2.f86331k2);
        return j2Var != null && j2Var.a();
    }

    private static final Throwable B(Throwable th, j2 j2Var) {
        return th == null ? new JobCancellationException("Job was cancelled", null, j2Var) : th;
    }

    @m8.g
    public static final c0 a(@m8.h j2 j2Var) {
        return new l2(j2Var);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    @JvmName(name = "Job")
    public static final /* synthetic */ j2 b(j2 j2Var) {
        return m2.a(j2Var);
    }

    public static /* synthetic */ c0 c(j2 j2Var, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j2Var = null;
        }
        return m2.a(j2Var);
    }

    public static /* synthetic */ j2 d(j2 j2Var, int i4, Object obj) {
        j2 b10;
        if ((i4 & 1) != 0) {
            j2Var = null;
        }
        b10 = b(j2Var);
        return b10;
    }

    public static final void f(@m8.g CoroutineContext coroutineContext, @m8.h CancellationException cancellationException) {
        j2 j2Var = (j2) coroutineContext.get(j2.f86331k2);
        if (j2Var == null) {
            return;
        }
        j2Var.d(cancellationException);
    }

    public static final void g(@m8.g j2 j2Var, @m8.g String str, @m8.h Throwable th) {
        j2Var.d(u1.a(str, th));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final /* synthetic */ boolean h(CoroutineContext coroutineContext, Throwable th) {
        CoroutineContext.Element element = coroutineContext.get(j2.f86331k2);
        q2 q2Var = element instanceof q2 ? (q2) element : null;
        if (q2Var == null) {
            return false;
        }
        q2Var.a0(B(th, q2Var));
        return true;
    }

    public static /* synthetic */ void i(CoroutineContext coroutineContext, CancellationException cancellationException, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            cancellationException = null;
        }
        m2.f(coroutineContext, cancellationException);
    }

    public static /* synthetic */ void j(j2 j2Var, String str, Throwable th, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            th = null;
        }
        m2.g(j2Var, str, th);
    }

    public static /* synthetic */ boolean k(CoroutineContext coroutineContext, Throwable th, int i4, Object obj) {
        boolean h4;
        if ((i4 & 1) != 0) {
            th = null;
        }
        h4 = h(coroutineContext, th);
        return h4;
    }

    @m8.h
    public static final Object l(@m8.g j2 j2Var, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        j2.a.b(j2Var, null, 1, null);
        Object X = j2Var.X(continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return X == coroutine_suspended ? X : Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final /* synthetic */ void n(CoroutineContext coroutineContext, Throwable th) {
        j2 j2Var = (j2) coroutineContext.get(j2.f86331k2);
        if (j2Var == null) {
            return;
        }
        for (j2 j2Var2 : j2Var.getChildren()) {
            q2 q2Var = j2Var2 instanceof q2 ? (q2) j2Var2 : null;
            if (q2Var != null) {
                q2Var.a0(B(th, j2Var));
            }
        }
    }

    public static final void o(@m8.g CoroutineContext coroutineContext, @m8.h CancellationException cancellationException) {
        Sequence<j2> children;
        j2 j2Var = (j2) coroutineContext.get(j2.f86331k2);
        if (j2Var == null || (children = j2Var.getChildren()) == null) {
            return;
        }
        for (j2 j2Var2 : children) {
            j2Var2.d(cancellationException);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final /* synthetic */ void q(j2 j2Var, Throwable th) {
        for (j2 j2Var2 : j2Var.getChildren()) {
            q2 q2Var = j2Var2 instanceof q2 ? (q2) j2Var2 : null;
            if (q2Var != null) {
                q2Var.a0(B(th, j2Var));
            }
        }
    }

    public static final void r(@m8.g j2 j2Var, @m8.h CancellationException cancellationException) {
        for (j2 j2Var2 : j2Var.getChildren()) {
            j2Var2.d(cancellationException);
        }
    }

    public static /* synthetic */ void s(CoroutineContext coroutineContext, Throwable th, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            th = null;
        }
        n(coroutineContext, th);
    }

    public static /* synthetic */ void t(CoroutineContext coroutineContext, CancellationException cancellationException, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            cancellationException = null;
        }
        m2.o(coroutineContext, cancellationException);
    }

    public static /* synthetic */ void u(j2 j2Var, Throwable th, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            th = null;
        }
        q(j2Var, th);
    }

    public static /* synthetic */ void v(j2 j2Var, CancellationException cancellationException, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            cancellationException = null;
        }
        m2.r(j2Var, cancellationException);
    }

    @m8.g
    public static final l1 w(@m8.g j2 j2Var, @m8.g l1 l1Var) {
        return j2Var.H(new n1(l1Var));
    }

    public static final void x(@m8.g CoroutineContext coroutineContext) {
        j2 j2Var = (j2) coroutineContext.get(j2.f86331k2);
        if (j2Var == null) {
            return;
        }
        m2.A(j2Var);
    }

    public static final void y(@m8.g j2 j2Var) {
        if (!j2Var.a()) {
            throw j2Var.A();
        }
    }

    @m8.g
    public static final j2 z(@m8.g CoroutineContext coroutineContext) {
        j2 j2Var = (j2) coroutineContext.get(j2.f86331k2);
        if (j2Var != null) {
            return j2Var;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Current context doesn't contain Job in it: ", coroutineContext).toString());
    }
}
