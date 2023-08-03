package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;

/* compiled from: Timeout.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aW\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\t\u0010\n\u001a]\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\f\u001a\u00020\u000b2'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@ø\u0001\u0000ø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\r\u0010\n\u001aL\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\n\u001aR\u0010\u000f\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\f\u001a\u00020\u000b2'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@ø\u0001\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\n\u001aa\u0010\u0013\u001a\u0004\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0010\"\b\b\u0001\u0010\u0000*\u00028\u00002\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00112'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0016H\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0019"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "timeMillis", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "c", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "timeout", "d", "e", "f", "U", "Lkotlinx/coroutines/t3;", "coroutine", "b", "(Lkotlinx/coroutines/t3;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "Lkotlinx/coroutines/j2;", "Lkotlinx/coroutines/TimeoutCancellationException;", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class u3 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Timeout.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", i = {0, 0, 0}, l = {100}, m = "withTimeoutOrNull", n = {"block", "coroutine", "timeMillis"}, s = {"L$0", "L$1", "J$0"})
    /* loaded from: classes4.dex */
    public static final class a<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        long f86837a;

        /* renamed from: b  reason: collision with root package name */
        Object f86838b;

        /* renamed from: c  reason: collision with root package name */
        Object f86839c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f86840d;

        /* renamed from: e  reason: collision with root package name */
        int f86841e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86840d = obj;
            this.f86841e |= Integer.MIN_VALUE;
            return u3.e(0L, null, this);
        }
    }

    @m8.g
    public static final TimeoutCancellationException a(long j4, @m8.g j2 j2Var) {
        return new TimeoutCancellationException("Timed out waiting for " + j4 + " ms", j2Var);
    }

    private static final <U, T extends U> Object b(t3<U, ? super T> t3Var, Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2) {
        m2.y(t3Var, b1.d(t3Var.f86274c.getContext()).I(t3Var.f86808d, t3Var, t3Var.getContext()));
        return z7.b.g(t3Var, t3Var, function2);
    }

    @m8.h
    public static final <T> Object c(long j4, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        Object coroutine_suspended;
        if (j4 > 0) {
            Object b10 = b(new t3(j4, continuation), function2);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (b10 == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return b10;
        }
        throw new TimeoutCancellationException("Timed out immediately");
    }

    @m8.h
    public static final <T> Object d(long j4, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        return c(b1.e(j4), function2, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0075  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.t3] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object e(long r7, @m8.g kotlin.jvm.functions.Function2<? super kotlinx.coroutines.s0, ? super kotlin.coroutines.Continuation<? super T>, ? extends java.lang.Object> r9, @m8.g kotlin.coroutines.Continuation<? super T> r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.u3.a
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.u3$a r0 = (kotlinx.coroutines.u3.a) r0
            int r1 = r0.f86841e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86841e = r1
            goto L18
        L13:
            kotlinx.coroutines.u3$a r0 = new kotlinx.coroutines.u3$a
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f86840d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86841e
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 != r4) goto L34
            java.lang.Object r7 = r0.f86839c
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            java.lang.Object r8 = r0.f86838b
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L32
            goto L6b
        L32:
            r8 = move-exception
            goto L6e
        L34:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3c:
            kotlin.ResultKt.throwOnFailure(r10)
            r5 = 0
            int r10 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r10 > 0) goto L46
            return r3
        L46:
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            r0.f86838b = r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
            r0.f86839c = r10     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
            r0.f86837a = r7     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
            r0.f86841e = r4     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
            kotlinx.coroutines.t3 r2 = new kotlinx.coroutines.t3     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
            r2.<init>(r7, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
            r10.element = r2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
            java.lang.Object r7 = b(r2, r9)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
            java.lang.Object r8 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
            if (r7 != r8) goto L67
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L6c
        L67:
            if (r7 != r1) goto L6a
            return r1
        L6a:
            r10 = r7
        L6b:
            return r10
        L6c:
            r8 = move-exception
            r7 = r10
        L6e:
            kotlinx.coroutines.j2 r9 = r8.coroutine
            T r7 = r7.element
            if (r9 != r7) goto L75
            return r3
        L75:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.u3.e(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.h
    public static final <T> Object f(long j4, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        return e(b1.e(j4), function2, continuation);
    }
}
