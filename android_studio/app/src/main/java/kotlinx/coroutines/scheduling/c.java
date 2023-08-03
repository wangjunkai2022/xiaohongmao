package kotlinx.coroutines.scheduling;

import kotlin.Metadata;

/* compiled from: Dispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/scheduling/c;", "Lkotlinx/coroutines/scheduling/h;", "", "v0", "()V", "close", "", "toString", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class c extends h {
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public static final c f86667g = new c();

    private c() {
        super(n.f86691c, n.f86692d, n.f86693e, n.f86689a);
    }

    @Override // kotlinx.coroutines.scheduling.h, kotlinx.coroutines.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.n0
    @m8.g
    public String toString() {
        return "Dispatchers.Default";
    }

    public final void v0() {
        super.close();
    }
}
