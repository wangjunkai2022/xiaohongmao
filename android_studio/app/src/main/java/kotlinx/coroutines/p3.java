package kotlinx.coroutines;

import kotlin.Metadata;

/* compiled from: EventLoop.common.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0007J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\t\u0010\nR(\u0010\u000f\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000bj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0002`\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\b\u001a\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u0004¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/p3;", "", "Lkotlinx/coroutines/p1;", "a", "()Lkotlinx/coroutines/p1;", "", "c", "()V", "eventLoop", "d", "(Lkotlinx/coroutines/p1;)V", "Ljava/lang/ThreadLocal;", "Lkotlinx/coroutines/internal/CommonThreadLocal;", "b", "Ljava/lang/ThreadLocal;", "ref", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class p3 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final p3 f86355a = new p3();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<p1> f86356b = new ThreadLocal<>();

    private p3() {
    }

    @m8.h
    public final p1 a() {
        return f86356b.get();
    }

    @m8.g
    public final p1 b() {
        ThreadLocal<p1> threadLocal = f86356b;
        p1 p1Var = threadLocal.get();
        if (p1Var == null) {
            p1 a10 = s1.a();
            threadLocal.set(a10);
            return a10;
        }
        return p1Var;
    }

    public final void c() {
        f86356b.set(null);
    }

    public final void d(@m8.g p1 p1Var) {
        f86356b.set(p1Var);
    }
}
