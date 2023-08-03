package kotlinx.coroutines;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;

/* compiled from: ThreadPoolDispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0018\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¨\u0006\u0007"}, d2 = {"", "name", "Lkotlinx/coroutines/v1;", "d", "", "nThreads", "b", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class r3 {
    @c1
    @m8.g
    public static final v1 b(final int i4, @m8.g final String str) {
        if (i4 >= 1) {
            final AtomicInteger atomicInteger = new AtomicInteger();
            return x1.d(Executors.newScheduledThreadPool(i4, new ThreadFactory() { // from class: kotlinx.coroutines.q3
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    Thread c10;
                    c10 = r3.c(i4, str, atomicInteger, runnable);
                    return c10;
                }
            }));
        }
        throw new IllegalArgumentException(("Expected at least one thread, but " + i4 + " specified").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread c(int i4, String str, AtomicInteger atomicInteger, Runnable runnable) {
        if (i4 != 1) {
            str = str + shaded.org.apache.commons.codec.language.l.f93713d + atomicInteger.incrementAndGet();
        }
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(true);
        return thread;
    }

    @c1
    @m8.g
    public static final v1 d(@m8.g String str) {
        return b(1, str);
    }
}
