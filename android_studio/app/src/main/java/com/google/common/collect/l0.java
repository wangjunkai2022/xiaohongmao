package com.google.common.collect;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.d5;
import com.google.errorprone.annotations.Immutable;
import java.lang.reflect.Array;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DenseImmutableTable.java */
@Immutable(containerOf = {"R", "C", ExifInterface.GPS_MEASUREMENT_INTERRUPTED})
@h3.b
/* loaded from: classes2.dex */
public final class l0<R, C, V> extends i4<R, C, V> {

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableMap<R, Integer> f33675c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableMap<C, Integer> f33676d;

    /* renamed from: e  reason: collision with root package name */
    private final ImmutableMap<R, ImmutableMap<C, V>> f33677e;

    /* renamed from: f  reason: collision with root package name */
    private final ImmutableMap<C, ImmutableMap<R, V>> f33678f;

    /* renamed from: g  reason: collision with root package name */
    private final int[] f33679g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f33680h;

    /* renamed from: i  reason: collision with root package name */
    private final V[][] f33681i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f33682j;

    /* renamed from: k  reason: collision with root package name */
    private final int[] f33683k;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DenseImmutableTable.java */
    /* loaded from: classes2.dex */
    public final class b extends d<R, V> {

        /* renamed from: g  reason: collision with root package name */
        private final int f33684g;

        b(int i4) {
            super(l0.this.f33680h[i4]);
            this.f33684g = i4;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean j() {
            return true;
        }

        @Override // com.google.common.collect.l0.d
        V o(int i4) {
            return (V) l0.this.f33681i[i4][this.f33684g];
        }

        @Override // com.google.common.collect.l0.d
        ImmutableMap<R, Integer> q() {
            return l0.this.f33675c;
        }
    }

    /* compiled from: DenseImmutableTable.java */
    /* loaded from: classes2.dex */
    private final class c extends d<C, ImmutableMap<R, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean j() {
            return false;
        }

        @Override // com.google.common.collect.l0.d
        ImmutableMap<C, Integer> q() {
            return l0.this.f33676d;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l0.d
        /* renamed from: s */
        public ImmutableMap<R, V> o(int i4) {
            return new b(i4);
        }

        private c() {
            super(l0.this.f33680h.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DenseImmutableTable.java */
    /* loaded from: classes2.dex */
    public static abstract class d<K, V> extends ImmutableMap.c<K, V> {

        /* renamed from: f  reason: collision with root package name */
        private final int f33687f;

        /* compiled from: DenseImmutableTable.java */
        /* loaded from: classes2.dex */
        class a extends com.google.common.collect.c<Map.Entry<K, V>> {

            /* renamed from: c  reason: collision with root package name */
            private int f33688c = -1;

            /* renamed from: d  reason: collision with root package name */
            private final int f33689d;

            a() {
                this.f33689d = d.this.q().size();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<K, V> a() {
                int i4 = this.f33688c;
                while (true) {
                    this.f33688c = i4 + 1;
                    int i10 = this.f33688c;
                    if (i10 < this.f33689d) {
                        Object o9 = d.this.o(i10);
                        if (o9 != null) {
                            return f3.O(d.this.n(this.f33688c), o9);
                        }
                        i4 = this.f33688c;
                    } else {
                        return b();
                    }
                }
            }
        }

        d(int i4) {
            this.f33687f = i4;
        }

        private boolean p() {
            return this.f33687f == q().size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.c, com.google.common.collect.ImmutableMap
        public ImmutableSet<K> d() {
            return p() ? q().keySet() : super.d();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public V get(@NullableDecl Object obj) {
            Integer num = q().get(obj);
            if (num == null) {
                return null;
            }
            return o(num.intValue());
        }

        @Override // com.google.common.collect.ImmutableMap.c
        k5<Map.Entry<K, V>> m() {
            return new a();
        }

        K n(int i4) {
            return q().keySet().asList().get(i4);
        }

        @NullableDecl
        abstract V o(int i4);

        abstract ImmutableMap<K, Integer> q();

        @Override // java.util.Map
        public int size() {
            return this.f33687f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DenseImmutableTable.java */
    /* loaded from: classes2.dex */
    public final class e extends d<C, V> {

        /* renamed from: g  reason: collision with root package name */
        private final int f33691g;

        e(int i4) {
            super(l0.this.f33679g[i4]);
            this.f33691g = i4;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean j() {
            return true;
        }

        @Override // com.google.common.collect.l0.d
        V o(int i4) {
            return (V) l0.this.f33681i[this.f33691g][i4];
        }

        @Override // com.google.common.collect.l0.d
        ImmutableMap<C, Integer> q() {
            return l0.this.f33676d;
        }
    }

    /* compiled from: DenseImmutableTable.java */
    /* loaded from: classes2.dex */
    private final class f extends d<R, ImmutableMap<C, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean j() {
            return false;
        }

        @Override // com.google.common.collect.l0.d
        ImmutableMap<R, Integer> q() {
            return l0.this.f33675c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l0.d
        /* renamed from: s */
        public ImmutableMap<C, V> o(int i4) {
            return new e(i4);
        }

        private f() {
            super(l0.this.f33679g.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(ImmutableList<d5.a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        this.f33681i = (V[][]) ((Object[][]) Array.newInstance(Object.class, immutableSet.size(), immutableSet2.size()));
        ImmutableMap<R, Integer> Q = f3.Q(immutableSet);
        this.f33675c = Q;
        ImmutableMap<C, Integer> Q2 = f3.Q(immutableSet2);
        this.f33676d = Q2;
        this.f33679g = new int[Q.size()];
        this.f33680h = new int[Q2.size()];
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i4 = 0; i4 < immutableList.size(); i4++) {
            d5.a<R, C, V> aVar = immutableList.get(i4);
            R a10 = aVar.a();
            C b10 = aVar.b();
            int intValue = this.f33675c.get(a10).intValue();
            int intValue2 = this.f33676d.get(b10).intValue();
            n(a10, b10, this.f33681i[intValue][intValue2], aVar.getValue());
            this.f33681i[intValue][intValue2] = aVar.getValue();
            int[] iArr3 = this.f33679g;
            iArr3[intValue] = iArr3[intValue] + 1;
            int[] iArr4 = this.f33680h;
            iArr4[intValue2] = iArr4[intValue2] + 1;
            iArr[i4] = intValue;
            iArr2[i4] = intValue2;
        }
        this.f33682j = iArr;
        this.f33683k = iArr2;
        this.f33677e = new f();
        this.f33678f = new c();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q, com.google.common.collect.d5
    public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Integer num = this.f33675c.get(obj);
        Integer num2 = this.f33676d.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return this.f33681i[num.intValue()][num2.intValue()];
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.b k() {
        return ImmutableTable.b.a(this, this.f33682j, this.f33683k);
    }

    @Override // com.google.common.collect.i4
    d5.a<R, C, V> s(int i4) {
        int i10 = this.f33682j[i4];
        int i11 = this.f33683k[i4];
        return ImmutableTable.h(rowKeySet().asList().get(i10), columnKeySet().asList().get(i11), this.f33681i[i10][i11]);
    }

    @Override // com.google.common.collect.d5
    public int size() {
        return this.f33682j.length;
    }

    @Override // com.google.common.collect.i4
    V t(int i4) {
        return this.f33681i[this.f33682j[i4]][this.f33683k[i4]];
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.d5
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf((Map) this.f33678f);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.d5
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf((Map) this.f33677e);
    }
}
