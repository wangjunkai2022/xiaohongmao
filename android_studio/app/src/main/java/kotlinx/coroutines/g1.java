package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;

/* compiled from: DispatchedTask.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0011\u001a \u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u001a.\u0010\n\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\t\u001a\u00020\bH\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u0001H\u0002\u001a'\u0010\u0010\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\r\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eH\u0080\b\u001a\u0019\u0010\u0013\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0080\b\"\u0014\u0010\u0015\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0014\"\u001a\u0010\u0019\u001a\u00020\u00028\u0000X\u0081T¢\u0006\f\n\u0004\b\u0016\u0010\u0014\u0012\u0004\b\u0017\u0010\u0018\"\u0014\u0010\u001b\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0014\"\u0014\u0010\u001d\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0014\"\u0014\u0010\u001e\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\u0014\"\u0018\u0010 \u001a\u00020\b*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001f\"\u0018\u0010!\u001a\u00020\b*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001f¨\u0006\""}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/f1;", "", "mode", "", "a", "Lkotlin/coroutines/Continuation;", "delegate", "", "undispatched", "e", "f", "Lkotlinx/coroutines/p1;", "eventLoop", "Lkotlin/Function0;", "block", "h", "", h4.b.f83287e, "g", "I", "MODE_ATOMIC", "b", "getMODE_CANCELLABLE$annotations", "()V", "MODE_CANCELLABLE", "c", "MODE_CANCELLABLE_REUSABLE", "d", "MODE_UNDISPATCHED", "MODE_UNINITIALIZED", "(I)Z", "isCancellableMode", "isReusableMode", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class g1 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f86182a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f86183b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f86184c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f86185d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f86186e = -1;

    public static final <T> void a(@m8.g f1<? super T> f1Var, int i4) {
        Continuation<? super T> e4 = f1Var.e();
        boolean z9 = i4 == 4;
        if (!z9 && (e4 instanceof kotlinx.coroutines.internal.l) && c(i4) == c(f1Var.f85260c)) {
            n0 n0Var = ((kotlinx.coroutines.internal.l) e4).f86270d;
            CoroutineContext context = e4.getContext();
            if (n0Var.isDispatchNeeded(context)) {
                n0Var.dispatch(context, f1Var);
                return;
            } else {
                f(f1Var);
                return;
            }
        }
        e(f1Var, e4, z9);
    }

    @PublishedApi
    public static /* synthetic */ void b() {
    }

    public static final boolean c(int i4) {
        return i4 == 1 || i4 == 2;
    }

    public static final boolean d(int i4) {
        return i4 == 2;
    }

    public static final <T> void e(@m8.g f1<? super T> f1Var, @m8.g Continuation<? super T> continuation, boolean z9) {
        Object g4;
        boolean q12;
        Object n9 = f1Var.n();
        Throwable f10 = f1Var.f(n9);
        if (f10 != null) {
            Result.Companion companion = Result.Companion;
            g4 = ResultKt.createFailure(f10);
        } else {
            Result.Companion companion2 = Result.Companion;
            g4 = f1Var.g(n9);
        }
        Object m70constructorimpl = Result.m70constructorimpl(g4);
        if (z9) {
            kotlinx.coroutines.internal.l lVar = (kotlinx.coroutines.internal.l) continuation;
            Continuation<T> continuation2 = lVar.f86271e;
            Object obj = lVar.f86273g;
            CoroutineContext context = continuation2.getContext();
            Object c10 = kotlinx.coroutines.internal.u0.c(context, obj);
            w3<?> g10 = c10 != kotlinx.coroutines.internal.u0.f86295a ? m0.g(continuation2, context, c10) : null;
            try {
                lVar.f86271e.resumeWith(m70constructorimpl);
                Unit unit = Unit.INSTANCE;
                if (g10 != null) {
                    if (!q12) {
                        return;
                    }
                }
                return;
            } finally {
                if (g10 == null || g10.q1()) {
                    kotlinx.coroutines.internal.u0.a(context, c10);
                }
            }
        }
        continuation.resumeWith(m70constructorimpl);
    }

    private static final void f(f1<?> f1Var) {
        p1 b10 = p3.f86355a.b();
        if (b10.x0()) {
            b10.s0(f1Var);
            return;
        }
        b10.u0(true);
        try {
            e(f1Var, f1Var.e(), true);
            do {
            } while (b10.A0());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static final void g(@m8.g Continuation<?> continuation, @m8.g Throwable th) {
        Result.Companion companion = Result.Companion;
        continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
    }

    public static final void h(@m8.g f1<?> f1Var, @m8.g p1 p1Var, @m8.g Function0<Unit> function0) {
        p1Var.u0(true);
        try {
            function0.invoke();
            do {
            } while (p1Var.A0());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                f1Var.h(th, null);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                p1Var.p0(true);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        p1Var.p0(true);
        InlineMarker.finallyEnd(1);
    }
}
