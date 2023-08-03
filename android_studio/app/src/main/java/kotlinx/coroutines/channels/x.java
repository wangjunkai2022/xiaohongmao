package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.c;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.p0;

/* compiled from: ConflatedChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012 \u0010-\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0011\u0018\u00010+j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`,¢\u0006\u0004\b.\u0010/J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0017\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u00002\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\n\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0014J\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0014J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0016\u0010\u0015\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013H\u0014R\u0018\u0010\u001a\u001a\u00060\u0016j\u0002`\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u000f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020\u000f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u001fR\u0014\u0010$\u001a\u00020\u000f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u001fR\u0014\u0010%\u001a\u00020\u000f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0001\u0010\u001fR\u0014\u0010&\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u001fR\u0014\u0010*\u001a\u00020'8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u00060"}, d2 = {"Lkotlinx/coroutines/channels/x;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/a;", "", "element", "Lkotlinx/coroutines/internal/UndeliveredElementException;", "m0", "H", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/f;", "select", "I", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "g0", "h0", "", "wasClosed", "", "c0", "Lkotlinx/coroutines/channels/e0;", "receive", ExifInterface.LONGITUDE_WEST, "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "d", "Ljava/util/concurrent/locks/ReentrantLock;", org.aspectj.lang.c.f91028k, "e", "Ljava/lang/Object;", "value", "Z", "()Z", "isBufferAlwaysEmpty", "a0", "isBufferEmpty", "D", "isBufferAlwaysFull", "isBufferFull", "isEmpty", "", "n", "()Ljava/lang/String;", "bufferDebugString", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class x<E> extends a<E> {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final ReentrantLock f85141d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Object f85142e;

    public x(@m8.h Function1<? super E, Unit> function1) {
        super(function1);
        this.f85141d = new ReentrantLock();
        this.f85142e = b.f84826c;
    }

    private final UndeliveredElementException m0(Object obj) {
        Function1<E, Unit> function1;
        Object obj2 = this.f85142e;
        UndeliveredElementException undeliveredElementException = null;
        if (obj2 != b.f84826c && (function1 = this.f84839a) != null) {
            undeliveredElementException = kotlinx.coroutines.internal.g0.d(function1, obj2, null, 2, null);
        }
        this.f85142e = obj;
        return undeliveredElementException;
    }

    @Override // kotlinx.coroutines.channels.c
    protected final boolean D() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.c
    protected final boolean E() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.c
    @m8.g
    public Object H(E e4) {
        g0<E> N;
        ReentrantLock reentrantLock = this.f85141d;
        reentrantLock.lock();
        try {
            v<?> q9 = q();
            if (q9 == null) {
                if (this.f85142e == b.f84826c) {
                    do {
                        N = N();
                        if (N != null) {
                            if (N instanceof v) {
                                return N;
                            }
                        }
                    } while (N.x(e4, null) == null);
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    N.o(e4);
                    return N.d();
                }
                UndeliveredElementException m02 = m0(e4);
                if (m02 == null) {
                    return b.f84827d;
                }
                throw m02;
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
        ReentrantLock reentrantLock = this.f85141d;
        reentrantLock.lock();
        try {
            v<?> q9 = q();
            if (q9 == null) {
                if (this.f85142e == b.f84826c) {
                    while (true) {
                        c.d<E> l10 = l(e4);
                        Object w9 = fVar.w(l10);
                        if (w9 == null) {
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
                            return w9;
                        }
                    }
                }
                if (!fVar.t()) {
                    return kotlinx.coroutines.selects.g.d();
                }
                UndeliveredElementException m02 = m0(e4);
                if (m02 == null) {
                    return b.f84827d;
                }
                throw m02;
            }
            return q9;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.a
    public boolean W(@m8.g e0<? super E> e0Var) {
        ReentrantLock reentrantLock = this.f85141d;
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
        return this.f85142e == b.f84826c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.a
    public void c0(boolean z9) {
        ReentrantLock reentrantLock = this.f85141d;
        reentrantLock.lock();
        try {
            UndeliveredElementException m02 = m0(b.f84826c);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            super.c0(z9);
            if (m02 != null) {
                throw m02;
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.a
    @m8.h
    protected Object g0() {
        ReentrantLock reentrantLock = this.f85141d;
        reentrantLock.lock();
        try {
            Object obj = this.f85142e;
            p0 p0Var = b.f84826c;
            if (obj != p0Var) {
                this.f85142e = p0Var;
                Unit unit = Unit.INSTANCE;
                return obj;
            }
            Object q9 = q();
            if (q9 == null) {
                q9 = b.f84829f;
            }
            return q9;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.a
    @m8.h
    protected Object h0(@m8.g kotlinx.coroutines.selects.f<?> fVar) {
        ReentrantLock reentrantLock = this.f85141d;
        reentrantLock.lock();
        try {
            Object obj = this.f85142e;
            p0 p0Var = b.f84826c;
            if (obj == p0Var) {
                Object q9 = q();
                if (q9 == null) {
                    q9 = b.f84829f;
                }
                return q9;
            } else if (!fVar.t()) {
                return kotlinx.coroutines.selects.g.d();
            } else {
                Object obj2 = this.f85142e;
                this.f85142e = p0Var;
                Unit unit = Unit.INSTANCE;
                return obj2;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.a, kotlinx.coroutines.channels.f0
    public boolean isEmpty() {
        ReentrantLock reentrantLock = this.f85141d;
        reentrantLock.lock();
        try {
            return b0();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.c
    @m8.g
    protected String n() {
        return "(value=" + this.f85142e + ')';
    }
}
