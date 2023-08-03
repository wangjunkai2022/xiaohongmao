package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.y1;

/* compiled from: Produce.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a+\u0010\u0004\u001a\u00020\u0002*\u0006\u0012\u0002\b\u00030\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001ag\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u0006*\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2/\b\u0001\u0010\u0003\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f¢\u0006\u0002\b\u000fH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a \u0001\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u0006*\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\u0014\u001a\u00020\u00132-\b\u0002\u0010\u001b\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\u0016¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0015j\u0004\u0018\u0001`\u001a2/\b\u0001\u0010\u0003\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f¢\u0006\u0002\b\u000fH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001aª\u0001\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u0006*\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\b\b\u0002\u0010\u0014\u001a\u00020\u00132-\b\u0002\u0010\u001b\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\u0016¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0015j\u0004\u0018\u0001`\u001a2/\b\u0001\u0010\u0003\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f¢\u0006\u0002\b\u000fH\u0000ø\u0001\u0000¢\u0006\u0004\b \u0010!\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"Lkotlinx/coroutines/channels/d0;", "Lkotlin/Function0;", "", "block", "a", "(Lkotlinx/coroutines/channels/d0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "Lkotlinx/coroutines/channels/f0;", "c", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/f0;", "Lkotlinx/coroutines/CoroutineStart;", com.google.android.exoplayer2.text.ttml.d.f25725o0, "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "Lkotlinx/coroutines/CompletionHandler;", "onCompletion", "d", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/f0;", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "e", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/f0;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class b0 {

    /* compiled from: Produce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", i = {0, 0}, l = {153}, m = "awaitClose", n = {"$this$awaitClose", "block"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a */
        Object f84832a;

        /* renamed from: b */
        Object f84833b;

        /* renamed from: c */
        /* synthetic */ Object f84834c;

        /* renamed from: d */
        int f84835d;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f84834c = obj;
            this.f84835d |= Integer.MIN_VALUE;
            return b0.a(null, null, this);
        }
    }

    /* compiled from: Produce.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        public static final b f84836a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
        }
    }

    /* compiled from: Produce.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class c extends Lambda implements Function1<Throwable, Unit> {

        /* renamed from: a */
        final /* synthetic */ kotlinx.coroutines.q<Unit> f84837a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(kotlinx.coroutines.q<? super Unit> qVar) {
            super(1);
            this.f84837a = qVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke */
        public final void invoke2(@m8.h Throwable th) {
            kotlinx.coroutines.q<Unit> qVar = this.f84837a;
            Result.Companion companion = Result.Companion;
            qVar.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x003c  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(@m8.g kotlinx.coroutines.channels.d0<?> r4, @m8.g kotlin.jvm.functions.Function0<kotlin.Unit> r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.b0.a
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.b0$a r0 = (kotlinx.coroutines.channels.b0.a) r0
            int r1 = r0.f84835d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84835d = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.b0$a r0 = new kotlinx.coroutines.channels.b0$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f84834c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84835d
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r4 = r0.f84833b
            r5 = r4
            kotlin.jvm.functions.Function0 r5 = (kotlin.jvm.functions.Function0) r5
            java.lang.Object r4 = r0.f84832a
            kotlinx.coroutines.channels.d0 r4 = (kotlinx.coroutines.channels.d0) r4
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L32
            goto L7a
        L32:
            r4 = move-exception
            goto L80
        L34:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.coroutines.CoroutineContext r6 = r0.getContext()
            kotlinx.coroutines.j2$b r2 = kotlinx.coroutines.j2.f86331k2
            kotlin.coroutines.CoroutineContext$Element r6 = r6.get(r2)
            if (r6 != r4) goto L4d
            r6 = 1
            goto L4e
        L4d:
            r6 = 0
        L4e:
            if (r6 == 0) goto L84
            r0.f84832a = r4     // Catch: java.lang.Throwable -> L32
            r0.f84833b = r5     // Catch: java.lang.Throwable -> L32
            r0.f84835d = r3     // Catch: java.lang.Throwable -> L32
            kotlinx.coroutines.r r6 = new kotlinx.coroutines.r     // Catch: java.lang.Throwable -> L32
            kotlin.coroutines.Continuation r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L32
            r6.<init>(r2, r3)     // Catch: java.lang.Throwable -> L32
            r6.C()     // Catch: java.lang.Throwable -> L32
            kotlinx.coroutines.channels.b0$c r2 = new kotlinx.coroutines.channels.b0$c     // Catch: java.lang.Throwable -> L32
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L32
            r4.invokeOnClose(r2)     // Catch: java.lang.Throwable -> L32
            java.lang.Object r4 = r6.A()     // Catch: java.lang.Throwable -> L32
            java.lang.Object r6 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Throwable -> L32
            if (r4 != r6) goto L77
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)     // Catch: java.lang.Throwable -> L32
        L77:
            if (r4 != r1) goto L7a
            return r1
        L7a:
            r5.invoke()
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L80:
            r5.invoke()
            throw r4
        L84:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "awaitClose() can only be invoked from the producer context"
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.b0.a(kotlinx.coroutines.channels.d0, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object b(d0 d0Var, Function0 function0, Continuation continuation, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function0 = b.f84836a;
        }
        return a(d0Var, function0, continuation);
    }

    @y1
    @m8.g
    public static final <E> f0<E> c(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext, int i4, @BuilderInference @m8.g Function2<? super d0<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return e(s0Var, coroutineContext, i4, BufferOverflow.SUSPEND, CoroutineStart.DEFAULT, null, function2);
    }

    @m8.g
    @e2
    public static final <E> f0<E> d(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext, int i4, @m8.g CoroutineStart coroutineStart, @m8.h Function1<? super Throwable, Unit> function1, @BuilderInference @m8.g Function2<? super d0<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return e(s0Var, coroutineContext, i4, BufferOverflow.SUSPEND, coroutineStart, function1, function2);
    }

    @m8.g
    public static final <E> f0<E> e(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow, @m8.g CoroutineStart coroutineStart, @m8.h Function1<? super Throwable, Unit> function1, @BuilderInference @m8.g Function2<? super d0<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        c0 c0Var = new c0(kotlinx.coroutines.m0.e(s0Var, coroutineContext), p.d(i4, bufferOverflow, null, 4, null));
        if (function1 != null) {
            c0Var.H(function1);
        }
        c0Var.o1(coroutineStart, c0Var, function2);
        return c0Var;
    }

    public static /* synthetic */ f0 f(s0 s0Var, CoroutineContext coroutineContext, int i4, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            i4 = 0;
        }
        return c(s0Var, coroutineContext, i4, function2);
    }

    public static /* synthetic */ f0 g(s0 s0Var, CoroutineContext coroutineContext, int i4, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i11 = (i10 & 2) != 0 ? 0 : i4;
        if ((i10 & 4) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i10 & 8) != 0) {
            function1 = null;
        }
        return d(s0Var, coroutineContext2, i11, coroutineStart2, function1, function2);
    }

    public static /* synthetic */ f0 h(s0 s0Var, CoroutineContext coroutineContext, int i4, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i11 = (i10 & 2) != 0 ? 0 : i4;
        if ((i10 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if ((i10 & 8) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i10 & 16) != 0) {
            function1 = null;
        }
        return e(s0Var, coroutineContext2, i11, bufferOverflow2, coroutineStart2, function1, function2);
    }
}
