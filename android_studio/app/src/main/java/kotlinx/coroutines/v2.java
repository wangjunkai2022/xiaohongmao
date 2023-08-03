package kotlinx.coroutines;

import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\b\u0010\u0006\u001a\u00020\u0003H\u0016R\u0014\u0010\n\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/v2;", "Lkotlinx/coroutines/internal/v;", "Lkotlinx/coroutines/c2;", "", t.b.f83859d, "k0", "toString", "", "a", "()Z", "isActive", "f", "()Lkotlinx/coroutines/v2;", "list", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class v2 extends kotlinx.coroutines.internal.v implements c2 {
    @Override // kotlinx.coroutines.c2
    public boolean a() {
        return true;
    }

    @Override // kotlinx.coroutines.c2
    @m8.g
    public v2 f() {
        return this;
    }

    @m8.g
    public final String k0(@m8.g String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("List{");
        sb.append(str);
        sb.append("}[");
        boolean z9 = true;
        for (kotlinx.coroutines.internal.x xVar = (kotlinx.coroutines.internal.x) R(); !Intrinsics.areEqual(xVar, this); xVar = xVar.S()) {
            if (xVar instanceof p2) {
                p2 p2Var = (p2) xVar;
                if (z9) {
                    z9 = false;
                } else {
                    sb.append(", ");
                }
                sb.append(p2Var);
            }
        }
        sb.append("]");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlinx.coroutines.internal.x
    @m8.g
    public String toString() {
        return super.toString();
    }
}
