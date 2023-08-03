package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import io.reactivex.e0;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.channels.f0;

/* compiled from: RxChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a7\u0010\u0005\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a7\u0010\b\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00072\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002H\u0086Hø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0001\u001a\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0001\u001a\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0007\u001a\u001e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lio/reactivex/w;", "Lkotlin/Function1;", "", com.alipay.sdk.packet.d.f6907q, "a", "(Lio/reactivex/w;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lio/reactivex/e0;", "b", "(Lio/reactivex/e0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/f0;", "g", "h", "f", "e", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxChannel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxChannelKt", f = "RxChannel.kt", i = {0, 0}, l = {104}, m = "collect", n = {com.alipay.sdk.packet.d.f6907q, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class a<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86541a;

        /* renamed from: b  reason: collision with root package name */
        Object f86542b;

        /* renamed from: c  reason: collision with root package name */
        Object f86543c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f86544d;

        /* renamed from: e  reason: collision with root package name */
        int f86545e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86544d = obj;
            this.f86545e |= Integer.MIN_VALUE;
            return f.a(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxChannel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxChannelKt", f = "RxChannel.kt", i = {0, 0}, l = {104}, m = "collect", n = {com.alipay.sdk.packet.d.f6907q, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class b<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86546a;

        /* renamed from: b  reason: collision with root package name */
        Object f86547b;

        /* renamed from: c  reason: collision with root package name */
        Object f86548c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f86549d;

        /* renamed from: e  reason: collision with root package name */
        int f86550e;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86549d = obj;
            this.f86550e |= Integer.MIN_VALUE;
            return f.b(null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006e A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #1 {all -> 0x0085, blocks: (B:27:0x0066, B:29:0x006e), top: B:45:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0079  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0061 -> B:14:0x0037). Please submit an issue!!! */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object a(@m8.g io.reactivex.w<T> r6, @m8.g kotlin.jvm.functions.Function1<? super T, kotlin.Unit> r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.rx2.f.a
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.rx2.f$a r0 = (kotlinx.coroutines.rx2.f.a) r0
            int r1 = r0.f86545e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86545e = r1
            goto L18
        L13:
            kotlinx.coroutines.rx2.f$a r0 = new kotlinx.coroutines.rx2.f$a
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f86544d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86545e
            r3 = 1
            if (r2 == 0) goto L44
            if (r2 != r3) goto L3c
            java.lang.Object r6 = r0.f86543c
            kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
            java.lang.Object r7 = r0.f86542b
            kotlinx.coroutines.channels.f0 r7 = (kotlinx.coroutines.channels.f0) r7
            java.lang.Object r2 = r0.f86541a
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L3a
            r5 = r0
            r0 = r7
            r7 = r2
        L37:
            r2 = r1
            r1 = r5
            goto L65
        L3a:
            r6 = move-exception
            goto L8f
        L3c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L44:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.f0 r6 = g(r6)
            kotlinx.coroutines.channels.o r8 = r6.iterator()     // Catch: java.lang.Throwable -> L8b
            r5 = r8
            r8 = r6
            r6 = r5
        L52:
            r0.f86541a = r7     // Catch: java.lang.Throwable -> L88
            r0.f86542b = r8     // Catch: java.lang.Throwable -> L88
            r0.f86543c = r6     // Catch: java.lang.Throwable -> L88
            r0.f86545e = r3     // Catch: java.lang.Throwable -> L88
            java.lang.Object r2 = r6.b(r0)     // Catch: java.lang.Throwable -> L88
            if (r2 != r1) goto L61
            return r1
        L61:
            r5 = r0
            r0 = r8
            r8 = r2
            goto L37
        L65:
            r4 = 0
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L85
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L85
            if (r8 == 0) goto L79
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L85
            r7.invoke(r8)     // Catch: java.lang.Throwable -> L85
            r8 = r0
            r0 = r1
            r1 = r2
            goto L52
        L79:
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            kotlinx.coroutines.channels.r.b(r0, r4)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L85:
            r6 = move-exception
            r7 = r0
            goto L8f
        L88:
            r6 = move-exception
            r7 = r8
            goto L8f
        L8b:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L8f:
            throw r6     // Catch: java.lang.Throwable -> L90
        L90:
            r8 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            kotlinx.coroutines.channels.r.b(r7, r6)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.f.a(io.reactivex.w, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006e A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #1 {all -> 0x0085, blocks: (B:27:0x0066, B:29:0x006e), top: B:45:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0079  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0061 -> B:14:0x0037). Please submit an issue!!! */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object b(@m8.g io.reactivex.e0<T> r6, @m8.g kotlin.jvm.functions.Function1<? super T, kotlin.Unit> r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.rx2.f.b
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.rx2.f$b r0 = (kotlinx.coroutines.rx2.f.b) r0
            int r1 = r0.f86550e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86550e = r1
            goto L18
        L13:
            kotlinx.coroutines.rx2.f$b r0 = new kotlinx.coroutines.rx2.f$b
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f86549d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86550e
            r3 = 1
            if (r2 == 0) goto L44
            if (r2 != r3) goto L3c
            java.lang.Object r6 = r0.f86548c
            kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
            java.lang.Object r7 = r0.f86547b
            kotlinx.coroutines.channels.f0 r7 = (kotlinx.coroutines.channels.f0) r7
            java.lang.Object r2 = r0.f86546a
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L3a
            r5 = r0
            r0 = r7
            r7 = r2
        L37:
            r2 = r1
            r1 = r5
            goto L65
        L3a:
            r6 = move-exception
            goto L8f
        L3c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L44:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.f0 r6 = h(r6)
            kotlinx.coroutines.channels.o r8 = r6.iterator()     // Catch: java.lang.Throwable -> L8b
            r5 = r8
            r8 = r6
            r6 = r5
        L52:
            r0.f86546a = r7     // Catch: java.lang.Throwable -> L88
            r0.f86547b = r8     // Catch: java.lang.Throwable -> L88
            r0.f86548c = r6     // Catch: java.lang.Throwable -> L88
            r0.f86550e = r3     // Catch: java.lang.Throwable -> L88
            java.lang.Object r2 = r6.b(r0)     // Catch: java.lang.Throwable -> L88
            if (r2 != r1) goto L61
            return r1
        L61:
            r5 = r0
            r0 = r8
            r8 = r2
            goto L37
        L65:
            r4 = 0
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L85
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L85
            if (r8 == 0) goto L79
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L85
            r7.invoke(r8)     // Catch: java.lang.Throwable -> L85
            r8 = r0
            r0 = r1
            r1 = r2
            goto L52
        L79:
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            kotlinx.coroutines.channels.r.b(r0, r4)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L85:
            r6 = move-exception
            r7 = r0
            goto L8f
        L88:
            r6 = move-exception
            r7 = r8
            goto L8f
        L8b:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L8f:
            throw r6     // Catch: java.lang.Throwable -> L90
        L90:
            r8 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            kotlinx.coroutines.channels.r.b(r7, r6)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.f.b(io.reactivex.e0, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final <T> Object c(io.reactivex.w<T> wVar, Function1<? super T, Unit> function1, Continuation<? super Unit> continuation) {
        f0 g4 = g(wVar);
        try {
            kotlinx.coroutines.channels.o it = g4.iterator();
            while (true) {
                InlineMarker.mark(3);
                InlineMarker.mark(0);
                Object b10 = it.b(null);
                InlineMarker.mark(1);
                if (!((Boolean) b10).booleanValue()) {
                    InlineMarker.finallyStart(1);
                    kotlinx.coroutines.channels.r.b(g4, null);
                    InlineMarker.finallyEnd(1);
                    return Unit.INSTANCE;
                }
                function1.invoke((Object) it.next());
            }
        } finally {
        }
    }

    private static final <T> Object d(e0<T> e0Var, Function1<? super T, Unit> function1, Continuation<? super Unit> continuation) {
        f0 h4 = h(e0Var);
        try {
            kotlinx.coroutines.channels.o it = h4.iterator();
            while (true) {
                InlineMarker.mark(3);
                InlineMarker.mark(0);
                Object b10 = it.b(null);
                InlineMarker.mark(1);
                if (!((Boolean) b10).booleanValue()) {
                    InlineMarker.finallyStart(1);
                    kotlinx.coroutines.channels.r.b(h4, null);
                    InlineMarker.finallyEnd(1);
                    return Unit.INSTANCE;
                }
                function1.invoke((Object) it.next());
            }
        } finally {
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of Flow")
    public static final /* synthetic */ f0 e(io.reactivex.w wVar) {
        a0 a0Var = new a0();
        wVar.b(a0Var);
        return a0Var;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of Flow")
    public static final /* synthetic */ f0 f(e0 e0Var) {
        a0 a0Var = new a0();
        e0Var.subscribe(a0Var);
        return a0Var;
    }

    @PublishedApi
    @m8.g
    public static final <T> f0<T> g(@m8.g io.reactivex.w<T> wVar) {
        a0 a0Var = new a0();
        wVar.b(a0Var);
        return a0Var;
    }

    @PublishedApi
    @m8.g
    public static final <T> f0<T> h(@m8.g e0<T> e0Var) {
        a0 a0Var = new a0();
        e0Var.subscribe(a0Var);
        return a0Var;
    }
}
