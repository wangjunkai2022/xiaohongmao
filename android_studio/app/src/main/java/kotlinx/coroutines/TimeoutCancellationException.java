package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;

/* compiled from: Timeout.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00000\u0003B\u001b\b\u0000\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\u000bB\u0011\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\fJ\n\u0010\u0004\u001a\u0004\u0018\u00010\u0000H\u0016R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/TimeoutCancellationException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "Lkotlinx/coroutines/l0;", "createCopy", "Lkotlinx/coroutines/j2;", "coroutine", "Lkotlinx/coroutines/j2;", "", "message", "<init>", "(Ljava/lang/String;Lkotlinx/coroutines/j2;)V", "(Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class TimeoutCancellationException extends CancellationException implements l0<TimeoutCancellationException> {
    @m8.h
    @JvmField
    public final j2 coroutine;

    public TimeoutCancellationException(@m8.g String str, @m8.h j2 j2Var) {
        super(str);
        this.coroutine = j2Var;
    }

    @Override // kotlinx.coroutines.l0
    @m8.h
    public TimeoutCancellationException createCopy() {
        String message = getMessage();
        if (message == null) {
            message = "";
        }
        TimeoutCancellationException timeoutCancellationException = new TimeoutCancellationException(message, this.coroutine);
        timeoutCancellationException.initCause(this);
        return timeoutCancellationException;
    }

    public TimeoutCancellationException(@m8.g String str) {
        this(str, null);
    }
}
