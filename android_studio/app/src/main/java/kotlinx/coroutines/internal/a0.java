package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.t;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: LockFreeTaskQueue.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0010\b\u0000\u0018\u0000 \u0007*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0002\u0017\u0013B\u0017\u0012\u0006\u0010%\u001a\u00020\u0003\u0012\u0006\u0010'\u001a\u00020\u0014¢\u0006\u0004\b.\u0010/J3\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0007\u0010\bJ3\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00062\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\b\u0012\u0004\u0012\u00028\u0000`\u00062\u0006\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\b\u0012\u0004\u0012\u00028\u0000`\u00062\u0006\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0013\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00010 \"\u0004\b\u0001\u0010\u001d2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001e¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\u0014¢\u0006\u0004\b#\u0010\u0016R\u0014\u0010%\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010$R\u0014\u0010'\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010&R\u0014\u0010(\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010$R\u0011\u0010*\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b)\u0010\u0016R\u0011\u0010-\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u00060"}, d2 = {"Lkotlinx/coroutines/internal/a0;", "", ExifInterface.LONGITUDE_EAST, "", "index", "element", "Lkotlinx/coroutines/internal/Core;", "e", "(ILjava/lang/Object;)Lkotlinx/coroutines/internal/a0;", "oldHead", "newHead", "m", "(II)Lkotlinx/coroutines/internal/a0;", "", "j", "()J", t.b.f83859d, "c", "(J)Lkotlinx/coroutines/internal/a0;", "b", "", "d", "()Z", "a", "(Ljava/lang/Object;)I", "l", "()Ljava/lang/Object;", "k", "()Lkotlinx/coroutines/internal/a0;", "R", "Lkotlin/Function1;", "transform", "", ContextChain.TAG_INFRA, "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "g", "I", "capacity", "Z", "singleConsumer", "mask", "h", "isEmpty", "f", "()I", com.qennnsad.aknkaksd.data.repository.f.f47745b, "<init>", "(IZ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class a0<E> {

    /* renamed from: h  reason: collision with root package name */
    public static final int f86217h = 8;

    /* renamed from: i  reason: collision with root package name */
    public static final int f86218i = 30;

    /* renamed from: j  reason: collision with root package name */
    public static final int f86219j = 1073741823;

    /* renamed from: k  reason: collision with root package name */
    public static final int f86220k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final long f86221l = 1073741823;

    /* renamed from: m  reason: collision with root package name */
    public static final int f86222m = 30;

    /* renamed from: n  reason: collision with root package name */
    public static final long f86223n = 1152921503533105152L;

    /* renamed from: o  reason: collision with root package name */
    public static final int f86224o = 60;

    /* renamed from: p  reason: collision with root package name */
    public static final long f86225p = 1152921504606846976L;

    /* renamed from: q  reason: collision with root package name */
    public static final int f86226q = 61;

    /* renamed from: r  reason: collision with root package name */
    public static final long f86227r = 2305843009213693952L;

    /* renamed from: s  reason: collision with root package name */
    public static final int f86228s = 1024;

    /* renamed from: u  reason: collision with root package name */
    public static final int f86230u = 0;

    /* renamed from: v  reason: collision with root package name */
    public static final int f86231v = 1;

    /* renamed from: w  reason: collision with root package name */
    public static final int f86232w = 2;
    @m8.g
    private volatile /* synthetic */ Object _next = null;
    @m8.g
    private volatile /* synthetic */ long _state = 0;

    /* renamed from: a  reason: collision with root package name */
    private final int f86233a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f86234b;

    /* renamed from: c  reason: collision with root package name */
    private final int f86235c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private /* synthetic */ AtomicReferenceArray f86236d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public static final a f86214e = new a(null);
    @JvmField
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    public static final p0 f86229t = new p0("REMOVE_FROZEN");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86215f = AtomicReferenceFieldUpdater.newUpdater(a0.class, Object.class, "_next");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f86216g = AtomicLongFieldUpdater.newUpdater(a0.class, "_state");

    /* compiled from: LockFreeTaskQueue.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b(\u0010)J\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0004J\u0012\u0010\u0007\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0012\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0005JR\u0010\u0011\u001a\u00028\u0001\"\u0004\b\u0001\u0010\n*\u00020\u000226\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00028\u00010\u000bH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012J\n\u0010\u0013\u001a\u00020\u0005*\u00020\u0002R\u0014\u0010\u0014\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0015R\u0014\u0010\u001e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0015R\u0014\u0010 \u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u0015R\u0014\u0010!\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0015R\u0014\u0010\"\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0015R\u0014\u0010$\u001a\u00020#8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010&\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u001aR\u0014\u0010'\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u0015¨\u0006*"}, d2 = {"Lkotlinx/coroutines/internal/a0$a;", "", "", "other", "e", "", "newHead", "b", "newTail", "c", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", com.google.android.exoplayer2.text.ttml.d.f25724o, "tail", "block", "d", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "a", "ADD_CLOSED", "I", "ADD_FROZEN", "ADD_SUCCESS", "CAPACITY_BITS", "CLOSED_MASK", "J", "CLOSED_SHIFT", "FROZEN_MASK", "FROZEN_SHIFT", "HEAD_MASK", "HEAD_SHIFT", "INITIAL_CAPACITY", "MAX_CAPACITY_MASK", "MIN_ADD_SPIN_CAPACITY", "Lkotlinx/coroutines/internal/p0;", "REMOVE_FROZEN", "Lkotlinx/coroutines/internal/p0;", "TAIL_MASK", "TAIL_SHIFT", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(long j4) {
            return (j4 & a0.f86227r) != 0 ? 2 : 1;
        }

        public final long b(long j4, int i4) {
            return e(j4, a0.f86221l) | (i4 << 0);
        }

        public final long c(long j4, int i4) {
            return e(j4, a0.f86223n) | (i4 << 30);
        }

        public final <T> T d(long j4, @m8.g Function2<? super Integer, ? super Integer, ? extends T> function2) {
            return function2.invoke(Integer.valueOf((int) ((a0.f86221l & j4) >> 0)), Integer.valueOf((int) ((j4 & a0.f86223n) >> 30)));
        }

        public final long e(long j4, long j10) {
            return j4 & (~j10);
        }
    }

    /* compiled from: LockFreeTaskQueue.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/internal/a0$b;", "", "", "a", "I", "index", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b {
        @JvmField

        /* renamed from: a  reason: collision with root package name */
        public final int f86237a;

        public b(int i4) {
            this.f86237a = i4;
        }
    }

    public a0(int i4, boolean z9) {
        this.f86233a = i4;
        this.f86234b = z9;
        int i10 = i4 - 1;
        this.f86235c = i10;
        this.f86236d = new AtomicReferenceArray(i4);
        if (!(i10 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i4 & i10) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final a0<E> b(long j4) {
        a0<E> a0Var = new a0<>(this.f86233a * 2, this.f86234b);
        int i4 = (int) ((f86221l & j4) >> 0);
        int i10 = (int) ((f86223n & j4) >> 30);
        while (true) {
            int i11 = this.f86235c;
            if ((i4 & i11) != (i10 & i11)) {
                Object obj = this.f86236d.get(i11 & i4);
                if (obj == null) {
                    obj = new b(i4);
                }
                a0Var.f86236d.set(a0Var.f86235c & i4, obj);
                i4++;
            } else {
                a0Var._state = f86214e.e(j4, f86225p);
                return a0Var;
            }
        }
    }

    private final a0<E> c(long j4) {
        while (true) {
            a0<E> a0Var = (a0) this._next;
            if (a0Var != null) {
                return a0Var;
            }
            androidx.concurrent.futures.a.a(f86215f, this, null, b(j4));
        }
    }

    private final a0<E> e(int i4, E e4) {
        Object obj = this.f86236d.get(this.f86235c & i4);
        if ((obj instanceof b) && ((b) obj).f86237a == i4) {
            this.f86236d.set(i4 & this.f86235c, e4);
            return this;
        }
        return null;
    }

    private final long j() {
        long j4;
        long j10;
        do {
            j4 = this._state;
            if ((j4 & f86225p) != 0) {
                return j4;
            }
            j10 = j4 | f86225p;
        } while (!f86216g.compareAndSet(this, j4, j10));
        return j10;
    }

    private final a0<E> m(int i4, int i10) {
        long j4;
        a aVar;
        int i11;
        do {
            j4 = this._state;
            aVar = f86214e;
            i11 = (int) ((f86221l & j4) >> 0);
            if ((f86225p & j4) != 0) {
                return k();
            }
        } while (!f86216g.compareAndSet(this, j4, aVar.b(j4, i10)));
        this.f86236d.set(this.f86235c & i11, null);
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int a(@m8.g E r14) {
        /*
            r13 = this;
        L0:
            long r2 = r13._state
            r0 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r0 = r0 & r2
            r6 = 0
            int r4 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r4 == 0) goto L12
            kotlinx.coroutines.internal.a0$a r14 = kotlinx.coroutines.internal.a0.f86214e
            int r14 = r14.a(r2)
            return r14
        L12:
            kotlinx.coroutines.internal.a0$a r0 = kotlinx.coroutines.internal.a0.f86214e
            r4 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r4 = r4 & r2
            r8 = 0
            long r4 = r4 >> r8
            int r1 = (int) r4
            r4 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r4 = r4 & r2
            r9 = 30
            long r4 = r4 >> r9
            int r9 = (int) r4
            int r10 = r13.f86235c
            int r4 = r9 + 2
            r4 = r4 & r10
            r5 = r1 & r10
            r11 = 1
            if (r4 != r5) goto L30
            return r11
        L30:
            boolean r4 = r13.f86234b
            r5 = 1073741823(0x3fffffff, float:1.9999999)
            if (r4 != 0) goto L4f
            java.util.concurrent.atomic.AtomicReferenceArray r4 = r13.f86236d
            r12 = r9 & r10
            java.lang.Object r4 = r4.get(r12)
            if (r4 == 0) goto L4f
            int r0 = r13.f86233a
            r2 = 1024(0x400, float:1.435E-42)
            if (r0 < r2) goto L4e
            int r9 = r9 - r1
            r1 = r9 & r5
            int r0 = r0 >> 1
            if (r1 <= r0) goto L0
        L4e:
            return r11
        L4f:
            int r1 = r9 + 1
            r1 = r1 & r5
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = kotlinx.coroutines.internal.a0.f86216g
            long r11 = r0.c(r2, r1)
            r0 = r4
            r1 = r13
            r4 = r11
            boolean r0 = r0.compareAndSet(r1, r2, r4)
            if (r0 == 0) goto L0
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r13.f86236d
            r1 = r9 & r10
            r0.set(r1, r14)
            r0 = r13
        L69:
            long r1 = r0._state
            r3 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r1 = r1 & r3
            int r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r3 != 0) goto L73
            goto L7d
        L73:
            kotlinx.coroutines.internal.a0 r0 = r0.k()
            kotlinx.coroutines.internal.a0 r0 = r0.e(r9, r14)
            if (r0 != 0) goto L69
        L7d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.a0.a(java.lang.Object):int");
    }

    public final boolean d() {
        long j4;
        do {
            j4 = this._state;
            if ((j4 & f86227r) != 0) {
                return true;
            }
            if ((f86225p & j4) != 0) {
                return false;
            }
        } while (!f86216g.compareAndSet(this, j4, j4 | f86227r));
        return true;
    }

    public final int f() {
        long j4 = this._state;
        return 1073741823 & (((int) ((j4 & f86223n) >> 30)) - ((int) ((f86221l & j4) >> 0)));
    }

    public final boolean g() {
        return (this._state & f86227r) != 0;
    }

    public final boolean h() {
        long j4 = this._state;
        return ((int) ((f86221l & j4) >> 0)) == ((int) ((j4 & f86223n) >> 30));
    }

    @m8.g
    public final <R> List<R> i(@m8.g Function1<? super E, ? extends R> function1) {
        ArrayList arrayList = new ArrayList(this.f86233a);
        long j4 = this._state;
        int i4 = (int) ((f86221l & j4) >> 0);
        int i10 = (int) ((j4 & f86223n) >> 30);
        while (true) {
            int i11 = this.f86235c;
            if ((i4 & i11) == (i10 & i11)) {
                return arrayList;
            }
            Object obj = (Object) this.f86236d.get(i11 & i4);
            if (obj != 0 && !(obj instanceof b)) {
                arrayList.add(function1.invoke(obj));
            }
            i4++;
        }
    }

    @m8.g
    public final a0<E> k() {
        return c(j());
    }

    @m8.h
    public final Object l() {
        while (true) {
            long j4 = this._state;
            if ((f86225p & j4) != 0) {
                return f86229t;
            }
            a aVar = f86214e;
            int i4 = (int) ((f86221l & j4) >> 0);
            int i10 = (int) ((f86223n & j4) >> 30);
            int i11 = this.f86235c;
            if ((i10 & i11) == (i4 & i11)) {
                return null;
            }
            Object obj = this.f86236d.get(i11 & i4);
            if (obj == null) {
                if (this.f86234b) {
                    return null;
                }
            } else if (obj instanceof b) {
                return null;
            } else {
                int i12 = (i4 + 1) & f86219j;
                if (f86216g.compareAndSet(this, j4, aVar.b(j4, i12))) {
                    this.f86236d.set(this.f86235c & i4, null);
                    return obj;
                } else if (this.f86234b) {
                    a0<E> a0Var = this;
                    do {
                        a0Var = a0Var.m(i4, i12);
                    } while (a0Var != null);
                    return obj;
                }
            }
        }
    }
}
