package kotlin.reflect.jvm.internal.impl.storage;

import m8.g;

/* compiled from: locks.kt */
/* loaded from: classes4.dex */
public final class EmptySimpleLock implements SimpleLock {
    @g
    public static final EmptySimpleLock INSTANCE = new EmptySimpleLock();

    private EmptySimpleLock() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public void lock() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public void unlock() {
    }
}
