package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class Pools {

    /* loaded from: classes.dex */
    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(@NonNull T t9);
    }

    /* loaded from: classes.dex */
    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i4) {
            if (i4 > 0) {
                this.mPool = new Object[i4];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        private boolean isInPool(@NonNull T t9) {
            for (int i4 = 0; i4 < this.mPoolSize; i4++) {
                if (this.mPool[i4] == t9) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            int i4 = this.mPoolSize;
            if (i4 > 0) {
                int i10 = i4 - 1;
                Object[] objArr = this.mPool;
                T t9 = (T) objArr[i10];
                objArr[i10] = null;
                this.mPoolSize = i4 - 1;
                return t9;
            }
            return null;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t9) {
            if (!isInPool(t9)) {
                int i4 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (i4 < objArr.length) {
                    objArr[i4] = t9;
                    this.mPoolSize = i4 + 1;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    /* loaded from: classes.dex */
    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock;

        public SynchronizedPool(int i4) {
            super(i4);
            this.mLock = new Object();
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public T acquire() {
            T t9;
            synchronized (this.mLock) {
                t9 = (T) super.acquire();
            }
            return t9;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t9) {
            boolean release;
            synchronized (this.mLock) {
                release = super.release(t9);
            }
            return release;
        }
    }

    private Pools() {
    }
}
