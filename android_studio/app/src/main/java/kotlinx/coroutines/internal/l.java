package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.f1;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.p1;
import kotlinx.coroutines.p3;
import kotlinx.coroutines.w3;

/* compiled from: DispatchedContinuation.kt */
@Metadata(bv = {}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005B\u001d\u0012\u0006\u0010:\u001a\u000208\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\bL\u0010MJ\u0017\u0010\b\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u000fJ\u0015\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0010¢\u0006\u0004\b\u001d\u0010\u001eJ \u0010!\u001a\u00020\r2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0016ø\u0001\u0000¢\u0006\u0004\b!\u0010\"JH\u0010'\u001a\u00020\r2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001f2%\b\b\u0010&\u001a\u001f\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\r\u0018\u00010#H\u0086\bø\u0001\u0000¢\u0006\u0004\b'\u0010(J!\u0010*\u001a\u00020\r2\b\u0010)\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0019\u001a\u00020\u0016H\u0010¢\u0006\u0004\b*\u0010+J\u001a\u0010-\u001a\u00020\n2\b\u0010,\u001a\u0004\u0018\u00010\u001cH\u0086\b¢\u0006\u0004\b-\u0010.J!\u0010/\u001a\u00020\r2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0086\bø\u0001\u0000¢\u0006\u0004\b/\u0010\"J\u001f\u00103\u001a\u00020\r2\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00028\u0000H\u0000¢\u0006\u0004\b3\u00104J\u000f\u00106\u001a\u000205H\u0016¢\u0006\u0004\b6\u00107R\u0014\u0010:\u001a\u0002088\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b*\u00109R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u001e\u0010@\u001a\u0004\u0018\u00010\u001c8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\b=\u0010>\u0012\u0004\b?\u0010\u000fR\u0014\u0010B\u001a\u00020\u001c8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\bA\u0010>R\u001a\u0010D\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bC\u0010\u0013R\u0014\u00101\u001a\u0002008\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bE\u0010FR\u001c\u0010I\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u001a\u0010K\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b;\u0010J\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006N"}, d2 = {"Lkotlinx/coroutines/internal/l;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/f1;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlin/coroutines/Continuation;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "", "u", "()Z", "", "o", "()V", "w", "Lkotlinx/coroutines/r;", "p", "()Lkotlinx/coroutines/r;", "Lkotlinx/coroutines/q;", "continuation", "", "D", "(Lkotlinx/coroutines/q;)Ljava/lang/Throwable;", "cause", "v", "(Ljava/lang/Throwable;)Z", "", "n", "()Ljava/lang/Object;", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onCancellation", y.b.f83919g, "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "takenState", "d", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", t.b.f83859d, y.b.f83920h, "(Ljava/lang/Object;)Z", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lkotlin/coroutines/CoroutineContext;", "context", "value", "q", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/n0;", "Lkotlinx/coroutines/n0;", "dispatcher", "e", "Lkotlin/coroutines/Continuation;", "f", "Ljava/lang/Object;", "get_state$kotlinx_coroutines_core$annotations", "_state", "g", "countOrElement", "s", "reusableCancellableContinuation", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "()Lkotlin/coroutines/Continuation;", "delegate", "<init>", "(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class l<T> extends f1<T> implements CoroutineStackFrame, Continuation<T> {

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86269h = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_reusableCancellableContinuation");
    @m8.g
    private volatile /* synthetic */ Object _reusableCancellableContinuation;
    @JvmField
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    public final kotlinx.coroutines.n0 f86270d;
    @JvmField
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public final Continuation<T> f86271e;
    @m8.h
    @JvmField

    /* renamed from: f  reason: collision with root package name */
    public Object f86272f;
    @JvmField
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public final Object f86273g;

    /* JADX WARN: Multi-variable type inference failed */
    public l(@m8.g kotlinx.coroutines.n0 n0Var, @m8.g Continuation<? super T> continuation) {
        super(-1);
        this.f86270d = n0Var;
        this.f86271e = continuation;
        this.f86272f = m.a();
        this.f86273g = u0.b(getContext());
        this._reusableCancellableContinuation = null;
    }

    private final kotlinx.coroutines.r<?> s() {
        Object obj = this._reusableCancellableContinuation;
        if (obj instanceof kotlinx.coroutines.r) {
            return (kotlinx.coroutines.r) obj;
        }
        return null;
    }

    public static /* synthetic */ void t() {
    }

    public final void A(@m8.g Object obj) {
        Continuation<T> continuation = this.f86271e;
        Object obj2 = this.f86273g;
        CoroutineContext context = continuation.getContext();
        Object c10 = u0.c(context, obj2);
        w3<?> g4 = c10 != u0.f86295a ? kotlinx.coroutines.m0.g(continuation, context, c10) : null;
        try {
            this.f86271e.resumeWith(obj);
            Unit unit = Unit.INSTANCE;
        } finally {
            InlineMarker.finallyStart(1);
            if (g4 == null || g4.q1()) {
                u0.a(context, c10);
            }
            InlineMarker.finallyEnd(1);
        }
    }

    @m8.h
    public final Throwable D(@m8.g kotlinx.coroutines.q<?> qVar) {
        p0 p0Var;
        do {
            Object obj = this._reusableCancellableContinuation;
            p0Var = m.f86276b;
            if (obj != p0Var) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.a.a(f86269h, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalStateException(Intrinsics.stringPlus("Inconsistent state ", obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f86269h, this, p0Var, qVar));
        return null;
    }

    @Override // kotlinx.coroutines.f1
    public void d(@m8.h Object obj, @m8.g Throwable th) {
        if (obj instanceof kotlinx.coroutines.f0) {
            ((kotlinx.coroutines.f0) obj).f85259b.invoke(th);
        }
    }

    @Override // kotlinx.coroutines.f1
    @m8.g
    public Continuation<T> e() {
        return this;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f86271e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @m8.g
    public CoroutineContext getContext() {
        return this.f86271e.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.f1
    @m8.h
    public Object n() {
        Object obj = this.f86272f;
        this.f86272f = m.a();
        return obj;
    }

    public final void o() {
        do {
        } while (this._reusableCancellableContinuation == m.f86276b);
    }

    @m8.h
    public final kotlinx.coroutines.r<T> p() {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            if (obj == null) {
                this._reusableCancellableContinuation = m.f86276b;
                return null;
            } else if (obj instanceof kotlinx.coroutines.r) {
                if (androidx.concurrent.futures.a.a(f86269h, this, obj, m.f86276b)) {
                    return (kotlinx.coroutines.r) obj;
                }
            } else if (obj != m.f86276b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Inconsistent state ", obj).toString());
            }
        }
    }

    public final void q(@m8.g CoroutineContext coroutineContext, T t9) {
        this.f86272f = t9;
        this.f85260c = 1;
        this.f86270d.dispatchYield(coroutineContext, this);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@m8.g Object obj) {
        CoroutineContext context = this.f86271e.getContext();
        Object d4 = kotlinx.coroutines.j0.d(obj, null, 1, null);
        if (this.f86270d.isDispatchNeeded(context)) {
            this.f86272f = d4;
            this.f85260c = 0;
            this.f86270d.dispatch(context, this);
            return;
        }
        p1 b10 = p3.f86355a.b();
        if (b10.x0()) {
            this.f86272f = d4;
            this.f85260c = 0;
            b10.s0(this);
            return;
        }
        b10.u0(true);
        try {
            CoroutineContext context2 = getContext();
            Object c10 = u0.c(context2, this.f86273g);
            this.f86271e.resumeWith(obj);
            Unit unit = Unit.INSTANCE;
            u0.a(context2, c10);
            do {
            } while (b10.A0());
        } finally {
            try {
            } finally {
            }
        }
    }

    @m8.g
    public String toString() {
        return "DispatchedContinuation[" + this.f86270d + ", " + kotlinx.coroutines.v0.c(this.f86271e) + ']';
    }

    public final boolean u() {
        return this._reusableCancellableContinuation != null;
    }

    public final boolean v(@m8.g Throwable th) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            p0 p0Var = m.f86276b;
            if (Intrinsics.areEqual(obj, p0Var)) {
                if (androidx.concurrent.futures.a.a(f86269h, this, p0Var, th)) {
                    return true;
                }
            } else if (obj instanceof Throwable) {
                return true;
            } else {
                if (androidx.concurrent.futures.a.a(f86269h, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    public final void w() {
        o();
        kotlinx.coroutines.r<?> s9 = s();
        if (s9 == null) {
            return;
        }
        s9.v();
    }

    public final void x(@m8.g Object obj, @m8.h Function1<? super Throwable, Unit> function1) {
        boolean z9;
        Object b10 = kotlinx.coroutines.j0.b(obj, function1);
        if (this.f86270d.isDispatchNeeded(getContext())) {
            this.f86272f = b10;
            this.f85260c = 1;
            this.f86270d.dispatch(getContext(), this);
            return;
        }
        p1 b11 = p3.f86355a.b();
        if (b11.x0()) {
            this.f86272f = b10;
            this.f85260c = 1;
            b11.s0(this);
            return;
        }
        b11.u0(true);
        try {
            j2 j2Var = (j2) getContext().get(j2.f86331k2);
            if (j2Var == null || j2Var.a()) {
                z9 = false;
            } else {
                CancellationException A = j2Var.A();
                d(b10, A);
                Result.Companion companion = Result.Companion;
                resumeWith(Result.m70constructorimpl(ResultKt.createFailure(A)));
                z9 = true;
            }
            if (!z9) {
                Continuation<T> continuation = this.f86271e;
                Object obj2 = this.f86273g;
                CoroutineContext context = continuation.getContext();
                Object c10 = u0.c(context, obj2);
                w3<?> g4 = c10 != u0.f86295a ? kotlinx.coroutines.m0.g(continuation, context, c10) : null;
                this.f86271e.resumeWith(obj);
                Unit unit = Unit.INSTANCE;
                InlineMarker.finallyStart(1);
                if (g4 == null || g4.q1()) {
                    u0.a(context, c10);
                }
                InlineMarker.finallyEnd(1);
            }
            do {
            } while (b11.A0());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                h(th, null);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                b11.p0(true);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        b11.p0(true);
        InlineMarker.finallyEnd(1);
    }

    public final boolean y(@m8.h Object obj) {
        j2 j2Var = (j2) getContext().get(j2.f86331k2);
        if (j2Var == null || j2Var.a()) {
            return false;
        }
        CancellationException A = j2Var.A();
        d(obj, A);
        Result.Companion companion = Result.Companion;
        resumeWith(Result.m70constructorimpl(ResultKt.createFailure(A)));
        return true;
    }
}
