package kotlinx.coroutines.rx2;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.p0;

/* compiled from: RxCancellable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¨\u0006\u0006"}, d2 = {"", "cause", "Lkotlin/coroutines/CoroutineContext;", "context", "", "a", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e {
    public static final void a(@m8.g Throwable th, @m8.g CoroutineContext coroutineContext) {
        if (th instanceof CancellationException) {
            return;
        }
        try {
            io.reactivex.plugins.a.Y(th);
        } catch (Throwable th2) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
            p0.b(coroutineContext, th);
        }
    }
}
