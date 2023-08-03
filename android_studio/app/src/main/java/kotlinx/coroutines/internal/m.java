package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.p1;
import kotlinx.coroutines.p3;
import kotlinx.coroutines.w3;

/* compiled from: DispatchedContinuation.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001aW\u0010\u000b\u001a\u00020\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022%\b\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u0012\u0010\u000f\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\t0\rH\u0000\u001a;\u0010\u0017\u001a\u00020\u000e*\u0006\u0012\u0002\b\u00030\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u0015H\u0082\b\"\u001a\u0010\u001d\u001a\u00020\u00188\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u0012\u0004\b\u001b\u0010\u001c\"\u001a\u0010\u001f\u001a\u00020\u00188\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u001a\u0012\u0004\b\u001e\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "result", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "onCancellation", "f", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/internal/l;", "", "h", "", "contState", "", "mode", "doYield", "Lkotlin/Function0;", "block", "b", "Lkotlinx/coroutines/internal/p0;", "a", "Lkotlinx/coroutines/internal/p0;", "getUNDEFINED$annotations", "()V", "UNDEFINED", "getREUSABLE_CLAIMED$annotations", "REUSABLE_CLAIMED", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class m {
    @m8.g

    /* renamed from: a */
    private static final p0 f86275a = new p0("UNDEFINED");
    @JvmField
    @m8.g

    /* renamed from: b */
    public static final p0 f86276b = new p0("REUSABLE_CLAIMED");

    private static final boolean b(l<?> lVar, Object obj, int i4, boolean z9, Function0<Unit> function0) {
        p1 b10 = p3.f86355a.b();
        if (z9 && b10.y0()) {
            return false;
        }
        if (b10.x0()) {
            lVar.f86272f = obj;
            lVar.f85260c = i4;
            b10.s0(lVar);
            return true;
        }
        b10.u0(true);
        try {
            function0.invoke();
            do {
            } while (b10.A0());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                lVar.h(th, null);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                b10.p0(true);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        b10.p0(true);
        InlineMarker.finallyEnd(1);
        return false;
    }

    static /* synthetic */ boolean c(l lVar, Object obj, int i4, boolean z9, Function0 function0, int i10, Object obj2) {
        if ((i10 & 4) != 0) {
            z9 = false;
        }
        p1 b10 = p3.f86355a.b();
        if (z9 && b10.y0()) {
            return false;
        }
        if (b10.x0()) {
            lVar.f86272f = obj;
            lVar.f85260c = i4;
            b10.s0(lVar);
            return true;
        }
        b10.u0(true);
        try {
            function0.invoke();
            do {
            } while (b10.A0());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                lVar.h(th, null);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                b10.p0(true);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        b10.p0(true);
        InlineMarker.finallyEnd(1);
        return false;
    }

    public static /* synthetic */ void d() {
    }

    private static /* synthetic */ void e() {
    }

    @e2
    public static final <T> void f(@m8.g Continuation<? super T> continuation, @m8.g Object obj, @m8.h Function1<? super Throwable, Unit> function1) {
        boolean z9;
        if (continuation instanceof l) {
            l lVar = (l) continuation;
            Object b10 = kotlinx.coroutines.j0.b(obj, function1);
            if (lVar.f86270d.isDispatchNeeded(lVar.getContext())) {
                lVar.f86272f = b10;
                lVar.f85260c = 1;
                lVar.f86270d.dispatch(lVar.getContext(), lVar);
                return;
            }
            p1 b11 = p3.f86355a.b();
            if (b11.x0()) {
                lVar.f86272f = b10;
                lVar.f85260c = 1;
                b11.s0(lVar);
                return;
            }
            b11.u0(true);
            try {
                j2 j2Var = (j2) lVar.getContext().get(j2.f86331k2);
                if (j2Var == null || j2Var.a()) {
                    z9 = false;
                } else {
                    CancellationException A = j2Var.A();
                    lVar.d(b10, A);
                    Result.Companion companion = Result.Companion;
                    lVar.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(A)));
                    z9 = true;
                }
                if (!z9) {
                    Continuation<T> continuation2 = lVar.f86271e;
                    Object obj2 = lVar.f86273g;
                    CoroutineContext context = continuation2.getContext();
                    Object c10 = u0.c(context, obj2);
                    w3<?> g4 = c10 != u0.f86295a ? kotlinx.coroutines.m0.g(continuation2, context, c10) : null;
                    lVar.f86271e.resumeWith(obj);
                    Unit unit = Unit.INSTANCE;
                    if (g4 == null || g4.q1()) {
                        u0.a(context, c10);
                    }
                }
                do {
                } while (b11.A0());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        continuation.resumeWith(obj);
    }

    public static /* synthetic */ void g(Continuation continuation, Object obj, Function1 function1, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            function1 = null;
        }
        f(continuation, obj, function1);
    }

    public static final boolean h(@m8.g l<? super Unit> lVar) {
        Unit unit = Unit.INSTANCE;
        p1 b10 = p3.f86355a.b();
        if (b10.y0()) {
            return false;
        }
        if (b10.x0()) {
            lVar.f86272f = unit;
            lVar.f85260c = 1;
            b10.s0(lVar);
            return true;
        }
        b10.u0(true);
        try {
            lVar.run();
            do {
            } while (b10.A0());
        } finally {
            try {
                return false;
            } finally {
            }
        }
        return false;
    }
}
