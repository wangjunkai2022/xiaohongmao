package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.v0;

/* compiled from: Tasks.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B#\u0012\n\u0010\n\u001a\u00060\u0006j\u0002`\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0018\u0010\n\u001a\u00060\u0006j\u0002`\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/scheduling/m;", "Lkotlinx/coroutines/scheduling/j;", "", "run", "", "toString", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "c", "Ljava/lang/Runnable;", "block", "", "submissionTime", "Lkotlinx/coroutines/scheduling/k;", "taskContext", "<init>", "(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/k;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class m extends j {
    @JvmField
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f86688c;

    public m(@m8.g Runnable runnable, long j4, @m8.g k kVar) {
        super(j4, kVar);
        this.f86688c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f86688c.run();
        } finally {
            this.f86686b.b0();
        }
    }

    @m8.g
    public String toString() {
        return "Task[" + v0.a(this.f86688c) + '@' + v0.b(this.f86688c) + ", " + this.f86685a + ", " + this.f86686b + ']';
    }
}
