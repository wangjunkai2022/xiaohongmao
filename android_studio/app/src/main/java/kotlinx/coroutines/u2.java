package kotlinx.coroutines;

import kotlin.Metadata;

/* compiled from: MainCoroutineDispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0005R\u0014\u0010\n\u001a\u00020\u00008&X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/u2;", "Lkotlinx/coroutines/n0;", "", "toString", "", "parallelism", "limitedParallelism", "q0", "p0", "()Lkotlinx/coroutines/u2;", "immediate", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class u2 extends n0 {
    @Override // kotlinx.coroutines.n0
    @m8.g
    public n0 limitedParallelism(int i4) {
        kotlinx.coroutines.internal.s.a(i4);
        return this;
    }

    @m8.g
    public abstract u2 p0();

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    @e2
    public final String q0() {
        u2 u2Var;
        u2 e4 = i1.e();
        if (this == e4) {
            return "Dispatchers.Main";
        }
        try {
            u2Var = e4.p0();
        } catch (UnsupportedOperationException unused) {
            u2Var = null;
        }
        if (this == u2Var) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override // kotlinx.coroutines.n0
    @m8.g
    public String toString() {
        String q02 = q0();
        if (q02 == null) {
            return v0.a(this) + '@' + v0.b(this);
        }
        return q02;
    }
}
