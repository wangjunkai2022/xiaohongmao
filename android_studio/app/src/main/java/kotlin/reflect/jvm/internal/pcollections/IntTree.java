package kotlin.reflect.jvm.internal.pcollections;

/* loaded from: classes4.dex */
final class IntTree<V> {
    static final IntTree<Object> EMPTYNODE = new IntTree<>();
    private final long key;
    private final IntTree<V> left;
    private final IntTree<V> right;
    private final int size;
    private final V value;

    private IntTree() {
        this.size = 0;
        this.key = 0L;
        this.value = null;
        this.left = null;
        this.right = null;
    }

    private long minKey() {
        IntTree<V> intTree = this.left;
        if (intTree.size == 0) {
            return this.key;
        }
        return intTree.minKey() + this.key;
    }

    private IntTree<V> rebalanced(IntTree<V> intTree, IntTree<V> intTree2) {
        return (intTree == this.left && intTree2 == this.right) ? this : rebalanced(this.key, this.value, intTree, intTree2);
    }

    private IntTree<V> withKey(long j4) {
        return (this.size == 0 || j4 == this.key) ? this : new IntTree<>(j4, this.value, this.left, this.right);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public V get(long j4) {
        if (this.size == 0) {
            return null;
        }
        long j10 = this.key;
        if (j4 < j10) {
            return this.left.get(j4 - j10);
        }
        if (j4 > j10) {
            return this.right.get(j4 - j10);
        }
        return this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IntTree<V> minus(long j4) {
        if (this.size == 0) {
            return this;
        }
        long j10 = this.key;
        if (j4 < j10) {
            return rebalanced(this.left.minus(j4 - j10), this.right);
        }
        if (j4 > j10) {
            return rebalanced(this.left, this.right.minus(j4 - j10));
        }
        IntTree<V> intTree = this.left;
        if (intTree.size == 0) {
            IntTree<V> intTree2 = this.right;
            return intTree2.withKey(intTree2.key + j10);
        }
        IntTree<V> intTree3 = this.right;
        if (intTree3.size == 0) {
            return intTree.withKey(intTree.key + j10);
        }
        long minKey = intTree3.minKey();
        long j11 = this.key;
        long j12 = minKey + j11;
        V v9 = this.right.get(j12 - j11);
        IntTree<V> minus = this.right.minus(j12 - this.key);
        IntTree<V> withKey = minus.withKey((minus.key + this.key) - j12);
        IntTree<V> intTree4 = this.left;
        return rebalanced(j12, v9, intTree4.withKey((intTree4.key + this.key) - j12), withKey);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IntTree<V> plus(long j4, V v9) {
        if (this.size == 0) {
            return new IntTree<>(j4, v9, this, this);
        }
        long j10 = this.key;
        if (j4 < j10) {
            return rebalanced(this.left.plus(j4 - j10, v9), this.right);
        }
        if (j4 > j10) {
            return rebalanced(this.left, this.right.plus(j4 - j10, v9));
        }
        return v9 == this.value ? this : new IntTree<>(j4, v9, this.left, this.right);
    }

    private static <V> IntTree<V> rebalanced(long j4, V v9, IntTree<V> intTree, IntTree<V> intTree2) {
        int i4 = ((IntTree) intTree).size;
        int i10 = ((IntTree) intTree2).size;
        if (i4 + i10 > 1) {
            if (i4 >= i10 * 5) {
                IntTree<V> intTree3 = ((IntTree) intTree).left;
                IntTree<V> intTree4 = ((IntTree) intTree).right;
                if (((IntTree) intTree4).size < ((IntTree) intTree3).size * 2) {
                    long j10 = ((IntTree) intTree).key;
                    return new IntTree<>(j10 + j4, ((IntTree) intTree).value, intTree3, new IntTree(-j10, v9, intTree4.withKey(((IntTree) intTree4).key + j10), intTree2));
                }
                IntTree<V> intTree5 = ((IntTree) intTree4).left;
                IntTree<V> intTree6 = ((IntTree) intTree4).right;
                long j11 = ((IntTree) intTree4).key;
                long j12 = ((IntTree) intTree).key + j11 + j4;
                V v10 = ((IntTree) intTree4).value;
                IntTree intTree7 = new IntTree(-j11, ((IntTree) intTree).value, intTree3, intTree5.withKey(((IntTree) intTree5).key + j11));
                long j13 = ((IntTree) intTree).key;
                long j14 = ((IntTree) intTree4).key;
                return new IntTree<>(j12, v10, intTree7, new IntTree((-j13) - j14, v9, intTree6.withKey(((IntTree) intTree6).key + j14 + j13), intTree2));
            } else if (i10 >= i4 * 5) {
                IntTree<V> intTree8 = ((IntTree) intTree2).left;
                IntTree<V> intTree9 = ((IntTree) intTree2).right;
                if (((IntTree) intTree8).size < ((IntTree) intTree9).size * 2) {
                    long j15 = ((IntTree) intTree2).key;
                    return new IntTree<>(j15 + j4, ((IntTree) intTree2).value, new IntTree(-j15, v9, intTree, intTree8.withKey(((IntTree) intTree8).key + j15)), intTree9);
                }
                IntTree<V> intTree10 = ((IntTree) intTree8).left;
                IntTree<V> intTree11 = ((IntTree) intTree8).right;
                long j16 = ((IntTree) intTree8).key;
                long j17 = ((IntTree) intTree2).key;
                long j18 = j16 + j17 + j4;
                V v11 = ((IntTree) intTree8).value;
                IntTree intTree12 = new IntTree((-j17) - j16, v9, intTree, intTree10.withKey(((IntTree) intTree10).key + j16 + j17));
                long j19 = ((IntTree) intTree8).key;
                return new IntTree<>(j18, v11, intTree12, new IntTree(-j19, ((IntTree) intTree2).value, intTree11.withKey(((IntTree) intTree11).key + j19), intTree9));
            }
        }
        return new IntTree<>(j4, v9, intTree, intTree2);
    }

    private IntTree(long j4, V v9, IntTree<V> intTree, IntTree<V> intTree2) {
        this.key = j4;
        this.value = v9;
        this.left = intTree;
        this.right = intTree2;
        this.size = intTree.size + 1 + intTree2.size;
    }
}
