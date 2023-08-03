package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class TreeMultimap<K, V> extends n<K, V> {
    @h3.c

    /* renamed from: m  reason: collision with root package name */
    private static final long f32954m = 0;

    /* renamed from: k  reason: collision with root package name */
    private transient Comparator<? super K> f32955k;

    /* renamed from: l  reason: collision with root package name */
    private transient Comparator<? super V> f32956l;

    TreeMultimap(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        super(new TreeMap(comparator));
        this.f32955k = comparator;
        this.f32956l = comparator2;
    }

    @h3.c
    private void L(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f32955k = (Comparator) com.google.common.base.a0.E((Comparator) objectInputStream.readObject());
        this.f32956l = (Comparator) com.google.common.base.a0.E((Comparator) objectInputStream.readObject());
        B(new TreeMap(this.f32955k));
        m4.d(this, objectInputStream);
    }

    @h3.c
    private void M(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(keyComparator());
        objectOutputStream.writeObject(valueComparator());
        m4.j(this, objectOutputStream);
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create() {
        return new TreeMultimap<>(s3.B(), s3.B());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.e
    /* renamed from: H */
    public SortedSet<V> s() {
        return new TreeSet(this.f32956l);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h
    Map<K, Collection<V>> b() {
        return u();
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean containsKey(@NullableDecl Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean containsValue(@NullableDecl Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ Set entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.m, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @h3.c
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((TreeMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Deprecated
    public Comparator<? super K> keyComparator() {
        return this.f32955k;
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ k3 keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean put(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(h3 h3Var) {
        return super.putAll(h3Var);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ SortedSet removeAll(@NullableDecl Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ SortedSet replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return super.replaceValues((TreeMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.e
    public Collection<V> t(@NullableDecl K k10) {
        if (k10 == 0) {
            keyComparator().compare(k10, k10);
        }
        return super.t(k10);
    }

    @Override // com.google.common.collect.h
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.y4
    public Comparator<? super V> valueComparator() {
        return this.f32956l;
    }

    @Override // com.google.common.collect.p, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <K, V> TreeMultimap<K, V> create(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        return new TreeMultimap<>((Comparator) com.google.common.base.a0.E(comparator), (Comparator) com.google.common.base.a0.E(comparator2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @h3.c
    public /* bridge */ /* synthetic */ Set get(@NullableDecl Object obj) {
        return get((TreeMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(@NullableDecl Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create(h3<? extends K, ? extends V> h3Var) {
        return new TreeMultimap<>(s3.B(), s3.B(), h3Var);
    }

    @Override // com.google.common.collect.n, com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public NavigableMap<K, Collection<V>> asMap() {
        return (NavigableMap) super.asMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @h3.c
    public /* bridge */ /* synthetic */ SortedSet get(@NullableDecl Object obj) {
        return get((TreeMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.n, com.google.common.collect.h, com.google.common.collect.h3
    public NavigableSet<K> keySet() {
        return (NavigableSet) super.keySet();
    }

    private TreeMultimap(Comparator<? super K> comparator, Comparator<? super V> comparator2, h3<? extends K, ? extends V> h3Var) {
        this(comparator, comparator2);
        putAll(h3Var);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @h3.c
    public NavigableSet<V> get(@NullableDecl K k10) {
        return (NavigableSet) super.get((TreeMultimap<K, V>) k10);
    }
}
