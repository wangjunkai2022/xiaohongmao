package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import m8.g;
import m8.h;

/* compiled from: locks.kt */
/* loaded from: classes4.dex */
public interface SimpleLock {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: locks.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @g
        public final DefaultSimpleLock simpleLock(@h Runnable runnable, @h Function1<? super InterruptedException, Unit> function1) {
            if (runnable != null && function1 != null) {
                return new CancellableSimpleLock(runnable, function1);
            }
            return new DefaultSimpleLock(null, 1, null);
        }
    }

    void lock();

    void unlock();
}
