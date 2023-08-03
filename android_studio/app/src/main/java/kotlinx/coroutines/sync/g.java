package kotlinx.coroutines.sync;

import com.facebook.common.callercontext.ContextChain;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.q;
import kotlinx.coroutines.r;
import kotlinx.coroutines.t;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Semaphore.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u001b\u001a\u00020\u0011¢\u0006\u0004\b\u001c\u0010\u001dJ\u0013\u0010\u0003\u001a\u00020\u0002H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\u001d\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\tJ\u000f\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u0013\u0010\u000e\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R \u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/sync/g;", "Lkotlinx/coroutines/sync/f;", "", "g", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/q;", "cont", "", "h", "(Lkotlinx/coroutines/q;)Z", "j", "()Z", ContextChain.TAG_INFRA, "b", "c", "release", "()V", "", "a", "I", "permits", "Lkotlin/Function1;", "", "Lkotlin/jvm/functions/Function1;", "onCancellationRelease", "()I", "availablePermits", "acquiredPermits", "<init>", "(II)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class g implements f {

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86780c = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, com.google.android.exoplayer2.text.ttml.d.f25724o);

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f86781d = AtomicLongFieldUpdater.newUpdater(g.class, "deqIdx");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86782e = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "tail");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f86783f = AtomicLongFieldUpdater.newUpdater(g.class, "enqIdx");

    /* renamed from: g  reason: collision with root package name */
    static final /* synthetic */ AtomicIntegerFieldUpdater f86784g = AtomicIntegerFieldUpdater.newUpdater(g.class, "_availablePermits");
    @m8.g
    volatile /* synthetic */ int _availablePermits;

    /* renamed from: a  reason: collision with root package name */
    private final int f86785a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function1<Throwable, Unit> f86786b;
    @m8.g
    private volatile /* synthetic */ long deqIdx = 0;
    @m8.g
    private volatile /* synthetic */ long enqIdx = 0;
    @m8.g
    private volatile /* synthetic */ Object head;
    @m8.g
    private volatile /* synthetic */ Object tail;

    /* compiled from: Semaphore.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class a extends Lambda implements Function1<Throwable, Unit> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g Throwable th) {
            g.this.release();
        }
    }

    public g(int i4, int i10) {
        this.f86785a = i4;
        boolean z9 = true;
        if (!(i4 > 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Semaphore should have at least 1 permit, but had ", Integer.valueOf(i4)).toString());
        }
        if ((i10 < 0 || i10 > i4) ? false : false) {
            i iVar = new i(0L, null, 2);
            this.head = iVar;
            this.tail = iVar;
            this._availablePermits = i4 - i10;
            this.f86786b = new a();
            return;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("The number of acquired permits should be in 0..", Integer.valueOf(i4)).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g(Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        r b10 = t.b(intercepted);
        while (true) {
            if (!h(b10)) {
                if (f86784g.getAndDecrement(this) > 0) {
                    b10.r(Unit.INSTANCE, this.f86786b);
                    break;
                }
            } else {
                break;
            }
        }
        Object A = b10.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return A == coroutine_suspended2 ? A : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0074, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean h(kotlinx.coroutines.q<? super kotlin.Unit> r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            java.lang.Object r2 = r0.tail
            kotlinx.coroutines.sync.i r2 = (kotlinx.coroutines.sync.i) r2
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = kotlinx.coroutines.sync.g.f86783f
            long r3 = r3.getAndIncrement(r0)
            int r5 = kotlinx.coroutines.sync.h.h()
            long r5 = (long) r5
            long r5 = r3 / r5
        L15:
            r7 = r2
        L16:
            long r8 = r7.o()
            int r10 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r10 < 0) goto L2a
            boolean r8 = r7.g()
            if (r8 == 0) goto L25
            goto L2a
        L25:
            java.lang.Object r7 = kotlinx.coroutines.internal.n0.b(r7)
            goto L3c
        L2a:
            java.lang.Object r8 = kotlinx.coroutines.internal.h.a(r7)
            kotlinx.coroutines.internal.p0 r9 = kotlinx.coroutines.internal.g.a()
            if (r8 != r9) goto Lb9
            kotlinx.coroutines.internal.p0 r7 = kotlinx.coroutines.internal.g.a()
            java.lang.Object r7 = kotlinx.coroutines.internal.n0.b(r7)
        L3c:
            boolean r8 = kotlinx.coroutines.internal.n0.h(r7)
            r9 = 0
            r10 = 1
            if (r8 != 0) goto L81
            kotlinx.coroutines.internal.m0 r8 = kotlinx.coroutines.internal.n0.f(r7)
        L48:
            java.lang.Object r11 = r0.tail
            kotlinx.coroutines.internal.m0 r11 = (kotlinx.coroutines.internal.m0) r11
            long r12 = r11.o()
            long r14 = r8.o()
            int r16 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r16 < 0) goto L5a
        L58:
            r8 = 1
            goto L74
        L5a:
            boolean r12 = r8.r()
            if (r12 != 0) goto L62
            r8 = 0
            goto L74
        L62:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r12 = kotlinx.coroutines.sync.g.f86782e
            boolean r12 = androidx.concurrent.futures.a.a(r12, r0, r11, r8)
            if (r12 == 0) goto L77
            boolean r8 = r11.n()
            if (r8 == 0) goto L58
            r11.l()
            goto L58
        L74:
            if (r8 == 0) goto L15
            goto L81
        L77:
            boolean r11 = r8.n()
            if (r11 == 0) goto L48
            r8.l()
            goto L48
        L81:
            kotlinx.coroutines.internal.m0 r2 = kotlinx.coroutines.internal.n0.f(r7)
            kotlinx.coroutines.sync.i r2 = (kotlinx.coroutines.sync.i) r2
            int r5 = kotlinx.coroutines.sync.h.h()
            long r5 = (long) r5
            long r3 = r3 % r5
            int r4 = (int) r3
            r3 = 0
            java.util.concurrent.atomic.AtomicReferenceArray r5 = r2.f86798e
            boolean r3 = r5.compareAndSet(r4, r3, r1)
            if (r3 == 0) goto La0
            kotlinx.coroutines.sync.a r3 = new kotlinx.coroutines.sync.a
            r3.<init>(r2, r4)
            r1.k(r3)
            return r10
        La0:
            kotlinx.coroutines.internal.p0 r3 = kotlinx.coroutines.sync.h.g()
            kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.sync.h.i()
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r2.f86798e
            boolean r2 = r2.compareAndSet(r4, r3, r5)
            if (r2 == 0) goto Lb8
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            kotlin.jvm.functions.Function1<java.lang.Throwable, kotlin.Unit> r3 = r0.f86786b
            r1.r(r2, r3)
            return r10
        Lb8:
            return r9
        Lb9:
            kotlinx.coroutines.internal.h r8 = (kotlinx.coroutines.internal.h) r8
            kotlinx.coroutines.internal.m0 r8 = (kotlinx.coroutines.internal.m0) r8
            if (r8 == 0) goto Lc2
        Lbf:
            r7 = r8
            goto L16
        Lc2:
            long r8 = r7.o()
            r10 = 1
            long r8 = r8 + r10
            r10 = r7
            kotlinx.coroutines.sync.i r10 = (kotlinx.coroutines.sync.i) r10
            kotlinx.coroutines.sync.i r8 = kotlinx.coroutines.sync.h.c(r8, r10)
            boolean r9 = r7.m(r8)
            if (r9 == 0) goto L16
            boolean r9 = r7.g()
            if (r9 == 0) goto Lbf
            r7.l()
            goto Lbf
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.g.h(kotlinx.coroutines.q):boolean");
    }

    private final boolean i(q<? super Unit> qVar) {
        Object z9 = qVar.z(Unit.INSTANCE, null, this.f86786b);
        if (z9 == null) {
            return false;
        }
        qVar.I(z9);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0070, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean j() {
        /*
            Method dump skipped, instructions count: 252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.g.j():boolean");
    }

    @Override // kotlinx.coroutines.sync.f
    public int a() {
        return Math.max(this._availablePermits, 0);
    }

    @Override // kotlinx.coroutines.sync.f
    public boolean b() {
        int i4;
        do {
            i4 = this._availablePermits;
            if (i4 <= 0) {
                return false;
            }
        } while (!f86784g.compareAndSet(this, i4, i4 - 1));
        return true;
    }

    @Override // kotlinx.coroutines.sync.f
    @m8.h
    public Object c(@m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (f86784g.getAndDecrement(this) > 0) {
            return Unit.INSTANCE;
        }
        Object g4 = g(continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.sync.f
    public void release() {
        while (true) {
            int i4 = this._availablePermits;
            int i10 = this.f86785a;
            if (i4 < i10) {
                if (f86784g.compareAndSet(this, i4, i4 + 1) && (i4 >= 0 || j())) {
                    return;
                }
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("The number of released permits cannot be greater than ", Integer.valueOf(i10)).toString());
            }
        }
    }
}
