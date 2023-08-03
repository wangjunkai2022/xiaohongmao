package kotlinx.coroutines;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.jvm.JvmName;

/* compiled from: Executors.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\n\u0010\b\u001a\u00020\u0004*\u00020\u0005*\u0010\b\u0007\u0010\n\"\u00020\u00012\u00020\u0001B\u0002\b\t¨\u0006\u000b"}, d2 = {"Ljava/util/concurrent/ExecutorService;", "Lkotlinx/coroutines/v1;", "d", "(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/v1;", "Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/n0;", "c", "(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/n0;", "b", "Lkotlinx/coroutines/y1;", "CloseableCoroutineDispatcher", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class x1 {
    @y1
    public static /* synthetic */ void a() {
    }

    @m8.g
    public static final Executor b(@m8.g n0 n0Var) {
        v1 v1Var = n0Var instanceof v1 ? (v1) n0Var : null;
        Executor p02 = v1Var != null ? v1Var.p0() : null;
        return p02 == null ? new h1(n0Var) : p02;
    }

    @m8.g
    @JvmName(name = TypedValues.Transition.S_FROM)
    public static final n0 c(@m8.g Executor executor) {
        h1 h1Var = executor instanceof h1 ? (h1) executor : null;
        n0 n0Var = h1Var != null ? h1Var.f86190a : null;
        return n0Var == null ? new w1(executor) : n0Var;
    }

    @m8.g
    @JvmName(name = TypedValues.Transition.S_FROM)
    public static final v1 d(@m8.g ExecutorService executorService) {
        return new w1(executorService);
    }
}
