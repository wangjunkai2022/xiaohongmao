package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;

/* compiled from: Executors.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\t¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0004\u001a\u00020\u0003H\u0016R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/e3;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "run", "Lkotlinx/coroutines/n0;", "a", "Lkotlinx/coroutines/n0;", "dispatcher", "Lkotlinx/coroutines/q;", "b", "Lkotlinx/coroutines/q;", "continuation", "<init>", "(Lkotlinx/coroutines/n0;Lkotlinx/coroutines/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class e3 implements Runnable {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final n0 f85248a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final q<Unit> f85249b;

    /* JADX WARN: Multi-variable type inference failed */
    public e3(@m8.g n0 n0Var, @m8.g q<? super Unit> qVar) {
        this.f85248a = n0Var;
        this.f85249b = qVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f85249b.B(this.f85248a, Unit.INSTANCE);
    }
}
