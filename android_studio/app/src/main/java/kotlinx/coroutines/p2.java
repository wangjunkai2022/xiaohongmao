package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/p2;", "Lkotlinx/coroutines/g0;", "Lkotlinx/coroutines/l1;", "Lkotlinx/coroutines/c2;", "", "dispose", "", "toString", "Lkotlinx/coroutines/q2;", "d", "Lkotlinx/coroutines/q2;", "h0", "()Lkotlinx/coroutines/q2;", "i0", "(Lkotlinx/coroutines/q2;)V", "job", "", "a", "()Z", "isActive", "Lkotlinx/coroutines/v2;", "f", "()Lkotlinx/coroutines/v2;", "list", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class p2 extends g0 implements l1, c2 {

    /* renamed from: d  reason: collision with root package name */
    public q2 f86354d;

    @Override // kotlinx.coroutines.c2
    public boolean a() {
        return true;
    }

    @Override // kotlinx.coroutines.l1
    public void dispose() {
        h0().X0(this);
    }

    @Override // kotlinx.coroutines.c2
    @m8.h
    public v2 f() {
        return null;
    }

    @m8.g
    public final q2 h0() {
        q2 q2Var = this.f86354d;
        if (q2Var != null) {
            return q2Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("job");
        return null;
    }

    public final void i0(@m8.g q2 q2Var) {
        this.f86354d = q2Var;
    }

    @Override // kotlinx.coroutines.internal.x
    @m8.g
    public String toString() {
        return v0.a(this) + '@' + v0.b(this) + "[job@" + v0.b(h0()) + ']';
    }
}
