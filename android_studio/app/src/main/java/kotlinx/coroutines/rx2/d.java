package kotlinx.coroutines.rx2;

import kotlin.Metadata;
import kotlinx.coroutines.j2;

/* compiled from: RxCancellable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/rx2/d;", "Ln7/f;", "", "cancel", "Lkotlinx/coroutines/j2;", "a", "Lkotlinx/coroutines/j2;", "job", "<init>", "(Lkotlinx/coroutines/j2;)V", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class d implements n7.f {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final j2 f86540a;

    public d(@m8.g j2 j2Var) {
        this.f86540a = j2Var;
    }

    @Override // n7.f
    public void cancel() {
        j2.a.b(this.f86540a, null, 1, null);
    }
}
