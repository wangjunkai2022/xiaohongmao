package kotlinx.coroutines;

import com.ksyun.media.player.KSYMediaMeta;
import kotlin.Metadata;

/* compiled from: EventLoop.common.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0006\u0010\u0007\u001a\u00020\u0002J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0012\u0010\f\u001a\u00020\u000b2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tJ\u0010\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000fJ\b\u0010\u0012\u001a\u00020\u000bH\u0016R\u0016\u0010\u0015\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\"\u0010\u001c\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020\u00048TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0011\u0010#\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u001eR\u0011\u0010%\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b$\u0010\u001eR\u0011\u0010'\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b&\u0010\u001e¨\u0006*"}, d2 = {"Lkotlinx/coroutines/p1;", "Lkotlinx/coroutines/n0;", "", "unconfined", "", "r0", "z0", "A0", "B0", "Lkotlinx/coroutines/f1;", "task", "", "s0", "u0", "p0", "", "parallelism", "limitedParallelism", "shutdown", "a", "J", "useCount", "b", "Z", "shared", "Lkotlinx/coroutines/internal/a;", "c", "Lkotlinx/coroutines/internal/a;", "unconfinedQueue", "w0", "()Z", "isEmpty", "t0", "()J", "nextTime", "isActive", "x0", "isUnconfinedLoopActive", "y0", "isUnconfinedQueueEmpty", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class p1 extends n0 {

    /* renamed from: a  reason: collision with root package name */
    private long f86351a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f86352b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private kotlinx.coroutines.internal.a<f1<?>> f86353c;

    public static /* synthetic */ void q0(p1 p1Var, boolean z9, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        p1Var.p0(z9);
    }

    private final long r0(boolean z9) {
        if (z9) {
            return KSYMediaMeta.AV_CH_WIDE_RIGHT;
        }
        return 1L;
    }

    public static /* synthetic */ void v0(p1 p1Var, boolean z9, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        p1Var.u0(z9);
    }

    public final boolean A0() {
        f1<?> e4;
        kotlinx.coroutines.internal.a<f1<?>> aVar = this.f86353c;
        if (aVar == null || (e4 = aVar.e()) == null) {
            return false;
        }
        e4.run();
        return true;
    }

    public boolean B0() {
        return false;
    }

    public final boolean a() {
        return this.f86351a > 0;
    }

    @Override // kotlinx.coroutines.n0
    @m8.g
    public final n0 limitedParallelism(int i4) {
        kotlinx.coroutines.internal.s.a(i4);
        return this;
    }

    public final void p0(boolean z9) {
        long r02 = this.f86351a - r0(z9);
        this.f86351a = r02;
        if (r02 <= 0 && this.f86352b) {
            shutdown();
        }
    }

    public final void s0(@m8.g f1<?> f1Var) {
        kotlinx.coroutines.internal.a<f1<?>> aVar = this.f86353c;
        if (aVar == null) {
            aVar = new kotlinx.coroutines.internal.a<>();
            this.f86353c = aVar;
        }
        aVar.a(f1Var);
    }

    public void shutdown() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long t0() {
        kotlinx.coroutines.internal.a<f1<?>> aVar = this.f86353c;
        return (aVar == null || aVar.d()) ? Long.MAX_VALUE : 0L;
    }

    public final void u0(boolean z9) {
        this.f86351a += r0(z9);
        if (z9) {
            return;
        }
        this.f86352b = true;
    }

    protected boolean w0() {
        return y0();
    }

    public final boolean x0() {
        return this.f86351a >= r0(true);
    }

    public final boolean y0() {
        kotlinx.coroutines.internal.a<f1<?>> aVar = this.f86353c;
        if (aVar == null) {
            return true;
        }
        return aVar.d();
    }

    public long z0() {
        return !A0() ? Long.MAX_VALUE : 0L;
    }
}
