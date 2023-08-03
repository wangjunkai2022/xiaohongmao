package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import io.sentry.protocol.t;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DispatchedTask.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H ¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\bH\u0010¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000e\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0010¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0010¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\nJ\u001a\u0010\u0015\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\u0014\u001a\u0004\u0018\u00010\bR\u0016\u0010\u0019\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a8 X \u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lkotlinx/coroutines/f1;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/scheduling/j;", "Lkotlinx/coroutines/SchedulerTask;", "", "n", "()Ljava/lang/Object;", "takenState", "", "cause", "", "d", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", t.b.f83859d, "g", "(Ljava/lang/Object;)Ljava/lang/Object;", "f", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "run", h4.b.f83287e, "finallyException", "h", "", "c", "I", "resumeMode", "Lkotlin/coroutines/Continuation;", "e", "()Lkotlin/coroutines/Continuation;", "delegate", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class f1<T> extends kotlinx.coroutines.scheduling.j {
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    public int f85260c;

    public f1(int i4) {
        this.f85260c = i4;
    }

    public void d(@m8.h Object obj, @m8.g Throwable th) {
    }

    @m8.g
    public abstract Continuation<T> e();

    @m8.h
    public Throwable f(@m8.h Object obj) {
        e0 e0Var = obj instanceof e0 ? (e0) obj : null;
        if (e0Var == null) {
            return null;
        }
        return e0Var.f85246a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T g(@m8.h Object obj) {
        return obj;
    }

    public final void h(@m8.h Throwable th, @m8.h Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        Intrinsics.checkNotNull(th);
        p0.b(e().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    @m8.h
    public abstract Object n();

    @Override // java.lang.Runnable
    public final void run() {
        Object m70constructorimpl;
        Object m70constructorimpl2;
        kotlinx.coroutines.scheduling.k kVar = this.f86686b;
        try {
            kotlinx.coroutines.internal.l lVar = (kotlinx.coroutines.internal.l) e();
            Continuation<T> continuation = lVar.f86271e;
            Object obj = lVar.f86273g;
            CoroutineContext context = continuation.getContext();
            Object c10 = kotlinx.coroutines.internal.u0.c(context, obj);
            w3<?> g4 = c10 != kotlinx.coroutines.internal.u0.f86295a ? m0.g(continuation, context, c10) : null;
            CoroutineContext context2 = continuation.getContext();
            Object n9 = n();
            Throwable f10 = f(n9);
            j2 j2Var = (f10 == null && g1.c(this.f85260c)) ? (j2) context2.get(j2.f86331k2) : null;
            if (j2Var != null && !j2Var.a()) {
                CancellationException A = j2Var.A();
                d(n9, A);
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(A)));
            } else if (f10 != null) {
                Result.Companion companion2 = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(f10)));
            } else {
                T g10 = g(n9);
                Result.Companion companion3 = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(g10));
            }
            Unit unit = Unit.INSTANCE;
            if (g4 == null || g4.q1()) {
                kotlinx.coroutines.internal.u0.a(context, c10);
            }
            try {
                Result.Companion companion4 = Result.Companion;
                kVar.b0();
                m70constructorimpl2 = Result.m70constructorimpl(unit);
            } catch (Throwable th) {
                Result.Companion companion5 = Result.Companion;
                m70constructorimpl2 = Result.m70constructorimpl(ResultKt.createFailure(th));
            }
            h(null, Result.m73exceptionOrNullimpl(m70constructorimpl2));
        } catch (Throwable th2) {
            try {
                Result.Companion companion6 = Result.Companion;
                kVar.b0();
                m70constructorimpl = Result.m70constructorimpl(Unit.INSTANCE);
            } catch (Throwable th3) {
                Result.Companion companion7 = Result.Companion;
                m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th3));
            }
            h(th2, Result.m73exceptionOrNullimpl(m70constructorimpl));
        }
    }
}
