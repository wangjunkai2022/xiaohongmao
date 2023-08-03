package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.u1;
import kotlinx.coroutines.z2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.common.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001aE\u0010\u0007\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u001d\u0010\u0006\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0002\b\u0005H\u0087\b¢\u0006\u0004\b\u0007\u0010\b\u001a)\u0010\n\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0000*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0087@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a$\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\f\"\b\b\u0000\u0010\u0000*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0007\u001aR\u0010\u000e\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00042\u001d\u0010\u0006\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0002\b\u0005H\u0086\b\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u000e\u0010\u000f\u001a7\u0010\u0012\u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u0003H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a)\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u000b\u001a7\u0010\u0016\u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u0003H\u0087Hø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u001a\u0010\u001a\u001a\u00020\u0010*\u0006\u0012\u0002\b\u00030\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0001\"\u0014\u0010\u001c\u001a\u00020\u001b8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/i;", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/f0;", "Lkotlin/ExtensionFunctionType;", "block", "b", "(Lkotlinx/coroutines/channels/i;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "", ContextChain.TAG_INFRA, "(Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/d;", "h", "c", "(Lkotlinx/coroutines/channels/f0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "", com.alipay.sdk.packet.d.f6907q, "e", "(Lkotlinx/coroutines/channels/f0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "j", "d", "(Lkotlinx/coroutines/channels/i;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "cause", "a", "", "DEFAULT_CLOSE_MESSAGE", "Ljava/lang/String;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/channels/ChannelsKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class t {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channels.common.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {104}, m = "consumeEach", n = {com.alipay.sdk.packet.d.f6907q, "$this$consume$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class a<E> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f84921a;

        /* renamed from: b  reason: collision with root package name */
        Object f84922b;

        /* renamed from: c  reason: collision with root package name */
        Object f84923c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f84924d;

        /* renamed from: e  reason: collision with root package name */
        int f84925e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f84924d = obj;
            this.f84925e |= Integer.MIN_VALUE;
            return t.e(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channels.common.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {com.google.android.exoplayer2.extractor.ts.h0.G}, m = "consumeEach", n = {com.alipay.sdk.packet.d.f6907q, "channel$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class b<E> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f84926a;

        /* renamed from: b  reason: collision with root package name */
        Object f84927b;

        /* renamed from: c  reason: collision with root package name */
        Object f84928c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f84929d;

        /* renamed from: e  reason: collision with root package name */
        int f84930e;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f84929d = obj;
            this.f84930e |= Integer.MIN_VALUE;
            return t.d(null, null, this);
        }
    }

    /* compiled from: Channels.common.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {148}, m = "toList", n = {"$this$toList_u24lambda_u2d3", "$this$consume$iv$iv"}, s = {"L$1", "L$2"})
    /* loaded from: classes4.dex */
    static final class c<E> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f84931a;

        /* renamed from: b  reason: collision with root package name */
        Object f84932b;

        /* renamed from: c  reason: collision with root package name */
        Object f84933c;

        /* renamed from: d  reason: collision with root package name */
        Object f84934d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f84935e;

        /* renamed from: f  reason: collision with root package name */
        int f84936f;

        c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f84935e = obj;
            this.f84936f |= Integer.MIN_VALUE;
            return r.g0(null, this);
        }
    }

    @PublishedApi
    public static final void a(@m8.g f0<?> f0Var, @m8.h Throwable th) {
        if (th != null) {
            r0 = th instanceof CancellationException ? (CancellationException) th : null;
            if (r0 == null) {
                r0 = u1.a("Channel was consumed, consumer had failed", th);
            }
        }
        f0Var.d(r0);
    }

    @z2
    public static final <E, R> R b(@m8.g i<E> iVar, @m8.g Function1<? super f0<? extends E>, ? extends R> function1) {
        f0<E> g4 = iVar.g();
        try {
            return function1.invoke(g4);
        } finally {
            InlineMarker.finallyStart(1);
            f0.a.b(g4, null, 1, null);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final <E, R> R c(@m8.g f0<? extends E> f0Var, @m8.g Function1<? super f0<? extends E>, ? extends R> function1) {
        try {
            R invoke = function1.invoke(f0Var);
            InlineMarker.finallyStart(1);
            r.b(f0Var, null);
            InlineMarker.finallyEnd(1);
            return invoke;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0061 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:26:0x0066, B:28:0x006e, B:29:0x0079), top: B:40:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079 A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #0 {all -> 0x0085, blocks: (B:26:0x0066, B:28:0x006e, B:29:0x0079), top: B:40:0x0066 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0062 -> B:14:0x0038). Please submit an issue!!! */
    @m8.h
    @kotlinx.coroutines.z2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <E> java.lang.Object d(@m8.g kotlinx.coroutines.channels.i<E> r6, @m8.g kotlin.jvm.functions.Function1<? super E, kotlin.Unit> r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.t.b
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.t$b r0 = (kotlinx.coroutines.channels.t.b) r0
            int r1 = r0.f84930e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84930e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.t$b r0 = new kotlinx.coroutines.channels.t$b
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f84929d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84930e
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 != r4) goto L3d
            java.lang.Object r6 = r0.f84928c
            kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
            java.lang.Object r7 = r0.f84927b
            kotlinx.coroutines.channels.f0 r7 = (kotlinx.coroutines.channels.f0) r7
            java.lang.Object r2 = r0.f84926a
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L3b
            r5 = r0
            r0 = r7
            r7 = r2
        L38:
            r2 = r1
            r1 = r5
            goto L66
        L3b:
            r6 = move-exception
            goto L8f
        L3d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L45:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.f0 r6 = r6.g()
            kotlinx.coroutines.channels.o r8 = r6.iterator()     // Catch: java.lang.Throwable -> L8b
            r5 = r8
            r8 = r6
            r6 = r5
        L53:
            r0.f84926a = r7     // Catch: java.lang.Throwable -> L88
            r0.f84927b = r8     // Catch: java.lang.Throwable -> L88
            r0.f84928c = r6     // Catch: java.lang.Throwable -> L88
            r0.f84930e = r4     // Catch: java.lang.Throwable -> L88
            java.lang.Object r2 = r6.b(r0)     // Catch: java.lang.Throwable -> L88
            if (r2 != r1) goto L62
            return r1
        L62:
            r5 = r0
            r0 = r8
            r8 = r2
            goto L38
        L66:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L85
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L85
            if (r8 == 0) goto L79
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L85
            r7.invoke(r8)     // Catch: java.lang.Throwable -> L85
            r8 = r0
            r0 = r1
            r1 = r2
            goto L53
        L79:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L85
            kotlin.jvm.internal.InlineMarker.finallyStart(r4)
            kotlinx.coroutines.channels.f0.a.b(r0, r3, r4, r3)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
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
            kotlin.jvm.internal.InlineMarker.finallyStart(r4)
            kotlinx.coroutines.channels.f0.a.b(r7, r3, r4, r3)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.t.d(kotlinx.coroutines.channels.i, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0065 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:12:0x0031, B:25:0x005c, B:27:0x0065, B:21:0x004a, B:28:0x006e), top: B:37:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:12:0x0031, B:25:0x005c, B:27:0x0065, B:21:0x004a, B:28:0x006e), top: B:37:0x0031 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0059 -> B:25:0x005c). Please submit an issue!!! */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <E> java.lang.Object e(@m8.g kotlinx.coroutines.channels.f0<? extends E> r6, @m8.g kotlin.jvm.functions.Function1<? super E, kotlin.Unit> r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.t.a
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.t$a r0 = (kotlinx.coroutines.channels.t.a) r0
            int r1 = r0.f84925e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84925e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.t$a r0 = new kotlinx.coroutines.channels.t$a
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f84924d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84925e
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r6 = r0.f84923c
            kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
            java.lang.Object r7 = r0.f84922b
            kotlinx.coroutines.channels.f0 r7 = (kotlinx.coroutines.channels.f0) r7
            java.lang.Object r2 = r0.f84921a
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L5c
        L35:
            r6 = move-exception
            goto L7e
        L37:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.o r8 = r6.iterator()     // Catch: java.lang.Throwable -> L7a
            r5 = r7
            r7 = r6
            r6 = r8
            r8 = r5
        L4a:
            r0.f84921a = r8     // Catch: java.lang.Throwable -> L35
            r0.f84922b = r7     // Catch: java.lang.Throwable -> L35
            r0.f84923c = r6     // Catch: java.lang.Throwable -> L35
            r0.f84925e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r2 = r6.b(r0)     // Catch: java.lang.Throwable -> L35
            if (r2 != r1) goto L59
            return r1
        L59:
            r5 = r2
            r2 = r8
            r8 = r5
        L5c:
            r4 = 0
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L35
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L6e
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L35
            r2.invoke(r8)     // Catch: java.lang.Throwable -> L35
            r8 = r2
            goto L4a
        L6e:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            kotlinx.coroutines.channels.r.b(r7, r4)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            return r6
        L7a:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L7e:
            throw r6     // Catch: java.lang.Throwable -> L7f
        L7f:
            r8 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            kotlinx.coroutines.channels.r.b(r7, r6)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.t.e(kotlinx.coroutines.channels.f0, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @z2
    private static final <E> Object f(i<E> iVar, Function1<? super E, Unit> function1, Continuation<? super Unit> continuation) {
        f0<E> g4 = iVar.g();
        try {
            o<E> it = g4.iterator();
            while (true) {
                InlineMarker.mark(3);
                InlineMarker.mark(0);
                Object b10 = it.b(null);
                InlineMarker.mark(1);
                if (!((Boolean) b10).booleanValue()) {
                    return Unit.INSTANCE;
                }
                function1.invoke(it.next());
            }
        } finally {
            InlineMarker.finallyStart(1);
            f0.a.b(g4, null, 1, null);
            InlineMarker.finallyEnd(1);
        }
    }

    private static final <E> Object g(f0<? extends E> f0Var, Function1<? super E, Unit> function1, Continuation<? super Unit> continuation) {
        try {
            o<? extends E> it = f0Var.iterator();
            while (true) {
                InlineMarker.mark(3);
                InlineMarker.mark(0);
                Object b10 = it.b(null);
                InlineMarker.mark(1);
                if (!((Boolean) b10).booleanValue()) {
                    Unit unit = Unit.INSTANCE;
                    InlineMarker.finallyStart(1);
                    r.b(f0Var, null);
                    InlineMarker.finallyEnd(1);
                    return unit;
                }
                function1.invoke((E) it.next());
            }
        } finally {
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'onReceiveCatching'")
    @m8.g
    public static final <E> kotlinx.coroutines.selects.d<E> h(@m8.g f0<? extends E> f0Var) {
        return (kotlinx.coroutines.selects.d<? extends E>) f0Var.u();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'receiveCatching'", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @m8.h
    public static final <E> Object i(@m8.g f0<? extends E> f0Var, @m8.g Continuation<? super E> continuation) {
        return f0Var.w(continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070 A[Catch: all -> 0x0039, TryCatch #2 {all -> 0x0039, blocks: (B:12:0x0035, B:26:0x0068, B:28:0x0070, B:29:0x0079), top: B:44:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #2 {all -> 0x0039, blocks: (B:12:0x0035, B:26:0x0068, B:28:0x0070, B:29:0x0079), top: B:44:0x0035 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0064 -> B:25:0x0067). Please submit an issue!!! */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <E> java.lang.Object j(@m8.g kotlinx.coroutines.channels.f0<? extends E> r8, @m8.g kotlin.coroutines.Continuation<? super java.util.List<? extends E>> r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.channels.t.c
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.channels.t$c r0 = (kotlinx.coroutines.channels.t.c) r0
            int r1 = r0.f84936f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84936f = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.t$c r0 = new kotlinx.coroutines.channels.t$c
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f84935e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84936f
            r3 = 1
            if (r2 == 0) goto L44
            if (r2 != r3) goto L3c
            java.lang.Object r8 = r0.f84934d
            kotlinx.coroutines.channels.o r8 = (kotlinx.coroutines.channels.o) r8
            java.lang.Object r2 = r0.f84933c
            kotlinx.coroutines.channels.f0 r2 = (kotlinx.coroutines.channels.f0) r2
            java.lang.Object r4 = r0.f84932b
            java.util.List r4 = (java.util.List) r4
            java.lang.Object r5 = r0.f84931a
            java.util.List r5 = (java.util.List) r5
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L39
            goto L67
        L39:
            r8 = move-exception
            r9 = r2
            goto L89
        L3c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L44:
            kotlin.ResultKt.throwOnFailure(r9)
            java.util.List r9 = kotlin.collections.CollectionsKt.createListBuilder()
            kotlinx.coroutines.channels.o r2 = r8.iterator()     // Catch: java.lang.Throwable -> L85
            r4 = r9
            r5 = r4
            r9 = r8
            r8 = r2
        L53:
            r0.f84931a = r5     // Catch: java.lang.Throwable -> L83
            r0.f84932b = r4     // Catch: java.lang.Throwable -> L83
            r0.f84933c = r9     // Catch: java.lang.Throwable -> L83
            r0.f84934d = r8     // Catch: java.lang.Throwable -> L83
            r0.f84936f = r3     // Catch: java.lang.Throwable -> L83
            java.lang.Object r2 = r8.b(r0)     // Catch: java.lang.Throwable -> L83
            if (r2 != r1) goto L64
            return r1
        L64:
            r7 = r2
            r2 = r9
            r9 = r7
        L67:
            r6 = 0
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L39
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L39
            if (r9 == 0) goto L79
            java.lang.Object r9 = r8.next()     // Catch: java.lang.Throwable -> L39
            r4.add(r9)     // Catch: java.lang.Throwable -> L39
            r9 = r2
            goto L53
        L79:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L39
            kotlinx.coroutines.channels.r.b(r2, r6)
            java.util.List r8 = kotlin.collections.CollectionsKt.build(r5)
            return r8
        L83:
            r8 = move-exception
            goto L89
        L85:
            r9 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        L89:
            throw r8     // Catch: java.lang.Throwable -> L8a
        L8a:
            r0 = move-exception
            kotlinx.coroutines.channels.r.b(r9, r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.t.j(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
