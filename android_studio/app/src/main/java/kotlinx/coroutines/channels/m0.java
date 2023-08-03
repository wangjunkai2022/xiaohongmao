package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.z2;

/* compiled from: TickerChannels.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a4\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007\u001a1\u0010\f\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0082@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a1\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"", "delayMillis", "initialDelayMillis", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/channels/TickerMode;", "mode", "Lkotlinx/coroutines/channels/f0;", "", "e", "Lkotlinx/coroutines/channels/j0;", "channel", "d", "(JJLkotlinx/coroutines/channels/j0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "c", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class m0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TickerChannels.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt", f = "TickerChannels.kt", i = {0, 0, 1, 1, 2, 2}, l = {106, 108, 109}, m = "fixedDelayTicker", n = {"channel", "delayMillis", "channel", "delayMillis", "channel", "delayMillis"}, s = {"L$0", "J$0", "L$0", "J$0", "L$0", "J$0"})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        long f84891a;

        /* renamed from: b  reason: collision with root package name */
        Object f84892b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f84893c;

        /* renamed from: d  reason: collision with root package name */
        int f84894d;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f84893c = obj;
            this.f84894d |= Integer.MIN_VALUE;
            return m0.c(0L, 0L, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TickerChannels.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt", f = "TickerChannels.kt", i = {0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3}, l = {84, 88, 94, 96}, m = "fixedPeriodTicker", n = {"channel", "delayMillis", "deadline", "channel", "deadline", "delayNs", "channel", "deadline", "delayNs", "channel", "deadline", "delayNs"}, s = {"L$0", "J$0", "J$1", "L$0", "J$0", "J$1", "L$0", "J$0", "J$1", "L$0", "J$0", "J$1"})
    /* loaded from: classes4.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        long f84895a;

        /* renamed from: b  reason: collision with root package name */
        long f84896b;

        /* renamed from: c  reason: collision with root package name */
        Object f84897c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f84898d;

        /* renamed from: e  reason: collision with root package name */
        int f84899e;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f84898d = obj;
            this.f84899e |= Integer.MIN_VALUE;
            return m0.d(0L, 0L, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TickerChannels.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt$ticker$3", f = "TickerChannels.kt", i = {}, l = {72, 73}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class c extends SuspendLambda implements Function2<d0<? super Unit>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f84900a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f84901b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TickerMode f84902c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f84903d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ long f84904e;

        /* compiled from: TickerChannels.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes4.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[TickerMode.values().length];
                iArr[TickerMode.FIXED_PERIOD.ordinal()] = 1;
                iArr[TickerMode.FIXED_DELAY.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(TickerMode tickerMode, long j4, long j10, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f84902c = tickerMode;
            this.f84903d = j4;
            this.f84904e = j10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            c cVar = new c(this.f84902c, this.f84903d, this.f84904e, continuation);
            cVar.f84901b = obj;
            return cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g d0<? super Unit> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f84900a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                d0 d0Var = (d0) this.f84901b;
                int i10 = a.$EnumSwitchMapping$0[this.f84902c.ordinal()];
                if (i10 == 1) {
                    long j4 = this.f84903d;
                    long j10 = this.f84904e;
                    j0 channel = d0Var.getChannel();
                    this.f84900a = 1;
                    if (m0.d(j4, j10, channel, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i10 == 2) {
                    long j11 = this.f84903d;
                    long j12 = this.f84904e;
                    j0 channel2 = d0Var.getChannel();
                    this.f84900a = 2;
                    if (m0.c(j11, j12, channel2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else if (i4 != 1 && i4 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0071 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007f A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x007d -> B:14:0x0034). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object c(long r6, long r8, kotlinx.coroutines.channels.j0<? super kotlin.Unit> r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            boolean r0 = r11 instanceof kotlinx.coroutines.channels.m0.a
            if (r0 == 0) goto L13
            r0 = r11
            kotlinx.coroutines.channels.m0$a r0 = (kotlinx.coroutines.channels.m0.a) r0
            int r1 = r0.f84894d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84894d = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.m0$a r0 = new kotlinx.coroutines.channels.m0$a
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f84893c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84894d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L53
            if (r2 == r5) goto L48
            if (r2 == r4) goto L3e
            if (r2 != r3) goto L36
            long r6 = r0.f84891a
            java.lang.Object r8 = r0.f84892b
            kotlinx.coroutines.channels.j0 r8 = (kotlinx.coroutines.channels.j0) r8
            kotlin.ResultKt.throwOnFailure(r11)
        L34:
            r10 = r8
            goto L63
        L36:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3e:
            long r6 = r0.f84891a
            java.lang.Object r8 = r0.f84892b
            kotlinx.coroutines.channels.j0 r8 = (kotlinx.coroutines.channels.j0) r8
            kotlin.ResultKt.throwOnFailure(r11)
            goto L73
        L48:
            long r6 = r0.f84891a
            java.lang.Object r8 = r0.f84892b
            r10 = r8
            kotlinx.coroutines.channels.j0 r10 = (kotlinx.coroutines.channels.j0) r10
            kotlin.ResultKt.throwOnFailure(r11)
            goto L63
        L53:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.f84892b = r10
            r0.f84891a = r6
            r0.f84894d = r5
            java.lang.Object r8 = kotlinx.coroutines.b1.b(r8, r0)
            if (r8 != r1) goto L63
            return r1
        L63:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            r0.f84892b = r10
            r0.f84891a = r6
            r0.f84894d = r4
            java.lang.Object r8 = r10.send(r8, r0)
            if (r8 != r1) goto L72
            return r1
        L72:
            r8 = r10
        L73:
            r0.f84892b = r8
            r0.f84891a = r6
            r0.f84894d = r3
            java.lang.Object r9 = kotlinx.coroutines.b1.b(r6, r0)
            if (r9 != r1) goto L34
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.m0.c(long, long, kotlinx.coroutines.channels.j0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0121 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0108 -> B:18:0x0050). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x011f -> B:18:0x0050). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object d(long r19, long r21, kotlinx.coroutines.channels.j0<? super kotlin.Unit> r23, kotlin.coroutines.Continuation<? super kotlin.Unit> r24) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.m0.d(long, long, kotlinx.coroutines.channels.j0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @z2
    @m8.g
    public static final f0<Unit> e(long j4, long j10, @m8.g CoroutineContext coroutineContext, @m8.g TickerMode tickerMode) {
        if (!(j4 >= 0)) {
            throw new IllegalArgumentException(("Expected non-negative delay, but has " + j4 + " ms").toString());
        }
        if (j10 >= 0) {
            return b0.c(a2.f84781a, i1.g().plus(coroutineContext), 0, new c(tickerMode, j4, j10, null));
        }
        throw new IllegalArgumentException(("Expected non-negative initial delay, but has " + j10 + " ms").toString());
    }

    public static /* synthetic */ f0 f(long j4, long j10, CoroutineContext coroutineContext, TickerMode tickerMode, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            j10 = j4;
        }
        if ((i4 & 4) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i4 & 8) != 0) {
            tickerMode = TickerMode.FIXED_PERIOD;
        }
        return e(j4, j10, coroutineContext, tickerMode);
    }
}
