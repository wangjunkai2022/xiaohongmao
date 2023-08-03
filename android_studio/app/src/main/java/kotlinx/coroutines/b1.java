package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.Duration;

/* compiled from: Delay.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0013\u0010\u0001\u001a\u00020\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u001b\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a!\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0086@ø\u0001\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\n\u0010\u0007\u001a\u0019\u0010\u000b\u001a\u00020\u0003*\u00020\bH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\"\u0018\u0010\u0011\u001a\u00020\u000e*\u00020\r8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0012"}, d2 = {"", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "timeMillis", "", "b", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "duration", "c", "e", "(J)J", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/a1;", "d", "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/a1;", "delay", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class b1 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Delay.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.DelayKt", f = "Delay.kt", i = {}, l = {148}, m = "awaitCancellation", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f84796a;

        /* renamed from: b  reason: collision with root package name */
        int f84797b;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f84796a = obj;
            this.f84797b |= Integer.MIN_VALUE;
            return b1.a(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(@m8.g kotlin.coroutines.Continuation<?> r4) {
        /*
            boolean r0 = r4 instanceof kotlinx.coroutines.b1.a
            if (r0 == 0) goto L13
            r0 = r4
            kotlinx.coroutines.b1$a r0 = (kotlinx.coroutines.b1.a) r0
            int r1 = r0.f84797b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84797b = r1
            goto L18
        L13:
            kotlinx.coroutines.b1$a r0 = new kotlinx.coroutines.b1$a
            r0.<init>(r4)
        L18:
            java.lang.Object r4 = r0.f84796a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84797b
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r0)
            throw r4
        L2d:
            kotlin.ResultKt.throwOnFailure(r4)
            goto L52
        L31:
            kotlin.ResultKt.throwOnFailure(r4)
            r0.f84797b = r3
            kotlinx.coroutines.r r4 = new kotlinx.coroutines.r
            kotlin.coroutines.Continuation r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)
            r4.<init>(r2, r3)
            r4.C()
            java.lang.Object r4 = r4.A()
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r2) goto L4f
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L4f:
            if (r4 != r1) goto L52
            return r1
        L52:
            kotlin.KotlinNothingValueException r4 = new kotlin.KotlinNothingValueException
            r4.<init>()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.b1.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.h
    public static final Object b(long j4, @m8.g Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        if (j4 <= 0) {
            return Unit.INSTANCE;
        }
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        r rVar = new r(intercepted, 1);
        rVar.C();
        if (j4 < Long.MAX_VALUE) {
            d(rVar.getContext()).r(j4, rVar);
        }
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return A == coroutine_suspended2 ? A : Unit.INSTANCE;
    }

    @m8.h
    public static final Object c(long j4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object b10 = b(e(j4), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return b10 == coroutine_suspended ? b10 : Unit.INSTANCE;
    }

    @m8.g
    public static final a1 d(@m8.g CoroutineContext coroutineContext) {
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.Key);
        a1 a1Var = element instanceof a1 ? (a1) element : null;
        return a1Var == null ? x0.a() : a1Var;
    }

    public static final long e(long j4) {
        long coerceAtLeast;
        if (Duration.m1410compareToLRDsOJo(j4, Duration.Companion.m1513getZEROUwyO8pc()) > 0) {
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(Duration.m1429getInWholeMillisecondsimpl(j4), 1L);
            return coerceAtLeast;
        }
        return 0L;
    }
}
