package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlinx.coroutines.scheduling.CoroutineScheduler;

/* compiled from: CoroutineScheduler.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0001\u001a\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0001¨\u0006\u0005"}, d2 = {"Ljava/lang/Thread;", "thread", "", "a", "b", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class a {
    @JvmName(name = "isSchedulerWorker")
    public static final boolean a(@m8.g Thread thread) {
        return thread instanceof CoroutineScheduler.c;
    }

    @JvmName(name = "mayNotBlock")
    public static final boolean b(@m8.g Thread thread) {
        return (thread instanceof CoroutineScheduler.c) && ((CoroutineScheduler.c) thread).f86659b == CoroutineScheduler.WorkerState.CPU_ACQUIRED;
    }
}
