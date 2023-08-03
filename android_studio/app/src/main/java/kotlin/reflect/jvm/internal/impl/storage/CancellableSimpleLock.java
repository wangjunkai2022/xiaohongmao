package kotlin.reflect.jvm.internal.impl.storage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: locks.kt */
/* loaded from: classes4.dex */
public final class CancellableSimpleLock extends DefaultSimpleLock {
    @g
    private final Runnable checkCancelled;
    @g
    private final Function1<InterruptedException, Unit> interruptedExceptionHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CancellableSimpleLock(@g Lock lock, @g Runnable checkCancelled, @g Function1<? super InterruptedException, Unit> interruptedExceptionHandler) {
        super(lock);
        Intrinsics.checkNotNullParameter(lock, "lock");
        Intrinsics.checkNotNullParameter(checkCancelled, "checkCancelled");
        Intrinsics.checkNotNullParameter(interruptedExceptionHandler, "interruptedExceptionHandler");
        this.checkCancelled = checkCancelled;
        this.interruptedExceptionHandler = interruptedExceptionHandler;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.DefaultSimpleLock, kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public void lock() {
        while (!getLock().tryLock(50L, TimeUnit.MILLISECONDS)) {
            try {
                this.checkCancelled.run();
            } catch (InterruptedException e4) {
                this.interruptedExceptionHandler.invoke(e4);
                return;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CancellableSimpleLock(@g Runnable checkCancelled, @g Function1<? super InterruptedException, Unit> interruptedExceptionHandler) {
        this(new ReentrantLock(), checkCancelled, interruptedExceptionHandler);
        Intrinsics.checkNotNullParameter(checkCancelled, "checkCancelled");
        Intrinsics.checkNotNullParameter(interruptedExceptionHandler, "interruptedExceptionHandler");
    }
}
