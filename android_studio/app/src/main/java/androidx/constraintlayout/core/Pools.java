package androidx.constraintlayout.core;

/* loaded from: classes.dex */
final class Pools {
    private static final boolean DEBUG = false;

    /* loaded from: classes.dex */
    interface Pool<T> {
        T acquire();

        boolean release(T t9);

        void releaseAll(T[] tArr, int i4);
    }

    /* loaded from: classes.dex */
    static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SimplePool(int i4) {
            if (i4 > 0) {
                this.mPool = new Object[i4];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        private boolean isInPool(T t9) {
            for (int i4 = 0; i4 < this.mPoolSize; i4++) {
                if (this.mPool[i4] == t9) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
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

        @Override // androidx.constraintlayout.core.Pools.Pool
        public boolean release(T t9) {
            int i4 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (i4 < objArr.length) {
                objArr[i4] = t9;
                this.mPoolSize = i4 + 1;
                return true;
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
        public void releaseAll(T[] tArr, int i4) {
            if (i4 > tArr.length) {
                i4 = tArr.length;
            }
            for (int i10 = 0; i10 < i4; i10++) {
                T t9 = tArr[i10];
                int i11 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (i11 < objArr.length) {
                    objArr[i11] = t9;
                    this.mPoolSize = i11 + 1;
                }
            }
        }
    }

    private Pools() {
    }
}
