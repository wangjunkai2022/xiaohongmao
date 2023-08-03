package kotlinx.coroutines.sync;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.p0;

/* compiled from: Mutex.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u0010\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0001\u001a\u00020\u0000\u001aD\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0086Hø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\t\u0010\n\"\u001a\u0010\u000f\u001a\u00020\u000b8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0003\u0010\f\u0012\u0004\b\r\u0010\u000e\"\u001a\u0010\u0012\u001a\u00020\u000b8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0010\u0010\f\u0012\u0004\b\u0011\u0010\u000e\"\u001a\u0010\u0015\u001a\u00020\u000b8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0013\u0010\f\u0012\u0004\b\u0014\u0010\u000e\"\u001a\u0010\u0018\u001a\u00020\u000b8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0016\u0010\f\u0012\u0004\b\u0017\u0010\u000e\"\u001a\u0010\u001d\u001a\u00020\u00198\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u0012\u0004\b\u001c\u0010\u000e\"\u001a\u0010 \u001a\u00020\u00198\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001b\u0012\u0004\b\u001f\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"", "locked", "Lkotlinx/coroutines/sync/c;", "a", ExifInterface.GPS_DIRECTION_TRUE, "", "owner", "Lkotlin/Function0;", com.alipay.sdk.packet.d.f6907q, "o", "(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/p0;", "Lkotlinx/coroutines/internal/p0;", "getLOCK_FAIL$annotations", "()V", "LOCK_FAIL", "b", "getUNLOCK_FAIL$annotations", "UNLOCK_FAIL", "c", "getLOCKED$annotations", "LOCKED", "d", "getUNLOCKED$annotations", "UNLOCKED", "Lkotlinx/coroutines/sync/b;", "e", "Lkotlinx/coroutines/sync/b;", "getEMPTY_LOCKED$annotations", "EMPTY_LOCKED", "f", "getEMPTY_UNLOCKED$annotations", "EMPTY_UNLOCKED", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final p0 f86769a = new p0("LOCK_FAIL");
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final p0 f86770b = new p0("UNLOCK_FAIL");
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final p0 f86771c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final p0 f86772d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private static final b f86773e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private static final b f86774f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mutex.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.sync.MutexKt", f = "Mutex.kt", i = {0, 0, 0}, l = {112}, m = "withLock", n = {"$this$withLock", "owner", com.alipay.sdk.packet.d.f6907q}, s = {"L$0", "L$1", "L$2"})
    /* loaded from: classes4.dex */
    public static final class a<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86775a;

        /* renamed from: b  reason: collision with root package name */
        Object f86776b;

        /* renamed from: c  reason: collision with root package name */
        Object f86777c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f86778d;

        /* renamed from: e  reason: collision with root package name */
        int f86779e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86778d = obj;
            this.f86779e |= Integer.MIN_VALUE;
            return e.o(null, null, null, this);
        }
    }

    static {
        p0 p0Var = new p0("LOCKED");
        f86771c = p0Var;
        p0 p0Var2 = new p0("UNLOCKED");
        f86772d = p0Var2;
        f86773e = new b(p0Var);
        f86774f = new b(p0Var2);
    }

    @m8.g
    public static final c a(boolean z9) {
        return new d(z9);
    }

    public static /* synthetic */ c b(boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return a(z9);
    }

    private static /* synthetic */ void i() {
    }

    private static /* synthetic */ void j() {
    }

    private static /* synthetic */ void k() {
    }

    private static /* synthetic */ void l() {
    }

    private static /* synthetic */ void m() {
    }

    private static /* synthetic */ void n() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object o(@m8.g kotlinx.coroutines.sync.c r4, @m8.h java.lang.Object r5, @m8.g kotlin.jvm.functions.Function0<? extends T> r6, @m8.g kotlin.coroutines.Continuation<? super T> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.sync.e.a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.sync.e$a r0 = (kotlinx.coroutines.sync.e.a) r0
            int r1 = r0.f86779e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86779e = r1
            goto L18
        L13:
            kotlinx.coroutines.sync.e$a r0 = new kotlinx.coroutines.sync.e$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f86778d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86779e
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r4 = r0.f86777c
            r6 = r4
            kotlin.jvm.functions.Function0 r6 = (kotlin.jvm.functions.Function0) r6
            java.lang.Object r5 = r0.f86776b
            java.lang.Object r4 = r0.f86775a
            kotlinx.coroutines.sync.c r4 = (kotlinx.coroutines.sync.c) r4
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4e
        L34:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.f86775a = r4
            r0.f86776b = r5
            r0.f86777c = r6
            r0.f86779e = r3
            java.lang.Object r7 = r4.c(r5, r0)
            if (r7 != r1) goto L4e
            return r1
        L4e:
            java.lang.Object r6 = r6.invoke()     // Catch: java.lang.Throwable -> L5c
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.d(r5)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            return r6
        L5c:
            r6 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.d(r5)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.e.o(kotlinx.coroutines.sync.c, java.lang.Object, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final <T> Object p(c cVar, Object obj, Function0<? extends T> function0, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        cVar.c(obj, continuation);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            cVar.d(obj);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ Object q(c cVar, Object obj, Function0 function0, Continuation continuation, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            obj = null;
        }
        InlineMarker.mark(0);
        cVar.c(obj, continuation);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            cVar.d(obj);
            InlineMarker.finallyEnd(1);
        }
    }
}
