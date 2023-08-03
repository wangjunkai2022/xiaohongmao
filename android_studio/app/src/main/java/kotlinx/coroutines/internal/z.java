package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* compiled from: LockFreeTaskQueue.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\n\u0010\u000bJ-\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f\"\u0004\b\u0001\u0010\f2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0019\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/internal/z;", "", ExifInterface.LONGITUDE_EAST, "", "b", "()V", "element", "", "a", "(Ljava/lang/Object;)Z", "g", "()Ljava/lang/Object;", "R", "Lkotlin/Function1;", "transform", "", "f", "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "d", "()Z", "e", "isEmpty", "", "c", "()I", com.qennnsad.aknkaksd.data.repository.f.f47745b, "singleConsumer", "<init>", "(Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class z<E> {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86329a = AtomicReferenceFieldUpdater.newUpdater(z.class, Object.class, "_cur");
    @m8.g
    private volatile /* synthetic */ Object _cur;

    public z(boolean z9) {
        this._cur = new a0(8, z9);
    }

    public final boolean a(@m8.g E e4) {
        while (true) {
            a0 a0Var = (a0) this._cur;
            int a10 = a0Var.a(e4);
            if (a10 == 0) {
                return true;
            }
            if (a10 == 1) {
                androidx.concurrent.futures.a.a(f86329a, this, a0Var, a0Var.k());
            } else if (a10 == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            a0 a0Var = (a0) this._cur;
            if (a0Var.d()) {
                return;
            }
            androidx.concurrent.futures.a.a(f86329a, this, a0Var, a0Var.k());
        }
    }

    public final int c() {
        return ((a0) this._cur).f();
    }

    public final boolean d() {
        return ((a0) this._cur).g();
    }

    public final boolean e() {
        return ((a0) this._cur).h();
    }

    @m8.g
    public final <R> List<R> f(@m8.g Function1<? super E, ? extends R> function1) {
        return ((a0) this._cur).i(function1);
    }

    @m8.h
    public final E g() {
        while (true) {
            a0 a0Var = (a0) this._cur;
            E e4 = (E) a0Var.l();
            if (e4 != a0.f86229t) {
                return e4;
            }
            androidx.concurrent.futures.a.a(f86329a, this, a0Var, a0Var.k());
        }
    }
}
