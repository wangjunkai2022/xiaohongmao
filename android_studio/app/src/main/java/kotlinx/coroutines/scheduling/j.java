package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlin.jvm.JvmField;

/* compiled from: Tasks.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\b \u0018\u00002\u00060\u0001j\u0002`\u0002B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010B\t\b\u0016¢\u0006\u0004\b\u000f\u0010\u0011R\u0016\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0016\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0012\u0010\u000e\u001a\u00020\u000b8Æ\u0002¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/scheduling/j;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "a", "J", "submissionTime", "Lkotlinx/coroutines/scheduling/k;", "b", "Lkotlinx/coroutines/scheduling/k;", "taskContext", "", "c", "()I", "mode", "<init>", "(JLkotlinx/coroutines/scheduling/k;)V", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class j implements Runnable {
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    public long f86685a;
    @JvmField
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public k f86686b;

    public j(long j4, @m8.g k kVar) {
        this.f86685a = j4;
        this.f86686b = kVar;
    }

    public final int c() {
        return this.f86686b.d0();
    }

    public j() {
        this(0L, n.f86697i);
    }
}
