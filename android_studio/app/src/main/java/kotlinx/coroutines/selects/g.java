package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.y1;

/* compiled from: Select.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aN\u0010\t\u001a\u00020\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u001c\u0010\u0007\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0007ø\u0001\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\n\u001aG\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u001f\b\u0004\u0010\f\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0001\u0012\u0004\u0012\u00020\b0\u0004¢\u0006\u0002\b\u000bH\u0086Hø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\r\u0010\u000e\" \u0010\u0015\u001a\u00020\u00068\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012\" \u0010\u0019\u001a\u00020\u00068\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0016\u0010\u0010\u0012\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0017\u0010\u0012\"\u001a\u0010\u001c\u001a\u00020\u00068\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u0010\u0012\u0004\b\u001b\u0010\u0014\"\u001a\u0010\u001e\u001a\u00020\u00068\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0010\u0012\u0004\b\u001d\u0010\u0014\"\u001a\u0010#\u001a\u00020\u001f8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b \u0010!\u0012\u0004\b\"\u0010\u0014\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006$"}, d2 = {"R", "Lkotlinx/coroutines/selects/a;", "Lkotlin/time/Duration;", "timeout", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "", "k", "(Lkotlinx/coroutines/selects/a;JLkotlin/jvm/functions/Function1;)V", "Lkotlin/ExtensionFunctionType;", "builder", "l", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "Ljava/lang/Object;", "f", "()Ljava/lang/Object;", "getNOT_SELECTED$annotations", "()V", "NOT_SELECTED", "b", "d", "getALREADY_SELECTED$annotations", "ALREADY_SELECTED", "c", "getUNDECIDED$annotations", "UNDECIDED", "getRESUMED$annotations", "RESUMED", "Lkotlinx/coroutines/selects/i;", "e", "Lkotlinx/coroutines/selects/i;", "getSelectOpSequenceNumber$annotations", "selectOpSequenceNumber", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class g {
    @m8.g

    /* renamed from: a */
    private static final Object f86721a = new p0("NOT_SELECTED");
    @m8.g

    /* renamed from: b */
    private static final Object f86722b = new p0("ALREADY_SELECTED");
    @m8.g

    /* renamed from: c */
    private static final Object f86723c = new p0("UNDECIDED");
    @m8.g

    /* renamed from: d */
    private static final Object f86724d = new p0("RESUMED");
    @m8.g

    /* renamed from: e */
    private static final i f86725e = new i();

    public static final /* synthetic */ Object a() {
        return f86724d;
    }

    public static final /* synthetic */ i b() {
        return f86725e;
    }

    public static final /* synthetic */ Object c() {
        return f86723c;
    }

    @m8.g
    public static final Object d() {
        return f86722b;
    }

    public static /* synthetic */ void e() {
    }

    @m8.g
    public static final Object f() {
        return f86721a;
    }

    public static /* synthetic */ void g() {
    }

    private static /* synthetic */ void h() {
    }

    private static /* synthetic */ void i() {
    }

    private static /* synthetic */ void j() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @y1
    public static final <R> void k(@m8.g a<? super R> aVar, long j4, @m8.g Function1<? super Continuation<? super R>, ? extends Object> function1) {
        aVar.n(b1.e(j4), function1);
    }

    @m8.h
    public static final <R> Object l(@m8.g Function1<? super a<? super R>, Unit> function1, @m8.g Continuation<? super R> continuation) {
        Object coroutine_suspended;
        b bVar = new b(continuation);
        try {
            function1.invoke(bVar);
        } catch (Throwable th) {
            bVar.p0(th);
        }
        Object o02 = bVar.o0();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (o02 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return o02;
    }

    private static final <R> Object m(Function1<? super a<? super R>, Unit> function1, Continuation<? super R> continuation) {
        Object coroutine_suspended;
        InlineMarker.mark(0);
        b bVar = new b(continuation);
        try {
            function1.invoke(bVar);
        } catch (Throwable th) {
            bVar.p0(th);
        }
        Object o02 = bVar.o0();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (o02 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        InlineMarker.mark(1);
        return o02;
    }
}
