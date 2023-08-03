package com.squareup.moshi;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LinkedHashTreeMap.java */
/* loaded from: classes3.dex */
public final class s<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: i  reason: collision with root package name */
    private static final Comparator<Comparable> f55688i = new a();

    /* renamed from: j  reason: collision with root package name */
    static final /* synthetic */ boolean f55689j = false;

    /* renamed from: a  reason: collision with root package name */
    final Comparator<? super K> f55690a;

    /* renamed from: b  reason: collision with root package name */
    g<K, V>[] f55691b;

    /* renamed from: c  reason: collision with root package name */
    final g<K, V> f55692c;

    /* renamed from: d  reason: collision with root package name */
    int f55693d;

    /* renamed from: e  reason: collision with root package name */
    int f55694e;

    /* renamed from: f  reason: collision with root package name */
    int f55695f;

    /* renamed from: g  reason: collision with root package name */
    private s<K, V>.d f55696g;

    /* renamed from: h  reason: collision with root package name */
    private s<K, V>.e f55697h;

    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes3.dex */
    class a implements Comparator<Comparable> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes3.dex */
    public static final class b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private g<K, V> f55698a;

        /* renamed from: b  reason: collision with root package name */
        private int f55699b;

        /* renamed from: c  reason: collision with root package name */
        private int f55700c;

        /* renamed from: d  reason: collision with root package name */
        private int f55701d;

        b() {
        }

        void a(g<K, V> gVar) {
            gVar.f55713c = null;
            gVar.f55711a = null;
            gVar.f55712b = null;
            gVar.f55719i = 1;
            int i4 = this.f55699b;
            if (i4 > 0) {
                int i10 = this.f55701d;
                if ((i10 & 1) == 0) {
                    this.f55701d = i10 + 1;
                    this.f55699b = i4 - 1;
                    this.f55700c++;
                }
            }
            gVar.f55711a = this.f55698a;
            this.f55698a = gVar;
            int i11 = this.f55701d + 1;
            this.f55701d = i11;
            int i12 = this.f55699b;
            if (i12 > 0 && (i11 & 1) == 0) {
                this.f55701d = i11 + 1;
                this.f55699b = i12 - 1;
                this.f55700c++;
            }
            int i13 = 4;
            while (true) {
                int i14 = i13 - 1;
                if ((this.f55701d & i14) != i14) {
                    return;
                }
                int i15 = this.f55700c;
                if (i15 == 0) {
                    g<K, V> gVar2 = this.f55698a;
                    g<K, V> gVar3 = gVar2.f55711a;
                    g<K, V> gVar4 = gVar3.f55711a;
                    gVar3.f55711a = gVar4.f55711a;
                    this.f55698a = gVar3;
                    gVar3.f55712b = gVar4;
                    gVar3.f55713c = gVar2;
                    gVar3.f55719i = gVar2.f55719i + 1;
                    gVar4.f55711a = gVar3;
                    gVar2.f55711a = gVar3;
                } else if (i15 == 1) {
                    g<K, V> gVar5 = this.f55698a;
                    g<K, V> gVar6 = gVar5.f55711a;
                    this.f55698a = gVar6;
                    gVar6.f55713c = gVar5;
                    gVar6.f55719i = gVar5.f55719i + 1;
                    gVar5.f55711a = gVar6;
                    this.f55700c = 0;
                } else if (i15 == 2) {
                    this.f55700c = 0;
                }
                i13 *= 2;
            }
        }

        void b(int i4) {
            this.f55699b = ((Integer.highestOneBit(i4) * 2) - 1) - i4;
            this.f55701d = 0;
            this.f55700c = 0;
            this.f55698a = null;
        }

        g<K, V> c() {
            g<K, V> gVar = this.f55698a;
            if (gVar.f55711a == null) {
                return gVar;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes3.dex */
    public static class c<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private g<K, V> f55702a;

        c() {
        }

        public g<K, V> a() {
            g<K, V> gVar = this.f55702a;
            if (gVar == null) {
                return null;
            }
            g<K, V> gVar2 = gVar.f55711a;
            gVar.f55711a = null;
            g<K, V> gVar3 = gVar.f55713c;
            while (true) {
                g<K, V> gVar4 = gVar2;
                gVar2 = gVar3;
                if (gVar2 != null) {
                    gVar2.f55711a = gVar4;
                    gVar3 = gVar2.f55712b;
                } else {
                    this.f55702a = gVar4;
                    return gVar;
                }
            }
        }

        void b(g<K, V> gVar) {
            g<K, V> gVar2 = null;
            while (gVar != null) {
                gVar.f55711a = gVar2;
                gVar2 = gVar;
                gVar = gVar.f55712b;
            }
            this.f55702a = gVar2;
        }
    }

    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes3.dex */
    final class d extends AbstractSet<Map.Entry<K, V>> {

        /* compiled from: LinkedHashTreeMap.java */
        /* loaded from: classes3.dex */
        class a extends s<K, V>.f<Map.Entry<K, V>> {
            a() {
                super();
            }

            @Override // java.util.Iterator
            /* renamed from: b */
            public Map.Entry<K, V> next() {
                return a();
            }
        }

        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            s.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && s.this.e((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            g<K, V> e4;
            if ((obj instanceof Map.Entry) && (e4 = s.this.e((Map.Entry) obj)) != null) {
                s.this.j(e4, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.f55693d;
        }
    }

    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes3.dex */
    final class e extends AbstractSet<K> {

        /* compiled from: LinkedHashTreeMap.java */
        /* loaded from: classes3.dex */
        class a extends s<K, V>.f<K> {
            a() {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f55716f;
            }
        }

        e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            s.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return s.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return s.this.k(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.f55693d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes3.dex */
    public abstract class f<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        g<K, V> f55707a;

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f55708b = null;

        /* renamed from: c  reason: collision with root package name */
        int f55709c;

        f() {
            this.f55707a = s.this.f55692c.f55714d;
            this.f55709c = s.this.f55694e;
        }

        final g<K, V> a() {
            g<K, V> gVar = this.f55707a;
            s sVar = s.this;
            if (gVar != sVar.f55692c) {
                if (sVar.f55694e == this.f55709c) {
                    this.f55707a = gVar.f55714d;
                    this.f55708b = gVar;
                    return gVar;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f55707a != s.this.f55692c;
        }

        @Override // java.util.Iterator
        public final void remove() {
            g<K, V> gVar = this.f55708b;
            if (gVar != null) {
                s.this.j(gVar, true);
                this.f55708b = null;
                this.f55709c = s.this.f55694e;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s() {
        this(null);
    }

    private void a() {
        g<K, V>[] b10 = b(this.f55691b);
        this.f55691b = b10;
        this.f55695f = (b10.length / 2) + (b10.length / 4);
    }

    static <K, V> g<K, V>[] b(g<K, V>[] gVarArr) {
        int length = gVarArr.length;
        g<K, V>[] gVarArr2 = new g[length * 2];
        c cVar = new c();
        b bVar = new b();
        b bVar2 = new b();
        for (int i4 = 0; i4 < length; i4++) {
            g<K, V> gVar = gVarArr[i4];
            if (gVar != null) {
                cVar.b(gVar);
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    g<K, V> a10 = cVar.a();
                    if (a10 == null) {
                        break;
                    } else if ((a10.f55717g & length) == 0) {
                        i10++;
                    } else {
                        i11++;
                    }
                }
                bVar.b(i10);
                bVar2.b(i11);
                cVar.b(gVar);
                while (true) {
                    g<K, V> a11 = cVar.a();
                    if (a11 == null) {
                        break;
                    } else if ((a11.f55717g & length) == 0) {
                        bVar.a(a11);
                    } else {
                        bVar2.a(a11);
                    }
                }
                gVarArr2[i4] = i10 > 0 ? bVar.c() : null;
                gVarArr2[i4 + length] = i11 > 0 ? bVar2.c() : null;
            }
        }
        return gVarArr2;
    }

    private boolean c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void i(g<K, V> gVar, boolean z9) {
        while (gVar != null) {
            g<K, V> gVar2 = gVar.f55712b;
            g<K, V> gVar3 = gVar.f55713c;
            int i4 = gVar2 != null ? gVar2.f55719i : 0;
            int i10 = gVar3 != null ? gVar3.f55719i : 0;
            int i11 = i4 - i10;
            if (i11 == -2) {
                g<K, V> gVar4 = gVar3.f55712b;
                g<K, V> gVar5 = gVar3.f55713c;
                int i12 = (gVar4 != null ? gVar4.f55719i : 0) - (gVar5 != null ? gVar5.f55719i : 0);
                if (i12 != -1 && (i12 != 0 || z9)) {
                    n(gVar3);
                }
                m(gVar);
                if (z9) {
                    return;
                }
            } else if (i11 == 2) {
                g<K, V> gVar6 = gVar2.f55712b;
                g<K, V> gVar7 = gVar2.f55713c;
                int i13 = (gVar6 != null ? gVar6.f55719i : 0) - (gVar7 != null ? gVar7.f55719i : 0);
                if (i13 != 1 && (i13 != 0 || z9)) {
                    m(gVar2);
                }
                n(gVar);
                if (z9) {
                    return;
                }
            } else if (i11 == 0) {
                gVar.f55719i = i4 + 1;
                if (z9) {
                    return;
                }
            } else {
                gVar.f55719i = Math.max(i4, i10) + 1;
                if (!z9) {
                    return;
                }
            }
            gVar = gVar.f55711a;
        }
    }

    private void l(g<K, V> gVar, g<K, V> gVar2) {
        g<K, V> gVar3 = gVar.f55711a;
        gVar.f55711a = null;
        if (gVar2 != null) {
            gVar2.f55711a = gVar3;
        }
        if (gVar3 != null) {
            if (gVar3.f55712b == gVar) {
                gVar3.f55712b = gVar2;
                return;
            } else {
                gVar3.f55713c = gVar2;
                return;
            }
        }
        int i4 = gVar.f55717g;
        g<K, V>[] gVarArr = this.f55691b;
        gVarArr[i4 & (gVarArr.length - 1)] = gVar2;
    }

    private void m(g<K, V> gVar) {
        g<K, V> gVar2 = gVar.f55712b;
        g<K, V> gVar3 = gVar.f55713c;
        g<K, V> gVar4 = gVar3.f55712b;
        g<K, V> gVar5 = gVar3.f55713c;
        gVar.f55713c = gVar4;
        if (gVar4 != null) {
            gVar4.f55711a = gVar;
        }
        l(gVar, gVar3);
        gVar3.f55712b = gVar;
        gVar.f55711a = gVar3;
        int max = Math.max(gVar2 != null ? gVar2.f55719i : 0, gVar4 != null ? gVar4.f55719i : 0) + 1;
        gVar.f55719i = max;
        gVar3.f55719i = Math.max(max, gVar5 != null ? gVar5.f55719i : 0) + 1;
    }

    private void n(g<K, V> gVar) {
        g<K, V> gVar2 = gVar.f55712b;
        g<K, V> gVar3 = gVar.f55713c;
        g<K, V> gVar4 = gVar2.f55712b;
        g<K, V> gVar5 = gVar2.f55713c;
        gVar.f55712b = gVar5;
        if (gVar5 != null) {
            gVar5.f55711a = gVar;
        }
        l(gVar, gVar2);
        gVar2.f55713c = gVar;
        gVar.f55711a = gVar2;
        int max = Math.max(gVar3 != null ? gVar3.f55719i : 0, gVar5 != null ? gVar5.f55719i : 0) + 1;
        gVar.f55719i = max;
        gVar2.f55719i = Math.max(max, gVar4 != null ? gVar4.f55719i : 0) + 1;
    }

    private static int o(int i4) {
        int i10 = i4 ^ ((i4 >>> 20) ^ (i4 >>> 12));
        return (i10 >>> 4) ^ ((i10 >>> 7) ^ i10);
    }

    private Object p() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.f55691b, (Object) null);
        this.f55693d = 0;
        this.f55694e++;
        g<K, V> gVar = this.f55692c;
        g<K, V> gVar2 = gVar.f55714d;
        while (gVar2 != gVar) {
            g<K, V> gVar3 = gVar2.f55714d;
            gVar2.f55715e = null;
            gVar2.f55714d = null;
            gVar2 = gVar3;
        }
        gVar.f55715e = gVar;
        gVar.f55714d = gVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return h(obj) != null;
    }

    g<K, V> d(K k10, boolean z9) {
        g<K, V> gVar;
        int i4;
        g<K, V> gVar2;
        int compare;
        Comparator<? super K> comparator = this.f55690a;
        g<K, V>[] gVarArr = this.f55691b;
        int o9 = o(k10.hashCode());
        int length = (gVarArr.length - 1) & o9;
        g<K, V> gVar3 = gVarArr[length];
        if (gVar3 != null) {
            Comparable comparable = comparator == f55688i ? (Comparable) k10 : null;
            while (true) {
                if (comparable != null) {
                    compare = comparable.compareTo(gVar3.f55716f);
                } else {
                    compare = comparator.compare(k10, (K) gVar3.f55716f);
                }
                if (compare == 0) {
                    return gVar3;
                }
                g<K, V> gVar4 = compare < 0 ? gVar3.f55712b : gVar3.f55713c;
                if (gVar4 == null) {
                    gVar = gVar3;
                    i4 = compare;
                    break;
                }
                gVar3 = gVar4;
            }
        } else {
            gVar = gVar3;
            i4 = 0;
        }
        if (z9) {
            g<K, V> gVar5 = this.f55692c;
            if (gVar == null) {
                if (comparator == f55688i && !(k10 instanceof Comparable)) {
                    throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
                }
                gVar2 = new g<>(gVar, k10, o9, gVar5, gVar5.f55715e);
                gVarArr[length] = gVar2;
            } else {
                gVar2 = new g<>(gVar, k10, o9, gVar5, gVar5.f55715e);
                if (i4 < 0) {
                    gVar.f55712b = gVar2;
                } else {
                    gVar.f55713c = gVar2;
                }
                i(gVar, true);
            }
            int i10 = this.f55693d;
            this.f55693d = i10 + 1;
            if (i10 > this.f55695f) {
                a();
            }
            this.f55694e++;
            return gVar2;
        }
        return null;
    }

    g<K, V> e(Map.Entry<?, ?> entry) {
        g<K, V> h4 = h(entry.getKey());
        if (h4 != null && c(h4.f55718h, entry.getValue())) {
            return h4;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        s<K, V>.d dVar = this.f55696g;
        if (dVar != null) {
            return dVar;
        }
        s<K, V>.d dVar2 = new d();
        this.f55696g = dVar2;
        return dVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        g<K, V> h4 = h(obj);
        if (h4 != null) {
            return h4.f55718h;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    g<K, V> h(Object obj) {
        if (obj != 0) {
            try {
                return d(obj, false);
            } catch (ClassCastException unused) {
                return null;
            }
        }
        return null;
    }

    void j(g<K, V> gVar, boolean z9) {
        int i4;
        if (z9) {
            g<K, V> gVar2 = gVar.f55715e;
            gVar2.f55714d = gVar.f55714d;
            gVar.f55714d.f55715e = gVar2;
            gVar.f55715e = null;
            gVar.f55714d = null;
        }
        g<K, V> gVar3 = gVar.f55712b;
        g<K, V> gVar4 = gVar.f55713c;
        g<K, V> gVar5 = gVar.f55711a;
        int i10 = 0;
        if (gVar3 != null && gVar4 != null) {
            g<K, V> b10 = gVar3.f55719i > gVar4.f55719i ? gVar3.b() : gVar4.a();
            j(b10, false);
            g<K, V> gVar6 = gVar.f55712b;
            if (gVar6 != null) {
                i4 = gVar6.f55719i;
                b10.f55712b = gVar6;
                gVar6.f55711a = b10;
                gVar.f55712b = null;
            } else {
                i4 = 0;
            }
            g<K, V> gVar7 = gVar.f55713c;
            if (gVar7 != null) {
                i10 = gVar7.f55719i;
                b10.f55713c = gVar7;
                gVar7.f55711a = b10;
                gVar.f55713c = null;
            }
            b10.f55719i = Math.max(i4, i10) + 1;
            l(gVar, b10);
            return;
        }
        if (gVar3 != null) {
            l(gVar, gVar3);
            gVar.f55712b = null;
        } else if (gVar4 != null) {
            l(gVar, gVar4);
            gVar.f55713c = null;
        } else {
            l(gVar, null);
        }
        i(gVar5, false);
        this.f55693d--;
        this.f55694e++;
    }

    g<K, V> k(Object obj) {
        g<K, V> h4 = h(obj);
        if (h4 != null) {
            j(h4, true);
        }
        return h4;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        s<K, V>.e eVar = this.f55697h;
        if (eVar != null) {
            return eVar;
        }
        s<K, V>.e eVar2 = new e();
        this.f55697h = eVar2;
        return eVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v9) {
        Objects.requireNonNull(k10, "key == null");
        g<K, V> d4 = d(k10, true);
        V v10 = d4.f55718h;
        d4.f55718h = v9;
        return v10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        g<K, V> k10 = k(obj);
        if (k10 != null) {
            return k10.f55718h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f55693d;
    }

    s(Comparator<? super K> comparator) {
        this.f55693d = 0;
        this.f55694e = 0;
        this.f55690a = comparator == null ? f55688i : comparator;
        this.f55692c = new g<>();
        g<K, V>[] gVarArr = new g[16];
        this.f55691b = gVarArr;
        this.f55695f = (gVarArr.length / 2) + (gVarArr.length / 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes3.dex */
    public static final class g<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        g<K, V> f55711a;

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f55712b;

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f55713c;

        /* renamed from: d  reason: collision with root package name */
        g<K, V> f55714d;

        /* renamed from: e  reason: collision with root package name */
        g<K, V> f55715e;

        /* renamed from: f  reason: collision with root package name */
        final K f55716f;

        /* renamed from: g  reason: collision with root package name */
        final int f55717g;

        /* renamed from: h  reason: collision with root package name */
        V f55718h;

        /* renamed from: i  reason: collision with root package name */
        int f55719i;

        g() {
            this.f55716f = null;
            this.f55717g = -1;
            this.f55715e = this;
            this.f55714d = this;
        }

        public g<K, V> a() {
            g<K, V> gVar = this;
            for (g<K, V> gVar2 = this.f55712b; gVar2 != null; gVar2 = gVar2.f55712b) {
                gVar = gVar2;
            }
            return gVar;
        }

        public g<K, V> b() {
            g<K, V> gVar = this;
            for (g<K, V> gVar2 = this.f55713c; gVar2 != null; gVar2 = gVar2.f55713c) {
                gVar = gVar2;
            }
            return gVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k10 = this.f55716f;
                if (k10 == null) {
                    if (entry.getKey() != null) {
                        return false;
                    }
                } else if (!k10.equals(entry.getKey())) {
                    return false;
                }
                V v9 = this.f55718h;
                if (v9 == null) {
                    if (entry.getValue() != null) {
                        return false;
                    }
                } else if (!v9.equals(entry.getValue())) {
                    return false;
                }
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f55716f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f55718h;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f55716f;
            int hashCode = k10 == null ? 0 : k10.hashCode();
            V v9 = this.f55718h;
            return hashCode ^ (v9 != null ? v9.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v9) {
            V v10 = this.f55718h;
            this.f55718h = v9;
            return v10;
        }

        public String toString() {
            return this.f55716f + "=" + this.f55718h;
        }

        g(g<K, V> gVar, K k10, int i4, g<K, V> gVar2, g<K, V> gVar3) {
            this.f55711a = gVar;
            this.f55716f = k10;
            this.f55717g = i4;
            this.f55719i = 1;
            this.f55714d = gVar2;
            this.f55715e = gVar3;
            gVar3.f55714d = this;
            gVar2.f55715e = this;
        }
    }
}
