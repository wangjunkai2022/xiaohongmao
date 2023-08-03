package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ThreadContext.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0081\b\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0013\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003HÂ\u0003J\u0017\u0010\u0006\u001a\u00020\u00002\f\b\u0002\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0003HÆ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003R\u0018\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u000f¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/internal/w0;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/internal/v0;", "Ljava/lang/ThreadLocal;", "a", "threadLocal", "b", "", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/ThreadLocal;", "<init>", "(Ljava/lang/ThreadLocal;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@PublishedApi
/* loaded from: classes4.dex */
public final class w0 implements CoroutineContext.Key<v0<?>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final ThreadLocal<?> f86310a;

    public w0(@m8.g ThreadLocal<?> threadLocal) {
        this.f86310a = threadLocal;
    }

    private final ThreadLocal<?> a() {
        return this.f86310a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ w0 c(w0 w0Var, ThreadLocal threadLocal, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            threadLocal = w0Var.f86310a;
        }
        return w0Var.b(threadLocal);
    }

    @m8.g
    public final w0 b(@m8.g ThreadLocal<?> threadLocal) {
        return new w0(threadLocal);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof w0) && Intrinsics.areEqual(this.f86310a, ((w0) obj).f86310a);
    }

    public int hashCode() {
        return this.f86310a.hashCode();
    }

    @m8.g
    public String toString() {
        return "ThreadLocalKey(threadLocal=" + this.f86310a + ')';
    }
}
