package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(serializable = true)
/* loaded from: classes2.dex */
public class HashBasedTable<R, C, V> extends b5<R, C, V> {

    /* renamed from: i  reason: collision with root package name */
    private static final long f32656i = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a<C, V> implements com.google.common.base.i0<Map<C, V>>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32657b = 0;

        /* renamed from: a  reason: collision with root package name */
        final int f32658a;

        a(int i4) {
            this.f32658a = i4;
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public Map<C, V> get() {
            return f3.e0(this.f32658a);
        }
    }

    HashBasedTable(Map<R, Map<C, V>> map, a<C, V> aVar) {
        super(map, aVar);
    }

    public static <R, C, V> HashBasedTable<R, C, V> create() {
        return new HashBasedTable<>(new LinkedHashMap(), new a(0));
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsColumn(@NullableDecl Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsRow(@NullableDecl Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsValue(@NullableDecl Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return (V) super.get(obj, obj2);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ void putAll(d5 d5Var) {
        super.putAll(d5Var);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return (V) super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return super.row(obj);
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Set rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Map rowMap() {
        return super.rowMap();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.q
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.b5, com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(int i4, int i10) {
        y.b(i10, "expectedCellsPerRow");
        return new HashBasedTable<>(f3.e0(i4), new a(i10));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(d5<? extends R, ? extends C, ? extends V> d5Var) {
        HashBasedTable<R, C, V> create = create();
        create.putAll(d5Var);
        return create;
    }
}
