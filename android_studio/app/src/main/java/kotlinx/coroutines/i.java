package kotlinx.coroutines;

import kotlin.Metadata;

/* compiled from: EventLoop.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\u0007\u001a\u00020\u00028\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/i;", "Lkotlinx/coroutines/q1;", "Ljava/lang/Thread;", "f", "Ljava/lang/Thread;", "C0", "()Ljava/lang/Thread;", "thread", "<init>", "(Ljava/lang/Thread;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class i extends q1 {
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Thread f86195f;

    public i(@m8.g Thread thread) {
        this.f86195f = thread;
    }

    @Override // kotlinx.coroutines.r1
    @m8.g
    protected Thread C0() {
        return this.f86195f;
    }
}
