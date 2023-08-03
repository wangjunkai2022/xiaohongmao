package com.google.common.collect;

import com.google.common.collect.d5;
import com.google.common.collect.e5;
import com.google.common.collect.f3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true)
@h3.a
/* loaded from: classes2.dex */
public final class ArrayTable<R, C, V> extends q<R, C, V> implements Serializable {

    /* renamed from: j  reason: collision with root package name */
    private static final long f32596j = 0;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableList<R> f32597c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableList<C> f32598d;

    /* renamed from: e  reason: collision with root package name */
    private final ImmutableMap<R, Integer> f32599e;

    /* renamed from: f  reason: collision with root package name */
    private final ImmutableMap<C, Integer> f32600f;

    /* renamed from: g  reason: collision with root package name */
    private final V[][] f32601g;
    @MonotonicNonNullDecl

    /* renamed from: h  reason: collision with root package name */
    private transient ArrayTable<R, C, V>.f f32602h;
    @MonotonicNonNullDecl

    /* renamed from: i  reason: collision with root package name */
    private transient ArrayTable<R, C, V>.h f32603i;

    /* loaded from: classes2.dex */
    class a extends com.google.common.collect.b<d5.a<R, C, V>> {
        a(int i4) {
            super(i4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.b
        /* renamed from: b */
        public d5.a<R, C, V> a(int i4) {
            return ArrayTable.this.m(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends e5.b<R, C, V> {

        /* renamed from: a  reason: collision with root package name */
        final int f32605a;

        /* renamed from: b  reason: collision with root package name */
        final int f32606b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f32607c;

        b(int i4) {
            this.f32607c = i4;
            this.f32605a = i4 / ArrayTable.this.f32598d.size();
            this.f32606b = i4 % ArrayTable.this.f32598d.size();
        }

        @Override // com.google.common.collect.d5.a
        public R a() {
            return (R) ArrayTable.this.f32597c.get(this.f32605a);
        }

        @Override // com.google.common.collect.d5.a
        public C b() {
            return (C) ArrayTable.this.f32598d.get(this.f32606b);
        }

        @Override // com.google.common.collect.d5.a
        public V getValue() {
            return (V) ArrayTable.this.at(this.f32605a, this.f32606b);
        }
    }

    /* loaded from: classes2.dex */
    class c extends com.google.common.collect.b<V> {
        c(int i4) {
            super(i4);
        }

        @Override // com.google.common.collect.b
        protected V a(int i4) {
            return (V) ArrayTable.this.n(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class d<K, V> extends f3.a0<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap<K, Integer> f32610a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.g<K, V> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f32611a;

            a(int i4) {
                this.f32611a = i4;
            }

            @Override // com.google.common.collect.g, java.util.Map.Entry
            public K getKey() {
                return (K) d.this.c(this.f32611a);
            }

            @Override // com.google.common.collect.g, java.util.Map.Entry
            public V getValue() {
                return (V) d.this.e(this.f32611a);
            }

            @Override // com.google.common.collect.g, java.util.Map.Entry
            public V setValue(V v9) {
                return (V) d.this.f(this.f32611a, v9);
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.b<Map.Entry<K, V>> {
            b(int i4) {
                super(i4);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.b
            /* renamed from: b */
            public Map.Entry<K, V> a(int i4) {
                return d.this.b(i4);
            }
        }

        /* synthetic */ d(ImmutableMap immutableMap, a aVar) {
            this(immutableMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.a0
        public Iterator<Map.Entry<K, V>> a() {
            return new b(size());
        }

        Map.Entry<K, V> b(int i4) {
            com.google.common.base.a0.C(i4, size());
            return new a(i4);
        }

        K c(int i4) {
            return this.f32610a.keySet().asList().get(i4);
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return this.f32610a.containsKey(obj);
        }

        abstract String d();

        @NullableDecl
        abstract V e(int i4);

        @NullableDecl
        abstract V f(int i4, V v9);

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@NullableDecl Object obj) {
            Integer num = this.f32610a.get(obj);
            if (num == null) {
                return null;
            }
            return e(num.intValue());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f32610a.isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f32610a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k10, V v9) {
            Integer num = this.f32610a.get(k10);
            if (num != null) {
                return f(num.intValue(), v9);
            }
            throw new IllegalArgumentException(d() + " " + k10 + " not in " + this.f32610a.keySet());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f32610a.size();
        }

        private d(ImmutableMap<K, Integer> immutableMap) {
            this.f32610a = immutableMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e extends d<R, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f32614b;

        e(int i4) {
            super(ArrayTable.this.f32599e, null);
            this.f32614b = i4;
        }

        @Override // com.google.common.collect.ArrayTable.d
        String d() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.d
        V e(int i4) {
            return (V) ArrayTable.this.at(i4, this.f32614b);
        }

        @Override // com.google.common.collect.ArrayTable.d
        V f(int i4, V v9) {
            return (V) ArrayTable.this.set(i4, this.f32614b, v9);
        }
    }

    /* loaded from: classes2.dex */
    private class f extends d<C, Map<R, V>> {
        /* synthetic */ f(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.d
        String d() {
            return "Column";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* renamed from: g */
        public Map<R, V> e(int i4) {
            return new e(i4);
        }

        @Override // com.google.common.collect.ArrayTable.d, java.util.AbstractMap, java.util.Map
        /* renamed from: h */
        public Map<R, V> put(C c10, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* renamed from: i */
        public Map<R, V> f(int i4, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        private f() {
            super(ArrayTable.this.f32600f, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class g extends d<C, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f32617b;

        g(int i4) {
            super(ArrayTable.this.f32600f, null);
            this.f32617b = i4;
        }

        @Override // com.google.common.collect.ArrayTable.d
        String d() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.d
        V e(int i4) {
            return (V) ArrayTable.this.at(this.f32617b, i4);
        }

        @Override // com.google.common.collect.ArrayTable.d
        V f(int i4, V v9) {
            return (V) ArrayTable.this.set(this.f32617b, i4, v9);
        }
    }

    /* loaded from: classes2.dex */
    private class h extends d<R, Map<C, V>> {
        /* synthetic */ h(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.d
        String d() {
            return "Row";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* renamed from: g */
        public Map<C, V> e(int i4) {
            return new g(i4);
        }

        @Override // com.google.common.collect.ArrayTable.d, java.util.AbstractMap, java.util.Map
        /* renamed from: h */
        public Map<C, V> put(R r9, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* renamed from: i */
        public Map<C, V> f(int i4, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        private h() {
            super(ArrayTable.this.f32599e, null);
        }
    }

    private ArrayTable(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        ImmutableList<R> copyOf = ImmutableList.copyOf(iterable);
        this.f32597c = copyOf;
        ImmutableList<C> copyOf2 = ImmutableList.copyOf(iterable2);
        this.f32598d = copyOf2;
        com.google.common.base.a0.d(copyOf.isEmpty() == copyOf2.isEmpty());
        this.f32599e = f3.Q(copyOf);
        this.f32600f = f3.Q(copyOf2);
        this.f32601g = (V[][]) ((Object[][]) Array.newInstance(Object.class, copyOf.size(), copyOf2.size()));
        eraseAll();
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new ArrayTable<>(iterable, iterable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d5.a<R, C, V> m(int i4) {
        return new b(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V n(int i4) {
        return at(i4 / this.f32598d.size(), i4 % this.f32598d.size());
    }

    @Override // com.google.common.collect.q
    Iterator<d5.a<R, C, V>> a() {
        return new a(size());
    }

    public V at(int i4, int i10) {
        com.google.common.base.a0.C(i4, this.f32597c.size());
        com.google.common.base.a0.C(i10, this.f32598d.size());
        return this.f32601g[i4][i10];
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public Set<d5.a<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.d5
    public Map<R, V> column(C c10) {
        com.google.common.base.a0.E(c10);
        Integer num = this.f32600f.get(c10);
        return num == null ? ImmutableMap.of() : new e(num.intValue());
    }

    public ImmutableList<C> columnKeyList() {
        return this.f32598d;
    }

    @Override // com.google.common.collect.d5
    public Map<C, Map<R, V>> columnMap() {
        ArrayTable<R, C, V>.f fVar = this.f32602h;
        if (fVar == null) {
            ArrayTable<R, C, V>.f fVar2 = new f(this, null);
            this.f32602h = fVar2;
            return fVar2;
        }
        return fVar;
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return containsRow(obj) && containsColumn(obj2);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsColumn(@NullableDecl Object obj) {
        return this.f32600f.containsKey(obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsRow(@NullableDecl Object obj) {
        return this.f32599e.containsKey(obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean containsValue(@NullableDecl Object obj) {
        V[][] vArr;
        for (V[] vArr2 : this.f32601g) {
            for (V v9 : vArr2) {
                if (com.google.common.base.w.a(obj, v9)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.q
    Iterator<V> d() {
        return new c(size());
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @CanIgnoreReturnValue
    public V erase(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Integer num = this.f32599e.get(obj);
        Integer num2 = this.f32600f.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return set(num.intValue(), num2.intValue(), null);
    }

    public void eraseAll() {
        for (V[] vArr : this.f32601g) {
            Arrays.fill(vArr, (Object) null);
        }
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Integer num = this.f32599e.get(obj);
        Integer num2 = this.f32600f.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return at(num.intValue(), num2.intValue());
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public boolean isEmpty() {
        return this.f32597c.isEmpty() || this.f32598d.isEmpty();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    public V put(R r9, C c10, @NullableDecl V v9) {
        com.google.common.base.a0.E(r9);
        com.google.common.base.a0.E(c10);
        Integer num = this.f32599e.get(r9);
        com.google.common.base.a0.y(num != null, "Row %s not in %s", r9, this.f32597c);
        Integer num2 = this.f32600f.get(c10);
        com.google.common.base.a0.y(num2 != null, "Column %s not in %s", c10, this.f32598d);
        return set(num.intValue(), num2.intValue(), v9);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public void putAll(d5<? extends R, ? extends C, ? extends V> d5Var) {
        super.putAll(d5Var);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    @CanIgnoreReturnValue
    @Deprecated
    public V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.d5
    public Map<C, V> row(R r9) {
        com.google.common.base.a0.E(r9);
        Integer num = this.f32599e.get(r9);
        return num == null ? ImmutableMap.of() : new g(num.intValue());
    }

    public ImmutableList<R> rowKeyList() {
        return this.f32597c;
    }

    @Override // com.google.common.collect.d5
    public Map<R, Map<C, V>> rowMap() {
        ArrayTable<R, C, V>.h hVar = this.f32603i;
        if (hVar == null) {
            ArrayTable<R, C, V>.h hVar2 = new h(this, null);
            this.f32603i = hVar2;
            return hVar2;
        }
        return hVar;
    }

    @CanIgnoreReturnValue
    public V set(int i4, int i10, @NullableDecl V v9) {
        com.google.common.base.a0.C(i4, this.f32597c.size());
        com.google.common.base.a0.C(i10, this.f32598d.size());
        V[][] vArr = this.f32601g;
        V v10 = vArr[i4][i10];
        vArr[i4][i10] = v9;
        return v10;
    }

    @Override // com.google.common.collect.d5
    public int size() {
        return this.f32597c.size() * this.f32598d.size();
    }

    @h3.c
    public V[][] toArray(Class<V> cls) {
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, this.f32597c.size(), this.f32598d.size()));
        for (int i4 = 0; i4 < this.f32597c.size(); i4++) {
            V[][] vArr2 = this.f32601g;
            System.arraycopy(vArr2[i4], 0, vArr[i4], 0, vArr2[i4].length);
        }
        return vArr;
    }

    @Override // com.google.common.collect.q
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public Collection<V> values() {
        return super.values();
    }

    public static <R, C, V> ArrayTable<R, C, V> create(d5<R, C, V> d5Var) {
        return d5Var instanceof ArrayTable ? new ArrayTable<>((ArrayTable) d5Var) : new ArrayTable<>(d5Var);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public ImmutableSet<C> columnKeySet() {
        return this.f32600f.keySet();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.d5
    public ImmutableSet<R> rowKeySet() {
        return this.f32599e.keySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ArrayTable(d5<R, C, V> d5Var) {
        this(d5Var.rowKeySet(), d5Var.columnKeySet());
        putAll(d5Var);
    }

    private ArrayTable(ArrayTable<R, C, V> arrayTable) {
        ImmutableList<R> immutableList = arrayTable.f32597c;
        this.f32597c = immutableList;
        ImmutableList<C> immutableList2 = arrayTable.f32598d;
        this.f32598d = immutableList2;
        this.f32599e = arrayTable.f32599e;
        this.f32600f = arrayTable.f32600f;
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance(Object.class, immutableList.size(), immutableList2.size()));
        this.f32601g = vArr;
        for (int i4 = 0; i4 < this.f32597c.size(); i4++) {
            V[][] vArr2 = arrayTable.f32601g;
            System.arraycopy(vArr2[i4], 0, vArr[i4], 0, vArr2[i4].length);
        }
    }
}
