package kotlinx.coroutines.sync;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.internal.t0;

/* compiled from: Semaphore.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\u001a\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0000\u001a8\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0005*\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0086Hø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\b\u0010\t\u001a\u001a\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002\"\u001a\u0010\u0012\u001a\u00020\u00008\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u000f\u0012\u0004\b\u0010\u0010\u0011\"\u001a\u0010\u0017\u001a\u00020\u00138\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u0012\u0004\b\u0016\u0010\u0011\"\u001a\u0010\u001a\u001a\u00020\u00138\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u0012\u0004\b\u0019\u0010\u0011\"\u001a\u0010\u001d\u001a\u00020\u00138\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0015\u0012\u0004\b\u001c\u0010\u0011\"\u001a\u0010 \u001a\u00020\u00138\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u0015\u0012\u0004\b\u001f\u0010\u0011\"\u001a\u0010#\u001a\u00020\u00008\u0002X\u0083\u0004¢\u0006\f\n\u0004\b!\u0010\u000f\u0012\u0004\b\"\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {"", "permits", "acquiredPermits", "Lkotlinx/coroutines/sync/f;", "a", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function0;", com.alipay.sdk.packet.d.f6907q, "q", "(Lkotlinx/coroutines/sync/f;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "id", "Lkotlinx/coroutines/sync/i;", "prev", "j", "I", "getMAX_SPIN_CYCLES$annotations", "()V", "MAX_SPIN_CYCLES", "Lkotlinx/coroutines/internal/p0;", "b", "Lkotlinx/coroutines/internal/p0;", "getPERMIT$annotations", "PERMIT", "c", "getTAKEN$annotations", "TAKEN", "d", "getBROKEN$annotations", "BROKEN", "e", "getCANCELLED$annotations", "CANCELLED", "f", "getSEGMENT_SIZE$annotations", "SEGMENT_SIZE", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final int f86788a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final p0 f86789b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final p0 f86790c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final p0 f86791d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private static final p0 f86792e;

    /* renamed from: f  reason: collision with root package name */
    private static final int f86793f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Semaphore.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.sync.SemaphoreKt", f = "Semaphore.kt", i = {0, 0}, l = {85}, m = "withPermit", n = {"$this$withPermit", com.alipay.sdk.packet.d.f6907q}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class a<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86794a;

        /* renamed from: b  reason: collision with root package name */
        Object f86795b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f86796c;

        /* renamed from: d  reason: collision with root package name */
        int f86797d;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86796c = obj;
            this.f86797d |= Integer.MIN_VALUE;
            return h.q(null, null, this);
        }
    }

    static {
        int d4;
        int d10;
        d4 = t0.d("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);
        f86788a = d4;
        f86789b = new p0("PERMIT");
        f86790c = new p0("TAKEN");
        f86791d = new p0("BROKEN");
        f86792e = new p0("CANCELLED");
        d10 = t0.d("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);
        f86793f = d10;
    }

    @m8.g
    public static final f a(int i4, int i10) {
        return new g(i4, i10);
    }

    public static /* synthetic */ f b(int i4, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return a(i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i j(long j4, i iVar) {
        return new i(j4, iVar, 0);
    }

    private static /* synthetic */ void k() {
    }

    private static /* synthetic */ void l() {
    }

    private static /* synthetic */ void m() {
    }

    private static /* synthetic */ void n() {
    }

    private static /* synthetic */ void o() {
    }

    private static /* synthetic */ void p() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object q(@m8.g kotlinx.coroutines.sync.f r4, @m8.g kotlin.jvm.functions.Function0<? extends T> r5, @m8.g kotlin.coroutines.Continuation<? super T> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.sync.h.a
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.sync.h$a r0 = (kotlinx.coroutines.sync.h.a) r0
            int r1 = r0.f86797d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86797d = r1
            goto L18
        L13:
            kotlinx.coroutines.sync.h$a r0 = new kotlinx.coroutines.sync.h$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f86796c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86797d
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r4 = r0.f86795b
            r5 = r4
            kotlin.jvm.functions.Function0 r5 = (kotlin.jvm.functions.Function0) r5
            java.lang.Object r4 = r0.f86794a
            kotlinx.coroutines.sync.f r4 = (kotlinx.coroutines.sync.f) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L32:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.f86794a = r4
            r0.f86795b = r5
            r0.f86797d = r3
            java.lang.Object r6 = r4.c(r0)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            java.lang.Object r5 = r5.invoke()     // Catch: java.lang.Throwable -> L58
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.release()
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            return r5
        L58:
            r5 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.release()
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.h.q(kotlinx.coroutines.sync.f, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final <T> Object r(f fVar, Function0<? extends T> function0, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        fVar.c(continuation);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            fVar.release();
            InlineMarker.finallyEnd(1);
        }
    }
}
