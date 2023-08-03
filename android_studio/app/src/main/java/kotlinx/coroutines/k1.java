package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.Metadata;

/* compiled from: Executors.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0018\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/k1;", "Lkotlinx/coroutines/l1;", "", "dispose", "", "toString", "Ljava/util/concurrent/Future;", "a", "Ljava/util/concurrent/Future;", "future", "<init>", "(Ljava/util/concurrent/Future;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class k1 implements l1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Future<?> f86333a;

    public k1(@m8.g Future<?> future) {
        this.f86333a = future;
    }

    @Override // kotlinx.coroutines.l1
    public void dispose() {
        this.f86333a.cancel(false);
    }

    @m8.g
    public String toString() {
        return "DisposableFutureHandle[" + this.f86333a + ']';
    }
}
