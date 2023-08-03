package kotlinx.coroutines.internal;

import com.facebook.common.callercontext.ContextChain;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.h;

/* compiled from: ConcurrentLinkedList.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0018\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002B\u0011\u0012\b\u0010\u001f\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\"\u0010#J \u0010\u0006\u001a\u0004\u0018\u00018\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0086\b¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028\u0000¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0011\u0010\u000eR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u0004\u0018\u00018\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00028\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0016R\u0013\u0010\u001b\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0016R\u0011\u0010\u001d\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0010R\u0013\u0010\u001f\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0016R\u0014\u0010!\u001a\u00020\t8&X¦\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u0010¨\u0006$"}, d2 = {"Lkotlinx/coroutines/internal/h;", "N", "", "Lkotlin/Function0;", "", "onClosedAction", "k", "(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/h;", "value", "", "m", "(Lkotlinx/coroutines/internal/h;)Z", "", "b", "()V", "j", "()Z", "l", "e", "()Ljava/lang/Object;", "nextOrClosed", "c", "()Lkotlinx/coroutines/internal/h;", "leftmostAliveNode", "h", "rightmostAliveNode", "d", "next", ContextChain.TAG_INFRA, "isTail", "f", "prev", "g", "removed", "<init>", "(Lkotlinx/coroutines/internal/h;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class h<N extends h<N>> {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86265a = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "_next");

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86266b = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "_prev");
    @m8.g
    private volatile /* synthetic */ Object _next = null;
    @m8.g
    private volatile /* synthetic */ Object _prev;

    public h(@m8.h N n9) {
        this._prev = n9;
    }

    private final N c() {
        N f10 = f();
        while (f10 != null && f10.g()) {
            f10 = (N) f10._prev;
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object e() {
        return this._next;
    }

    private final N h() {
        N d4 = d();
        Intrinsics.checkNotNull(d4);
        while (d4.g()) {
            d4 = (N) d4.d();
            Intrinsics.checkNotNull(d4);
        }
        return d4;
    }

    public final void b() {
        f86266b.lazySet(this, null);
    }

    @m8.h
    public final N d() {
        Object e4 = e();
        if (e4 == g.a()) {
            return null;
        }
        return (N) e4;
    }

    @m8.h
    public final N f() {
        return (N) this._prev;
    }

    public abstract boolean g();

    public final boolean i() {
        return d() == null;
    }

    public final boolean j() {
        return androidx.concurrent.futures.a.a(f86265a, this, null, g.a());
    }

    @m8.h
    public final N k(@m8.g Function0 function0) {
        Object e4 = e();
        if (e4 != g.a()) {
            return (N) e4;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    public final void l() {
        while (true) {
            N c10 = c();
            N h4 = h();
            h4._prev = c10;
            if (c10 != null) {
                c10._next = h4;
            }
            if (!h4.g() && (c10 == null || !c10.g())) {
                return;
            }
        }
    }

    public final boolean m(@m8.g N n9) {
        return androidx.concurrent.futures.a.a(f86265a, this, null, n9);
    }
}
