package kotlinx.coroutines;

import io.sentry.h4;
import kotlin.Metadata;
import kotlin.Unit;

/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0004\u001a\u00020\u0003H\u0003J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u001a\u0010\r\u001a\u00020\u00038\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00038PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\f¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/l2;", "Lkotlinx/coroutines/q2;", "Lkotlinx/coroutines/c0;", "", "k1", "complete", "", h4.b.f83287e, "h", "b", "Z", "u0", "()Z", "handlesException", "v0", "onCancelComplete", "Lkotlinx/coroutines/j2;", "parent", "<init>", "(Lkotlinx/coroutines/j2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class l2 extends q2 implements c0 {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f86337b;

    public l2(@m8.h j2 j2Var) {
        super(true);
        B0(j2Var);
        this.f86337b = k1();
    }

    private final boolean k1() {
        w x02 = x0();
        x xVar = x02 instanceof x ? (x) x02 : null;
        q2 h02 = xVar == null ? null : xVar.h0();
        if (h02 == null) {
            return false;
        }
        while (!h02.u0()) {
            w x03 = h02.x0();
            x xVar2 = x03 instanceof x ? (x) x03 : null;
            if (xVar2 == null) {
                h02 = null;
                continue;
            } else {
                h02 = xVar2.h0();
                continue;
            }
            if (h02 == null) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlinx.coroutines.c0
    public boolean complete() {
        return J0(Unit.INSTANCE);
    }

    @Override // kotlinx.coroutines.c0
    public boolean h(@m8.g Throwable th) {
        return J0(new e0(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.q2
    public boolean u0() {
        return this.f86337b;
    }

    @Override // kotlinx.coroutines.q2
    public boolean v0() {
        return true;
    }
}
