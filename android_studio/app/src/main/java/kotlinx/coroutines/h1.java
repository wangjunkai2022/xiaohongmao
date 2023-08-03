package kotlinx.coroutines;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.JvmField;

/* compiled from: Executors.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016R\u0014\u0010\f\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/h1;", "Ljava/util/concurrent/Executor;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "execute", "", "toString", "Lkotlinx/coroutines/n0;", "a", "Lkotlinx/coroutines/n0;", "dispatcher", "<init>", "(Lkotlinx/coroutines/n0;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class h1 implements Executor {
    @JvmField
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public final n0 f86190a;

    public h1(@m8.g n0 n0Var) {
        this.f86190a = n0Var;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@m8.g Runnable runnable) {
        this.f86190a.dispatch(EmptyCoroutineContext.INSTANCE, runnable);
    }

    @m8.g
    public String toString() {
        return this.f86190a.toString();
    }
}
