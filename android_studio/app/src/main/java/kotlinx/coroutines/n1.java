package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;

/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/n1;", "Lkotlinx/coroutines/p2;", "", "cause", "", "g0", "Lkotlinx/coroutines/l1;", "e", "Lkotlinx/coroutines/l1;", "handle", "<init>", "(Lkotlinx/coroutines/l1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class n1 extends p2 {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final l1 f86347e;

    public n1(@m8.g l1 l1Var) {
        this.f86347e = l1Var;
    }

    @Override // kotlinx.coroutines.g0
    public void g0(@m8.h Throwable th) {
        this.f86347e.dispose();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        g0(th);
        return Unit.INSTANCE;
    }
}
