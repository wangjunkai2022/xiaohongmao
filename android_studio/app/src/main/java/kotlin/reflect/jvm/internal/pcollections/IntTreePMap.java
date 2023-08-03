package kotlin.reflect.jvm.internal.pcollections;

/* loaded from: classes4.dex */
final class IntTreePMap<V> {
    private static final IntTreePMap<Object> EMPTY = new IntTreePMap<>(IntTree.EMPTYNODE);
    private final IntTree<V> root;

    private IntTreePMap(IntTree<V> intTree) {
        this.root = intTree;
    }

    public static <V> IntTreePMap<V> empty() {
        return (IntTreePMap<V>) EMPTY;
    }

    private IntTreePMap<V> withRoot(IntTree<V> intTree) {
        return intTree == this.root ? this : new IntTreePMap<>(intTree);
    }

    public V get(int i4) {
        return this.root.get(i4);
    }

    public IntTreePMap<V> minus(int i4) {
        return withRoot(this.root.minus(i4));
    }

    public IntTreePMap<V> plus(int i4, V v9) {
        return withRoot(this.root.plus(i4, v9));
    }
}
