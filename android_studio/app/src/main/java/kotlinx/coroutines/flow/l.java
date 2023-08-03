package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.z1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a1\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a9\u0010\t\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002\u001a\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002\u001a\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0007\u001a&\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "Lkotlinx/coroutines/channels/f0;", "channel", "", "d", "(Lkotlinx/coroutines/flow/j;Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "consume", "e", "(Lkotlinx/coroutines/flow/j;Lkotlinx/coroutines/channels/f0;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/i;", "g", "c", "Lkotlinx/coroutines/channels/i;", "b", "Lkotlinx/coroutines/s0;", "scope", "f", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class l {

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements i<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.channels.i f86049a;

        public a(kotlinx.coroutines.channels.i iVar) {
            this.f86049a = iVar;
        }

        @Override // kotlinx.coroutines.flow.i
        @m8.h
        public Object collect(@m8.g j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object l02 = k.l0(jVar, this.f86049a.g(), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return l02 == coroutine_suspended ? l02 : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channels.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", f = "Channels.kt", i = {0, 0, 0, 1, 1, 1}, l = {51, 62}, m = "emitAllImpl$FlowKt__ChannelsKt", n = {"$this$emitAllImpl", "channel", "consume", "$this$emitAllImpl", "channel", "consume"}, s = {"L$0", "L$1", "Z$0", "L$0", "L$1", "Z$0"})
    /* loaded from: classes4.dex */
    public static final class b<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86050a;

        /* renamed from: b  reason: collision with root package name */
        Object f86051b;

        /* renamed from: c  reason: collision with root package name */
        boolean f86052c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f86053d;

        /* renamed from: e  reason: collision with root package name */
        int f86054e;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86053d = obj;
            this.f86054e |= Integer.MIN_VALUE;
            return l.e(null, null, false, this);
        }
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "'BroadcastChannel' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow")
    @m8.g
    public static final <T> i<T> b(@m8.g kotlinx.coroutines.channels.i<T> iVar) {
        return new a(iVar);
    }

    @m8.g
    public static final <T> i<T> c(@m8.g kotlinx.coroutines.channels.f0<? extends T> f0Var) {
        return new e(f0Var, true, null, 0, null, 28, null);
    }

    @m8.h
    public static final <T> Object d(@m8.g j<? super T> jVar, @m8.g kotlinx.coroutines.channels.f0<? extends T> f0Var, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object e4 = e(jVar, f0Var, true, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0076 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #0 {all -> 0x0055, blocks: (B:13:0x0032, B:28:0x0070, B:30:0x0076, B:36:0x0084, B:37:0x0085, B:18:0x004b), top: B:47:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #0 {all -> 0x0055, blocks: (B:13:0x0032, B:28:0x0070, B:30:0x0076, B:36:0x0084, B:37:0x0085, B:18:0x004b), top: B:47:0x0022 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0095 -> B:14:0x0035). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object e(kotlinx.coroutines.flow.j<? super T> r7, kotlinx.coroutines.channels.f0<? extends T> r8, boolean r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.l.b
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.l$b r0 = (kotlinx.coroutines.flow.l.b) r0
            int r1 = r0.f86054e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86054e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.l$b r0 = new kotlinx.coroutines.flow.l$b
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f86053d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86054e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L57
            if (r2 == r4) goto L41
            if (r2 != r3) goto L39
            boolean r7 = r0.f86052c
            java.lang.Object r8 = r0.f86051b
            kotlinx.coroutines.channels.f0 r8 = (kotlinx.coroutines.channels.f0) r8
            java.lang.Object r9 = r0.f86050a
            kotlinx.coroutines.flow.j r9 = (kotlinx.coroutines.flow.j) r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L55
        L35:
            r6 = r9
            r9 = r7
            r7 = r6
            goto L5d
        L39:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L41:
            boolean r7 = r0.f86052c
            java.lang.Object r8 = r0.f86051b
            kotlinx.coroutines.channels.f0 r8 = (kotlinx.coroutines.channels.f0) r8
            java.lang.Object r9 = r0.f86050a
            kotlinx.coroutines.flow.j r9 = (kotlinx.coroutines.flow.j) r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L55
            kotlinx.coroutines.channels.q r10 = (kotlinx.coroutines.channels.q) r10     // Catch: java.lang.Throwable -> L55
            java.lang.Object r10 = r10.o()     // Catch: java.lang.Throwable -> L55
            goto L6f
        L55:
            r9 = move-exception
            goto L9c
        L57:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.k.o0(r7)
        L5d:
            r0.f86050a = r7     // Catch: java.lang.Throwable -> L98
            r0.f86051b = r8     // Catch: java.lang.Throwable -> L98
            r0.f86052c = r9     // Catch: java.lang.Throwable -> L98
            r0.f86054e = r4     // Catch: java.lang.Throwable -> L98
            java.lang.Object r10 = r8.x(r0)     // Catch: java.lang.Throwable -> L98
            if (r10 != r1) goto L6c
            return r1
        L6c:
            r6 = r9
            r9 = r7
            r7 = r6
        L6f:
            r2 = 0
            boolean r5 = kotlinx.coroutines.channels.q.k(r10)     // Catch: java.lang.Throwable -> L55
            if (r5 == 0) goto L85
            java.lang.Throwable r9 = kotlinx.coroutines.channels.q.f(r10)     // Catch: java.lang.Throwable -> L55
            if (r9 != 0) goto L84
            if (r7 == 0) goto L81
            kotlinx.coroutines.channels.r.b(r8, r2)
        L81:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L84:
            throw r9     // Catch: java.lang.Throwable -> L55
        L85:
            java.lang.Object r10 = kotlinx.coroutines.channels.q.i(r10)     // Catch: java.lang.Throwable -> L55
            r0.f86050a = r9     // Catch: java.lang.Throwable -> L55
            r0.f86051b = r8     // Catch: java.lang.Throwable -> L55
            r0.f86052c = r7     // Catch: java.lang.Throwable -> L55
            r0.f86054e = r3     // Catch: java.lang.Throwable -> L55
            java.lang.Object r10 = r9.emit(r10, r0)     // Catch: java.lang.Throwable -> L55
            if (r10 != r1) goto L35
            return r1
        L98:
            r7 = move-exception
            r6 = r9
            r9 = r7
            r7 = r6
        L9c:
            throw r9     // Catch: java.lang.Throwable -> L9d
        L9d:
            r10 = move-exception
            if (r7 == 0) goto La3
            kotlinx.coroutines.channels.r.b(r8, r9)
        La3:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.l.e(kotlinx.coroutines.flow.j, kotlinx.coroutines.channels.f0, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @z1
    @m8.g
    public static final <T> kotlinx.coroutines.channels.f0<T> f(@m8.g i<? extends T> iVar, @m8.g s0 s0Var) {
        return kotlinx.coroutines.flow.internal.e.b(iVar).m(s0Var);
    }

    @m8.g
    public static final <T> i<T> g(@m8.g kotlinx.coroutines.channels.f0<? extends T> f0Var) {
        return new e(f0Var, false, null, 0, null, 28, null);
    }
}
