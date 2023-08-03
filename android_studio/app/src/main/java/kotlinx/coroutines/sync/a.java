package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.Unit;
import kotlinx.coroutines.o;

/* compiled from: Semaphore.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/sync/a;", "Lkotlinx/coroutines/o;", "", "cause", "", "a", "", "toString", "Lkotlinx/coroutines/sync/i;", "Lkotlinx/coroutines/sync/i;", "segment", "", "b", "I", "index", "<init>", "(Lkotlinx/coroutines/sync/i;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class a extends o {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final i f86745a;

    /* renamed from: b  reason: collision with root package name */
    private final int f86746b;

    public a(@m8.g i iVar, int i4) {
        this.f86745a = iVar;
        this.f86746b = i4;
    }

    @Override // kotlinx.coroutines.p
    public void a(@m8.h Throwable th) {
        this.f86745a.s(this.f86746b);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        a(th);
        return Unit.INSTANCE;
    }

    @m8.g
    public String toString() {
        return "CancelSemaphoreAcquisitionHandler[" + this.f86745a + ", " + this.f86746b + ']';
    }
}
