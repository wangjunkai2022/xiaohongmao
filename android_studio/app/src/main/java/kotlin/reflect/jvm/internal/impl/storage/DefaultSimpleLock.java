package kotlin.reflect.jvm.internal.impl.storage;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: locks.kt */
/* loaded from: classes4.dex */
public class DefaultSimpleLock implements SimpleLock {
    @g
    private final Lock lock;

    public DefaultSimpleLock() {
        this(null, 1, null);
    }

    public DefaultSimpleLock(@g Lock lock) {
        Intrinsics.checkNotNullParameter(lock, "lock");
        this.lock = lock;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final Lock getLock() {
        return this.lock;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public void lock() {
        this.lock.lock();
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public void unlock() {
        this.lock.unlock();
    }

    public /* synthetic */ DefaultSimpleLock(Lock lock, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? new ReentrantLock() : lock);
    }
}
