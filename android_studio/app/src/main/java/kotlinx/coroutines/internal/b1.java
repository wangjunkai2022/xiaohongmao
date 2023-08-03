package kotlinx.coroutines.internal;

import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* compiled from: ExceptionsConstructor.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J*\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005j\u0002`\u00062\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR:\u0010\u000f\u001a(\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005j\u0002`\u00060\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/internal/b1;", "Lkotlinx/coroutines/internal/k;", "Ljava/lang/Class;", "", "key", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/Ctor;", "a", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "b", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "cacheLock", "Ljava/util/WeakHashMap;", "c", "Ljava/util/WeakHashMap;", "exceptionCtors", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class b1 extends k {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final b1 f86243a = new b1();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final ReentrantReadWriteLock f86244b = new ReentrantReadWriteLock();
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final WeakHashMap<Class<? extends Throwable>, Function1<Throwable, Throwable>> f86245c = new WeakHashMap<>();

    private b1() {
    }

    @Override // kotlinx.coroutines.internal.k
    @m8.g
    public Function1<Throwable, Throwable> a(@m8.g Class<? extends Throwable> cls) {
        Function1<Throwable, Throwable> b10;
        ReentrantReadWriteLock reentrantReadWriteLock = f86244b;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        readLock.lock();
        try {
            Function1<Throwable, Throwable> function1 = f86245c.get(cls);
            if (function1 == null) {
                readLock = reentrantReadWriteLock.readLock();
                int i4 = 0;
                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                int i10 = 0;
                while (i10 < readHoldCount) {
                    i10++;
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    WeakHashMap<Class<? extends Throwable>, Function1<Throwable, Throwable>> weakHashMap = f86245c;
                    Function1<Throwable, Throwable> function12 = weakHashMap.get(cls);
                    if (function12 == null) {
                        b10 = ExceptionsConstructorKt.b(cls);
                        weakHashMap.put(cls, b10);
                        return b10;
                    }
                    while (i4 < readHoldCount) {
                        i4++;
                        readLock.lock();
                    }
                    writeLock.unlock();
                    return function12;
                } finally {
                    while (i4 < readHoldCount) {
                        i4++;
                        readLock.lock();
                    }
                    writeLock.unlock();
                }
            }
            return function1;
        } finally {
            readLock.unlock();
        }
    }
}
