package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.c;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.p0;

/* compiled from: ArrayChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0006\u0010&\u001a\u00020\u0003\u0012\u0006\u0010*\u001a\u00020'\u0012 \u0010F\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t\u0018\u00010Dj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`E¢\u0006\u0004\bG\u0010HJ\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00028\u00002\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010 \u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0014¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u001fH\u0014¢\u0006\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\u0013R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010/\u001a\u00060+j\u0002`,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u001e\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00105\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010\u0013R\u0014\u00108\u001a\u00020\u001f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0014\u0010:\u001a\u00020\u001f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b9\u00107R\u0014\u0010<\u001a\u00020\u001f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b;\u00107R\u0014\u0010=\u001a\u00020\u001f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0001\u00107R\u0014\u0010>\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b>\u00107R\u0014\u0010?\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u00107R\u0014\u0010C\u001a\u00020@8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\bA\u0010B¨\u0006I"}, d2 = {"Lkotlinx/coroutines/channels/h;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/a;", "", "currentSize", "Lkotlinx/coroutines/internal/p0;", "o0", "(I)Lkotlinx/coroutines/internal/p0;", "element", "", "m0", "(ILjava/lang/Object;)V", "n0", "(I)V", "", "H", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/f;", "select", "I", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/i0;", "send", "m", "(Lkotlinx/coroutines/channels/i0;)Ljava/lang/Object;", "g0", "()Ljava/lang/Object;", "h0", "(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/e0;", "receive", "", ExifInterface.LONGITUDE_WEST, "(Lkotlinx/coroutines/channels/e0;)Z", "wasClosed", "c0", "(Z)V", "d", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "e", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "f", "Ljava/util/concurrent/locks/ReentrantLock;", org.aspectj.lang.c.f91028k, "", "g", "[Ljava/lang/Object;", "buffer", "h", com.google.android.exoplayer2.text.ttml.d.f25724o, "Z", "()Z", "isBufferAlwaysEmpty", "a0", "isBufferEmpty", "D", "isBufferAlwaysFull", "isBufferFull", "isEmpty", "isClosedForReceive", "", "n", "()Ljava/lang/String;", "bufferDebugString", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class h<E> extends kotlinx.coroutines.channels.a<E> {

    /* renamed from: d  reason: collision with root package name */
    private final int f84862d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final BufferOverflow f84863e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final ReentrantLock f84864f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private Object[] f84865g;

    /* renamed from: h  reason: collision with root package name */
    private int f84866h;
    @m8.g
    private volatile /* synthetic */ int size;

    /* compiled from: ArrayChannel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public h(int i4, @m8.g BufferOverflow bufferOverflow, @m8.h Function1<? super E, Unit> function1) {
        super(function1);
        this.f84862d = i4;
        this.f84863e = bufferOverflow;
        if (i4 >= 1) {
            this.f84864f = new ReentrantLock();
            Object[] objArr = new Object[Math.min(i4, 8)];
            ArraysKt___ArraysJvmKt.fill$default(objArr, b.f84826c, 0, 0, 6, (Object) null);
            this.f84865g = objArr;
            this.size = 0;
            return;
        }
        throw new IllegalArgumentException(("ArrayChannel capacity must be at least 1, but " + i4 + " was specified").toString());
    }

    private final void m0(int i4, E e4) {
        if (i4 < this.f84862d) {
            n0(i4);
            Object[] objArr = this.f84865g;
            objArr[(this.f84866h + i4) % objArr.length] = e4;
            return;
        }
        Object[] objArr2 = this.f84865g;
        int i10 = this.f84866h;
        objArr2[i10 % objArr2.length] = null;
        objArr2[(i4 + i10) % objArr2.length] = e4;
        this.f84866h = (i10 + 1) % objArr2.length;
    }

    private final void n0(int i4) {
        Object[] objArr = this.f84865g;
        if (i4 >= objArr.length) {
            int min = Math.min(objArr.length * 2, this.f84862d);
            Object[] objArr2 = new Object[min];
            for (int i10 = 0; i10 < i4; i10++) {
                Object[] objArr3 = this.f84865g;
                objArr2[i10] = objArr3[(this.f84866h + i10) % objArr3.length];
            }
            ArraysKt___ArraysJvmKt.fill((p0[]) objArr2, b.f84826c, i4, min);
            this.f84865g = objArr2;
            this.f84866h = 0;
        }
    }

    private final p0 o0(int i4) {
        if (i4 < this.f84862d) {
            this.size = i4 + 1;
            return null;
        }
        int i10 = a.$EnumSwitchMapping$0[this.f84863e.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }
            return b.f84827d;
        }
        return b.f84828e;
    }

    @Override // kotlinx.coroutines.channels.c
    protected final boolean D() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.c
    protected final boolean E() {
        return this.size == this.f84862d && this.f84863e == BufferOverflow.SUSPEND;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.c
    @m8.g
    public Object H(E e4) {
        g0<E> N;
        ReentrantLock reentrantLock = this.f84864f;
        reentrantLock.lock();
        try {
            int i4 = this.size;
            v<?> q9 = q();
            if (q9 == null) {
                p0 o02 = o0(i4);
                if (o02 == null) {
                    if (i4 == 0) {
                        do {
                            N = N();
                            if (N != null) {
                                if (N instanceof v) {
                                    this.size = i4;
                                    return N;
                                }
                            }
                        } while (N.x(e4, null) == null);
                        this.size = i4;
                        Unit unit = Unit.INSTANCE;
                        reentrantLock.unlock();
                        N.o(e4);
                        return N.d();
                    }
                    m0(i4, e4);
                    return b.f84827d;
                }
                return o02;
            }
            return q9;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.c
    @m8.g
    public Object I(E e4, @m8.g kotlinx.coroutines.selects.f<?> fVar) {
        ReentrantLock reentrantLock = this.f84864f;
        reentrantLock.lock();
        try {
            int i4 = this.size;
            v<?> q9 = q();
            if (q9 == null) {
                p0 o02 = o0(i4);
                if (o02 == null) {
                    if (i4 == 0) {
                        while (true) {
                            c.d<E> l10 = l(e4);
                            Object w9 = fVar.w(l10);
                            if (w9 == null) {
                                this.size = i4;
                                g0<? super E> o9 = l10.o();
                                Unit unit = Unit.INSTANCE;
                                reentrantLock.unlock();
                                Intrinsics.checkNotNull(o9);
                                g0<? super E> g0Var = o9;
                                g0Var.o(e4);
                                return g0Var.d();
                            } else if (w9 == b.f84828e) {
                                break;
                            } else if (w9 != kotlinx.coroutines.internal.c.f86247b) {
                                if (w9 != kotlinx.coroutines.selects.g.d() && !(w9 instanceof v)) {
                                    throw new IllegalStateException(Intrinsics.stringPlus("performAtomicTrySelect(describeTryOffer) returned ", w9).toString());
                                }
                                this.size = i4;
                                return w9;
                            }
                        }
                    }
                    if (!fVar.t()) {
                        this.size = i4;
                        return kotlinx.coroutines.selects.g.d();
                    }
                    m0(i4, e4);
                    return b.f84827d;
                }
                return o02;
            }
            return q9;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.a
    public boolean W(@m8.g e0<? super E> e0Var) {
        ReentrantLock reentrantLock = this.f84864f;
        reentrantLock.lock();
        try {
            return super.W(e0Var);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.a
    protected final boolean Z() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.a
    protected final boolean a0() {
        return this.size == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.a
    public void c0(boolean z9) {
        Function1<E, Unit> function1 = this.f84839a;
        ReentrantLock reentrantLock = this.f84864f;
        reentrantLock.lock();
        try {
            int i4 = this.size;
            UndeliveredElementException undeliveredElementException = null;
            int i10 = 0;
            while (i10 < i4) {
                i10++;
                Object obj = this.f84865g[this.f84866h];
                if (function1 != null && obj != b.f84826c) {
                    undeliveredElementException = kotlinx.coroutines.internal.g0.c(function1, obj, undeliveredElementException);
                }
                Object[] objArr = this.f84865g;
                int i11 = this.f84866h;
                objArr[i11] = b.f84826c;
                this.f84866h = (i11 + 1) % objArr.length;
            }
            this.size = 0;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            super.c0(z9);
            if (undeliveredElementException != null) {
                throw undeliveredElementException;
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.a, kotlinx.coroutines.channels.f0
    public boolean e() {
        ReentrantLock reentrantLock = this.f84864f;
        reentrantLock.lock();
        try {
            return super.e();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.a
    @m8.h
    protected Object g0() {
        ReentrantLock reentrantLock = this.f84864f;
        reentrantLock.lock();
        try {
            int i4 = this.size;
            if (i4 == 0) {
                Object q9 = q();
                if (q9 == null) {
                    q9 = b.f84829f;
                }
                return q9;
            }
            Object[] objArr = this.f84865g;
            int i10 = this.f84866h;
            Object obj = objArr[i10];
            i0 i0Var = null;
            objArr[i10] = null;
            this.size = i4 - 1;
            Object obj2 = b.f84829f;
            boolean z9 = false;
            if (i4 == this.f84862d) {
                i0 i0Var2 = null;
                while (true) {
                    i0 O = O();
                    if (O == null) {
                        i0Var = i0Var2;
                        break;
                    } else if (O.j0(null) != null) {
                        obj2 = O.h0();
                        i0Var = O;
                        z9 = true;
                        break;
                    } else {
                        O.k0();
                        i0Var2 = O;
                    }
                }
            }
            if (obj2 != b.f84829f && !(obj2 instanceof v)) {
                this.size = i4;
                Object[] objArr2 = this.f84865g;
                objArr2[(this.f84866h + i4) % objArr2.length] = obj2;
            }
            this.f84866h = (this.f84866h + 1) % this.f84865g.length;
            Unit unit = Unit.INSTANCE;
            if (z9) {
                Intrinsics.checkNotNull(i0Var);
                i0Var.g0();
            }
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0091 A[Catch: all -> 0x00ba, TRY_LEAVE, TryCatch #0 {all -> 0x00ba, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x000f, B:10:0x0015, B:12:0x0029, B:14:0x0033, B:33:0x0077, B:35:0x007b, B:37:0x007f, B:43:0x00a1, B:38:0x008b, B:40:0x0091, B:16:0x0043, B:19:0x0048, B:22:0x004d, B:24:0x0053, B:27:0x005f, B:30:0x0066, B:31:0x0075), top: B:51:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b1  */
    @Override // kotlinx.coroutines.channels.a
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected java.lang.Object h0(@m8.g kotlinx.coroutines.selects.f<?> r9) {
        /*
            r8 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r8.f84864f
            r0.lock()
            int r1 = r8.size     // Catch: java.lang.Throwable -> Lba
            if (r1 != 0) goto L15
            kotlinx.coroutines.channels.v r9 = r8.q()     // Catch: java.lang.Throwable -> Lba
            if (r9 != 0) goto L11
            kotlinx.coroutines.internal.p0 r9 = kotlinx.coroutines.channels.b.f84829f     // Catch: java.lang.Throwable -> Lba
        L11:
            r0.unlock()
            return r9
        L15:
            java.lang.Object[] r2 = r8.f84865g     // Catch: java.lang.Throwable -> Lba
            int r3 = r8.f84866h     // Catch: java.lang.Throwable -> Lba
            r4 = r2[r3]     // Catch: java.lang.Throwable -> Lba
            r5 = 0
            r2[r3] = r5     // Catch: java.lang.Throwable -> Lba
            int r2 = r1 + (-1)
            r8.size = r2     // Catch: java.lang.Throwable -> Lba
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.channels.b.f84829f     // Catch: java.lang.Throwable -> Lba
            int r3 = r8.f84862d     // Catch: java.lang.Throwable -> Lba
            r6 = 1
            if (r1 != r3) goto L76
        L29:
            kotlinx.coroutines.channels.a$g r3 = r8.U()     // Catch: java.lang.Throwable -> Lba
            java.lang.Object r7 = r9.w(r3)     // Catch: java.lang.Throwable -> Lba
            if (r7 != 0) goto L43
            java.lang.Object r5 = r3.o()     // Catch: java.lang.Throwable -> Lba
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)     // Catch: java.lang.Throwable -> Lba
            r2 = r5
            kotlinx.coroutines.channels.i0 r2 = (kotlinx.coroutines.channels.i0) r2     // Catch: java.lang.Throwable -> Lba
            java.lang.Object r2 = r2.h0()     // Catch: java.lang.Throwable -> Lba
        L41:
            r3 = 1
            goto L77
        L43:
            kotlinx.coroutines.internal.p0 r3 = kotlinx.coroutines.channels.b.f84829f     // Catch: java.lang.Throwable -> Lba
            if (r7 != r3) goto L48
            goto L76
        L48:
            java.lang.Object r3 = kotlinx.coroutines.internal.c.f86247b     // Catch: java.lang.Throwable -> Lba
            if (r7 != r3) goto L4d
            goto L29
        L4d:
            java.lang.Object r2 = kotlinx.coroutines.selects.g.d()     // Catch: java.lang.Throwable -> Lba
            if (r7 != r2) goto L5f
            r8.size = r1     // Catch: java.lang.Throwable -> Lba
            java.lang.Object[] r9 = r8.f84865g     // Catch: java.lang.Throwable -> Lba
            int r1 = r8.f84866h     // Catch: java.lang.Throwable -> Lba
            r9[r1] = r4     // Catch: java.lang.Throwable -> Lba
            r0.unlock()
            return r7
        L5f:
            boolean r2 = r7 instanceof kotlinx.coroutines.channels.v     // Catch: java.lang.Throwable -> Lba
            if (r2 == 0) goto L66
            r2 = r7
            r5 = r2
            goto L41
        L66:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lba
            java.lang.String r1 = "performAtomicTrySelect(describeTryOffer) returned "
            java.lang.String r1 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r7)     // Catch: java.lang.Throwable -> Lba
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lba
            r9.<init>(r1)     // Catch: java.lang.Throwable -> Lba
            throw r9     // Catch: java.lang.Throwable -> Lba
        L76:
            r3 = 0
        L77:
            kotlinx.coroutines.internal.p0 r7 = kotlinx.coroutines.channels.b.f84829f     // Catch: java.lang.Throwable -> Lba
            if (r2 == r7) goto L8b
            boolean r7 = r2 instanceof kotlinx.coroutines.channels.v     // Catch: java.lang.Throwable -> Lba
            if (r7 != 0) goto L8b
            r8.size = r1     // Catch: java.lang.Throwable -> Lba
            java.lang.Object[] r9 = r8.f84865g     // Catch: java.lang.Throwable -> Lba
            int r7 = r8.f84866h     // Catch: java.lang.Throwable -> Lba
            int r7 = r7 + r1
            int r1 = r9.length     // Catch: java.lang.Throwable -> Lba
            int r7 = r7 % r1
            r9[r7] = r2     // Catch: java.lang.Throwable -> Lba
            goto La1
        L8b:
            boolean r9 = r9.t()     // Catch: java.lang.Throwable -> Lba
            if (r9 != 0) goto La1
            r8.size = r1     // Catch: java.lang.Throwable -> Lba
            java.lang.Object[] r9 = r8.f84865g     // Catch: java.lang.Throwable -> Lba
            int r1 = r8.f84866h     // Catch: java.lang.Throwable -> Lba
            r9[r1] = r4     // Catch: java.lang.Throwable -> Lba
            java.lang.Object r9 = kotlinx.coroutines.selects.g.d()     // Catch: java.lang.Throwable -> Lba
            r0.unlock()
            return r9
        La1:
            int r9 = r8.f84866h     // Catch: java.lang.Throwable -> Lba
            int r9 = r9 + r6
            java.lang.Object[] r1 = r8.f84865g     // Catch: java.lang.Throwable -> Lba
            int r1 = r1.length     // Catch: java.lang.Throwable -> Lba
            int r9 = r9 % r1
            r8.f84866h = r9     // Catch: java.lang.Throwable -> Lba
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lba
            r0.unlock()
            if (r3 == 0) goto Lb9
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            kotlinx.coroutines.channels.i0 r5 = (kotlinx.coroutines.channels.i0) r5
            r5.g0()
        Lb9:
            return r4
        Lba:
            r9 = move-exception
            r0.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.h.h0(kotlinx.coroutines.selects.f):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.a, kotlinx.coroutines.channels.f0
    public boolean isEmpty() {
        ReentrantLock reentrantLock = this.f84864f;
        reentrantLock.lock();
        try {
            return b0();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.c
    @m8.h
    public Object m(@m8.g i0 i0Var) {
        ReentrantLock reentrantLock = this.f84864f;
        reentrantLock.lock();
        try {
            return super.m(i0Var);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.c
    @m8.g
    protected String n() {
        return "(buffer:capacity=" + this.f84862d + ",size=" + this.size + ')';
    }
}
