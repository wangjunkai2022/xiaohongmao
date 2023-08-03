package kotlinx.coroutines;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;

/* compiled from: AbstractTimeSource.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0004\u001a\u00020\u0002H&J\u0018\u0010\b\u001a\u00060\u0005j\u0002`\u00062\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H&J\b\u0010\n\u001a\u00020\tH&J\b\u0010\u000b\u001a\u00020\tH&J\b\u0010\f\u001a\u00020\tH&J\b\u0010\r\u001a\u00020\tH&J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0002H&J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H&¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/b;", "", "", "a", "b", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", ContextChain.TAG_INFRA, "", "e", "f", "d", "h", "blocker", "nanos", "c", "Ljava/lang/Thread;", "thread", "g", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class b {
    public abstract long a();

    public abstract long b();

    public abstract void c(@m8.g Object obj, long j4);

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g(@m8.g Thread thread);

    public abstract void h();

    @m8.g
    public abstract Runnable i(@m8.g Runnable runnable);
}
