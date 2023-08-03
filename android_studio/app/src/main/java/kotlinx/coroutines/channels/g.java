package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: ArrayBroadcastChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001OB\u000f\u0012\u0006\u0010+\u001a\u00020(¢\u0006\u0004\bN\u0010DJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ4\u0010\u000f\u001a\u00020\t2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\f2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\fH\u0082\u0010¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u001a\u0010\bJ\u0019\u0010\u001b\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0017¢\u0006\u0004\b\u001b\u0010\bJ\u001f\u0010\u001e\u001a\u00020\t2\u000e\u0010\u0005\u001a\n\u0018\u00010\u001cj\u0004\u0018\u0001`\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00028\u0000H\u0014¢\u0006\u0004\b\"\u0010#J#\u0010&\u001a\u00020!2\u0006\u0010 \u001a\u00028\u00002\n\u0010%\u001a\u0006\u0012\u0002\b\u00030$H\u0014¢\u0006\u0004\b&\u0010'R\u0017\u0010+\u001a\u00020(8\u0006¢\u0006\f\n\u0004\b\u001e\u0010&\u001a\u0004\b)\u0010*R\u0018\u00100\u001a\u00060,j\u0002`-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u001c\u00104\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R6\u00109\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f05j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f`68\u0002X\u0082\u0004¢\u0006\f\n\u0004\b\u0018\u00107\u0012\u0004\b8\u0010\u000bR$\u0010>\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u00118B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b;\u0010\u0013\"\u0004\b<\u0010=R$\u0010A\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u00118B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b?\u0010\u0013\"\u0004\b@\u0010=R$\u0010E\u001a\u00020(2\u0006\u0010:\u001a\u00020(8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bB\u0010*\"\u0004\bC\u0010DR\u0014\u0010H\u001a\u00020\u00068TX\u0094\u0004¢\u0006\u0006\u001a\u0004\bF\u0010GR\u0014\u0010I\u001a\u00020\u00068TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0001\u0010GR\u0014\u0010M\u001a\u00020J8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\bK\u0010L¨\u0006P"}, d2 = {"Lkotlinx/coroutines/channels/g;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/c;", "Lkotlinx/coroutines/channels/i;", "", "cause", "", "R", "(Ljava/lang/Throwable;)Z", "", ExifInterface.LATITUDE_SOUTH, "()V", "Lkotlinx/coroutines/channels/g$a;", "addSub", "removeSub", "d0", "(Lkotlinx/coroutines/channels/g$a;Lkotlinx/coroutines/channels/g$a;)V", "", ExifInterface.GPS_DIRECTION_TRUE, "()J", "index", "U", "(J)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/f0;", "g", "()Lkotlinx/coroutines/channels/f0;", "close", "b", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "d", "(Ljava/util/concurrent/CancellationException;)V", "element", "", "H", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/f;", "select", "I", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "()I", "capacity", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "e", "Ljava/util/concurrent/locks/ReentrantLock;", "bufferLock", "", "f", "[Ljava/lang/Object;", "buffer", "", "Lkotlinx/coroutines/internal/SubscribersList;", "Ljava/util/List;", "getSubscribers$annotations", "subscribers", "value", ExifInterface.LONGITUDE_WEST, "a0", "(J)V", com.google.android.exoplayer2.text.ttml.d.f25724o, "Z", "c0", "tail", "X", "b0", "(I)V", com.qennnsad.aknkaksd.data.repository.f.f47745b, "D", "()Z", "isBufferAlwaysFull", "isBufferFull", "", "n", "()Ljava/lang/String;", "bufferDebugString", "<init>", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class g<E> extends c<E> implements i<E> {
    @m8.g
    private volatile /* synthetic */ long _head;
    @m8.g
    private volatile /* synthetic */ int _size;
    @m8.g
    private volatile /* synthetic */ long _tail;

    /* renamed from: d  reason: collision with root package name */
    private final int f84856d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final ReentrantLock f84857e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Object[] f84858f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final List<a<E>> f84859g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ArrayBroadcastChannel.kt */
    @Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0010\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B\u0015\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u0014¢\u0006\u0004\b+\u0010,J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u0006J\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\u000f\u0010\tJ\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001c\u001a\u00060\u0018j\u0002`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR$\u0010#\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0014\u0010%\u001a\u00020\u00048TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\u0006R\u0014\u0010'\u001a\u00020\u00048TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u0006R\u0014\u0010)\u001a\u00020\u00048TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b(\u0010\u0006R\u0014\u0010*\u001a\u00020\u00048TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0001\u0010\u0006¨\u0006-"}, d2 = {"Lkotlinx/coroutines/channels/g$a;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/a;", "Lkotlinx/coroutines/channels/f0;", "", "o0", "()Z", "", "p0", "()Ljava/lang/Object;", "", "cause", "close", "(Ljava/lang/Throwable;)Z", "m0", "g0", "Lkotlinx/coroutines/selects/f;", "select", "h0", "(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/g;", "d", "Lkotlinx/coroutines/channels/g;", "broadcastChannel", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "e", "Ljava/util/concurrent/locks/ReentrantLock;", "subLock", "", "value", "n0", "()J", "q0", "(J)V", "subHead", "Z", "isBufferAlwaysEmpty", "a0", "isBufferEmpty", "D", "isBufferAlwaysFull", "isBufferFull", "<init>", "(Lkotlinx/coroutines/channels/g;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a<E> extends kotlinx.coroutines.channels.a<E> implements f0<E> {
        @m8.g
        private volatile /* synthetic */ long _subHead;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final g<E> f84860d;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private final ReentrantLock f84861e;

        public a(@m8.g g<E> gVar) {
            super(null);
            this.f84860d = gVar;
            this.f84861e = new ReentrantLock();
            this._subHead = 0L;
        }

        private final boolean o0() {
            if (p() != null) {
                return false;
            }
            return (a0() && this.f84860d.p() == null) ? false : true;
        }

        private final Object p0() {
            long n02 = n0();
            v<?> p9 = this.f84860d.p();
            if (n02 >= this.f84860d.Z()) {
                if (p9 == null) {
                    p9 = p();
                }
                return p9 == null ? b.f84829f : p9;
            }
            Object U = this.f84860d.U(n02);
            v<?> p10 = p();
            return p10 != null ? p10 : U;
        }

        @Override // kotlinx.coroutines.channels.c
        protected boolean D() {
            throw new IllegalStateException("Should not be used".toString());
        }

        @Override // kotlinx.coroutines.channels.c
        protected boolean E() {
            throw new IllegalStateException("Should not be used".toString());
        }

        @Override // kotlinx.coroutines.channels.a
        protected boolean Z() {
            return false;
        }

        @Override // kotlinx.coroutines.channels.a
        protected boolean a0() {
            return n0() >= this.f84860d.Z();
        }

        @Override // kotlinx.coroutines.channels.c, kotlinx.coroutines.channels.j0
        public boolean close(@m8.h Throwable th) {
            boolean close = super.close(th);
            if (close) {
                g.e0(this.f84860d, null, this, 1, null);
                ReentrantLock reentrantLock = this.f84861e;
                reentrantLock.lock();
                try {
                    q0(this.f84860d.Z());
                    Unit unit = Unit.INSTANCE;
                } finally {
                    reentrantLock.unlock();
                }
            }
            return close;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x003f  */
        @Override // kotlinx.coroutines.channels.a
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        protected java.lang.Object g0() {
            /*
                r8 = this;
                java.util.concurrent.locks.ReentrantLock r0 = r8.f84861e
                r0.lock()
                java.lang.Object r1 = r8.p0()     // Catch: java.lang.Throwable -> L46
                boolean r2 = r1 instanceof kotlinx.coroutines.channels.v     // Catch: java.lang.Throwable -> L46
                r3 = 1
                if (r2 == 0) goto Lf
                goto L13
            Lf:
                kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.channels.b.f84829f     // Catch: java.lang.Throwable -> L46
                if (r1 != r2) goto L15
            L13:
                r2 = 0
                goto L20
            L15:
                long r4 = r8.n0()     // Catch: java.lang.Throwable -> L46
                r6 = 1
                long r4 = r4 + r6
                r8.q0(r4)     // Catch: java.lang.Throwable -> L46
                r2 = 1
            L20:
                r0.unlock()
                boolean r0 = r1 instanceof kotlinx.coroutines.channels.v
                r4 = 0
                if (r0 == 0) goto L2c
                r0 = r1
                kotlinx.coroutines.channels.v r0 = (kotlinx.coroutines.channels.v) r0
                goto L2d
            L2c:
                r0 = r4
            L2d:
                if (r0 != 0) goto L30
                goto L35
            L30:
                java.lang.Throwable r0 = r0.f85128d
                r8.close(r0)
            L35:
                boolean r0 = r8.m0()
                if (r0 == 0) goto L3c
                goto L3d
            L3c:
                r3 = r2
            L3d:
                if (r3 == 0) goto L45
                kotlinx.coroutines.channels.g<E> r0 = r8.f84860d
                r2 = 3
                kotlinx.coroutines.channels.g.e0(r0, r4, r4, r2, r4)
            L45:
                return r1
            L46:
                r1 = move-exception
                r0.unlock()
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.g.a.g0():java.lang.Object");
        }

        @Override // kotlinx.coroutines.channels.a
        @m8.h
        protected Object h0(@m8.g kotlinx.coroutines.selects.f<?> fVar) {
            ReentrantLock reentrantLock = this.f84861e;
            reentrantLock.lock();
            try {
                Object p02 = p0();
                boolean z9 = false;
                if (!(p02 instanceof v) && p02 != b.f84829f) {
                    if (!fVar.t()) {
                        p02 = kotlinx.coroutines.selects.g.d();
                    } else {
                        q0(n0() + 1);
                        z9 = true;
                    }
                }
                reentrantLock.unlock();
                v vVar = p02 instanceof v ? (v) p02 : null;
                if (vVar != null) {
                    close(vVar.f85128d);
                }
                if (m0() ? true : z9) {
                    g.e0(this.f84860d, null, null, 3, null);
                }
                return p02;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
            r2 = (kotlinx.coroutines.channels.v) r1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean m0() {
            /*
                r8 = this;
                r0 = 0
            L1:
                boolean r1 = r8.o0()
                r2 = 0
                if (r1 == 0) goto L5a
                java.util.concurrent.locks.ReentrantLock r1 = r8.f84861e
                boolean r1 = r1.tryLock()
                if (r1 != 0) goto L11
                goto L5a
            L11:
                java.lang.Object r1 = r8.p0()     // Catch: java.lang.Throwable -> L53
                kotlinx.coroutines.internal.p0 r3 = kotlinx.coroutines.channels.b.f84829f     // Catch: java.lang.Throwable -> L53
                if (r1 != r3) goto L1f
            L19:
                java.util.concurrent.locks.ReentrantLock r1 = r8.f84861e
                r1.unlock()
                goto L1
            L1f:
                boolean r3 = r1 instanceof kotlinx.coroutines.channels.v     // Catch: java.lang.Throwable -> L53
                if (r3 == 0) goto L2c
                r2 = r1
                kotlinx.coroutines.channels.v r2 = (kotlinx.coroutines.channels.v) r2     // Catch: java.lang.Throwable -> L53
            L26:
                java.util.concurrent.locks.ReentrantLock r1 = r8.f84861e
                r1.unlock()
                goto L5a
            L2c:
                kotlinx.coroutines.channels.g0 r3 = r8.N()     // Catch: java.lang.Throwable -> L53
                if (r3 != 0) goto L33
                goto L26
            L33:
                boolean r4 = r3 instanceof kotlinx.coroutines.channels.v     // Catch: java.lang.Throwable -> L53
                if (r4 == 0) goto L38
                goto L26
            L38:
                kotlinx.coroutines.internal.p0 r2 = r3.x(r1, r2)     // Catch: java.lang.Throwable -> L53
                if (r2 != 0) goto L3f
                goto L19
            L3f:
                long r4 = r8.n0()     // Catch: java.lang.Throwable -> L53
                r6 = 1
                long r4 = r4 + r6
                r8.q0(r4)     // Catch: java.lang.Throwable -> L53
                r0 = 1
                java.util.concurrent.locks.ReentrantLock r2 = r8.f84861e
                r2.unlock()
                r3.o(r1)
                goto L1
            L53:
                r0 = move-exception
                java.util.concurrent.locks.ReentrantLock r1 = r8.f84861e
                r1.unlock()
                throw r0
            L5a:
                if (r2 != 0) goto L5d
                goto L62
            L5d:
                java.lang.Throwable r1 = r2.f85128d
                r8.close(r1)
            L62:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.g.a.m0():boolean");
        }

        public final long n0() {
            return this._subHead;
        }

        public final void q0(long j4) {
            this._subHead = j4;
        }
    }

    public g(int i4) {
        super(null);
        this.f84856d = i4;
        if (i4 >= 1) {
            this.f84857e = new ReentrantLock();
            this.f84858f = new Object[i4];
            this._head = 0L;
            this._tail = 0L;
            this._size = 0;
            this.f84859g = kotlinx.coroutines.internal.f.d();
            return;
        }
        throw new IllegalArgumentException(("ArrayBroadcastChannel capacity must be at least 1, but " + V() + " was specified").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // kotlinx.coroutines.channels.i
    /* renamed from: R */
    public final boolean b(Throwable th) {
        boolean close = close(th);
        for (a<E> aVar : this.f84859g) {
            aVar.b(th);
        }
        return close;
    }

    private final void S() {
        boolean z9 = false;
        boolean z10 = false;
        for (a<E> aVar : this.f84859g) {
            if (aVar.m0()) {
                z9 = true;
            }
            z10 = true;
        }
        if (z9 || !z10) {
            e0(this, null, null, 3, null);
        }
    }

    private final long T() {
        long j4 = Long.MAX_VALUE;
        for (a<E> aVar : this.f84859g) {
            j4 = RangesKt___RangesKt.coerceAtMost(j4, aVar.n0());
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final E U(long j4) {
        return (E) this.f84858f[(int) (j4 % this.f84856d)];
    }

    private final long W() {
        return this._head;
    }

    private final int X() {
        return this._size;
    }

    private static /* synthetic */ void Y() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long Z() {
        return this._tail;
    }

    private final void a0(long j4) {
        this._head = j4;
    }

    private final void b0(int i4) {
        this._size = i4;
    }

    private final void c0(long j4) {
        this._tail = j4;
    }

    private final void d0(a<E> aVar, a<E> aVar2) {
        long coerceAtMost;
        i0 O;
        while (true) {
            ReentrantLock reentrantLock = this.f84857e;
            reentrantLock.lock();
            if (aVar != null) {
                try {
                    aVar.q0(Z());
                    boolean isEmpty = this.f84859g.isEmpty();
                    this.f84859g.add(aVar);
                    if (!isEmpty) {
                        return;
                    }
                } finally {
                    reentrantLock.unlock();
                }
            }
            if (aVar2 != null) {
                this.f84859g.remove(aVar2);
                if (W() != aVar2.n0()) {
                    return;
                }
            }
            long T = T();
            long Z = Z();
            long W = W();
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(T, Z);
            if (coerceAtMost <= W) {
                return;
            }
            int X = X();
            while (W < coerceAtMost) {
                this.f84858f[(int) (W % V())] = null;
                boolean z9 = X >= V();
                W++;
                a0(W);
                X--;
                b0(X);
                if (z9) {
                    do {
                        O = O();
                        if (O != null && !(O instanceof v)) {
                        }
                    } while (O.j0(null) == null);
                    this.f84858f[(int) (Z % V())] = O.h0();
                    b0(X + 1);
                    c0(Z + 1);
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    O.g0();
                    S();
                    aVar = null;
                    aVar2 = null;
                }
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void e0(g gVar, a aVar, a aVar2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            aVar2 = null;
        }
        gVar.d0(aVar, aVar2);
    }

    @Override // kotlinx.coroutines.channels.c
    protected boolean D() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.c
    protected boolean E() {
        return X() >= this.f84856d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.c
    @m8.g
    public Object H(E e4) {
        ReentrantLock reentrantLock = this.f84857e;
        reentrantLock.lock();
        try {
            v<?> q9 = q();
            if (q9 == null) {
                int X = X();
                if (X >= V()) {
                    return b.f84828e;
                }
                long Z = Z();
                this.f84858f[(int) (Z % V())] = e4;
                b0(X + 1);
                c0(Z + 1);
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                S();
                return b.f84827d;
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
        ReentrantLock reentrantLock = this.f84857e;
        reentrantLock.lock();
        try {
            v<?> q9 = q();
            if (q9 == null) {
                int X = X();
                if (X >= V()) {
                    return b.f84828e;
                }
                if (!fVar.t()) {
                    return kotlinx.coroutines.selects.g.d();
                }
                long Z = Z();
                this.f84858f[(int) (Z % V())] = e4;
                b0(X + 1);
                c0(Z + 1);
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                S();
                return b.f84827d;
            }
            return q9;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int V() {
        return this.f84856d;
    }

    @Override // kotlinx.coroutines.channels.c, kotlinx.coroutines.channels.j0
    public boolean close(@m8.h Throwable th) {
        if (super.close(th)) {
            S();
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.channels.i
    public void d(@m8.h CancellationException cancellationException) {
        b(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.i
    @m8.g
    public f0<E> g() {
        a aVar = new a(this);
        e0(this, aVar, null, 2, null);
        return aVar;
    }

    @Override // kotlinx.coroutines.channels.c
    @m8.g
    protected String n() {
        return "(buffer:capacity=" + this.f84858f.length + ",size=" + X() + ')';
    }
}
