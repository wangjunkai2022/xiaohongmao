package com.google.common.collect;

import java.util.AbstractMap;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableMap.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class d4<K, V> extends ImmutableMap<K, V> {

    /* renamed from: i  reason: collision with root package name */
    private static final int f33249i = -1;

    /* renamed from: j  reason: collision with root package name */
    static final ImmutableMap<Object, Object> f33250j = new d4(null, new Object[0], 0);

    /* renamed from: k  reason: collision with root package name */
    private static final long f33251k = 0;

    /* renamed from: f  reason: collision with root package name */
    private final transient int[] f33252f;
    @h3.d

    /* renamed from: g  reason: collision with root package name */
    final transient Object[] f33253g;

    /* renamed from: h  reason: collision with root package name */
    private final transient int f33254h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RegularImmutableMap.java */
    /* loaded from: classes2.dex */
    public static class a<K, V> extends ImmutableSet<Map.Entry<K, V>> {

        /* renamed from: f  reason: collision with root package name */
        private final transient ImmutableMap<K, V> f33255f;

        /* renamed from: g  reason: collision with root package name */
        private final transient Object[] f33256g;

        /* renamed from: h  reason: collision with root package name */
        private final transient int f33257h;

        /* renamed from: i  reason: collision with root package name */
        private final transient int f33258i;

        /* compiled from: RegularImmutableMap.java */
        /* renamed from: com.google.common.collect.d4$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0221a extends ImmutableList<Map.Entry<K, V>> {
            C0221a() {
            }

            @Override // com.google.common.collect.ImmutableCollection
            public boolean e() {
                return true;
            }

            @Override // java.util.List
            /* renamed from: o */
            public Map.Entry<K, V> get(int i4) {
                com.google.common.base.a0.C(i4, a.this.f33258i);
                int i10 = i4 * 2;
                return new AbstractMap.SimpleImmutableEntry(a.this.f33256g[a.this.f33257h + i10], a.this.f33256g[i10 + (a.this.f33257h ^ 1)]);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return a.this.f33258i;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(ImmutableMap<K, V> immutableMap, Object[] objArr, int i4, int i10) {
            this.f33255f = immutableMap;
            this.f33256g = objArr;
            this.f33257h = i4;
            this.f33258i = i10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public int a(Object[] objArr, int i4) {
            return asList().a(objArr, i4);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                return value != null && value.equals(this.f33255f.get(key));
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet
        public ImmutableList<Map.Entry<K, V>> n() {
            return new C0221a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f33258i;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public k5<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }
    }

    /* compiled from: RegularImmutableMap.java */
    /* loaded from: classes2.dex */
    static final class b<K> extends ImmutableSet<K> {

        /* renamed from: f  reason: collision with root package name */
        private final transient ImmutableMap<K, ?> f33260f;

        /* renamed from: g  reason: collision with root package name */
        private final transient ImmutableList<K> f33261g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(ImmutableMap<K, ?> immutableMap, ImmutableList<K> immutableList) {
            this.f33260f = immutableMap;
            this.f33261g = immutableList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public int a(Object[] objArr, int i4) {
            return asList().a(objArr, i4);
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public ImmutableList<K> asList() {
            return this.f33261g;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return this.f33260f.get(obj) != null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f33260f.size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public k5<K> iterator() {
            return asList().iterator();
        }
    }

    /* compiled from: RegularImmutableMap.java */
    /* loaded from: classes2.dex */
    static final class c extends ImmutableList<Object> {

        /* renamed from: c  reason: collision with root package name */
        private final transient Object[] f33262c;

        /* renamed from: d  reason: collision with root package name */
        private final transient int f33263d;

        /* renamed from: e  reason: collision with root package name */
        private final transient int f33264e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Object[] objArr, int i4, int i10) {
            this.f33262c = objArr;
            this.f33263d = i4;
            this.f33264e = i10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // java.util.List
        public Object get(int i4) {
            com.google.common.base.a0.C(i4, this.f33264e);
            return this.f33262c[(i4 * 2) + this.f33263d];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33264e;
        }
    }

    private d4(int[] iArr, Object[] objArr, int i4) {
        this.f33252f = iArr;
        this.f33253g = objArr;
        this.f33254h = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> d4<K, V> m(int i4, Object[] objArr) {
        if (i4 == 0) {
            return (d4) f33250j;
        }
        if (i4 == 1) {
            y.a(objArr[0], objArr[1]);
            return new d4<>(null, objArr, 1);
        }
        com.google.common.base.a0.d0(i4, objArr.length >> 1);
        return new d4<>(n(objArr, i4, ImmutableSet.l(i4), 0), objArr, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        r12[r7] = r5;
        r3 = r3 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int[] n(java.lang.Object[] r10, int r11, int r12, int r13) {
        /*
            r0 = 1
            if (r11 != r0) goto Le
            r11 = r10[r13]
            r12 = r13 ^ 1
            r10 = r10[r12]
            com.google.common.collect.y.a(r11, r10)
            r10 = 0
            return r10
        Le:
            int r1 = r12 + (-1)
            int[] r12 = new int[r12]
            r2 = -1
            java.util.Arrays.fill(r12, r2)
            r3 = 0
        L17:
            if (r3 >= r11) goto L77
            int r4 = r3 * 2
            int r5 = r4 + r13
            r6 = r10[r5]
            r7 = r13 ^ 1
            int r4 = r4 + r7
            r4 = r10[r4]
            com.google.common.collect.y.a(r6, r4)
            int r7 = r6.hashCode()
            int r7 = com.google.common.collect.h2.c(r7)
        L2f:
            r7 = r7 & r1
            r8 = r12[r7]
            if (r8 != r2) goto L39
            r12[r7] = r5
            int r3 = r3 + 1
            goto L17
        L39:
            r9 = r10[r8]
            boolean r9 = r9.equals(r6)
            if (r9 != 0) goto L44
            int r7 = r7 + 1
            goto L2f
        L44:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "Multiple entries with same key: "
            r12.append(r13)
            r12.append(r6)
            java.lang.String r13 = "="
            r12.append(r13)
            r12.append(r4)
            java.lang.String r1 = " and "
            r12.append(r1)
            r1 = r10[r8]
            r12.append(r1)
            r12.append(r13)
            r13 = r8 ^ 1
            r10 = r10[r13]
            r12.append(r10)
            java.lang.String r10 = r12.toString()
            r11.<init>(r10)
            throw r11
        L77:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.d4.n(java.lang.Object[], int, int, int):int[]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object o(@NullableDecl int[] iArr, @NullableDecl Object[] objArr, int i4, int i10, @NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        if (i4 == 1) {
            if (objArr[i10].equals(obj)) {
                return objArr[i10 ^ 1];
            }
            return null;
        } else if (iArr == null) {
            return null;
        } else {
            int length = iArr.length - 1;
            int c10 = h2.c(obj.hashCode());
            while (true) {
                int i11 = c10 & length;
                int i12 = iArr[i11];
                if (i12 == -1) {
                    return null;
                }
                if (objArr[i12].equals(obj)) {
                    return objArr[i12 ^ 1];
                }
                c10 = i11 + 1;
            }
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> c() {
        return new a(this, this.f33253g, 0, this.f33254h);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> d() {
        return new b(this, new c(this.f33253g, 0, this.f33254h));
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableCollection<V> e() {
        return new c(this.f33253g, 1, this.f33254h);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        return (V) o(this.f33252f, this.f33253g, this.f33254h, 0, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean j() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f33254h;
    }
}
