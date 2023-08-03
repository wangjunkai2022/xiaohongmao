package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;

/* compiled from: FlowExceptions.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0004\u001a\u00020\u0003H\u0016R\u001b\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/flow/internal/AbortFlowException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "", "fillInStackTrace", "Lkotlinx/coroutines/flow/j;", "a", "Lkotlinx/coroutines/flow/j;", "getOwner", "()Lkotlinx/coroutines/flow/j;", "owner", "<init>", "(Lkotlinx/coroutines/flow/j;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class AbortFlowException extends CancellationException {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final kotlinx.coroutines.flow.j<?> f85896a;

    public AbortFlowException(@m8.g kotlinx.coroutines.flow.j<?> jVar) {
        super("Flow was aborted, no more elements needed");
        this.f85896a = jVar;
    }

    @Override // java.lang.Throwable
    @m8.g
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @m8.g
    public final kotlinx.coroutines.flow.j<?> getOwner() {
        return this.f85896a;
    }
}
