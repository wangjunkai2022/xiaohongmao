package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;

/* compiled from: CancellableContinuation.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/m1;", "Lkotlinx/coroutines/o;", "", "cause", "", "a", "", "toString", "Lkotlinx/coroutines/l1;", "Lkotlinx/coroutines/l1;", "handle", "<init>", "(Lkotlinx/coroutines/l1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class m1 extends o {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final l1 f86344a;

    public m1(@m8.g l1 l1Var) {
        this.f86344a = l1Var;
    }

    @Override // kotlinx.coroutines.p
    public void a(@m8.h Throwable th) {
        this.f86344a.dispose();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        a(th);
        return Unit.INSTANCE;
    }

    @m8.g
    public String toString() {
        return "DisposeOnCancel[" + this.f86344a + ']';
    }
}
