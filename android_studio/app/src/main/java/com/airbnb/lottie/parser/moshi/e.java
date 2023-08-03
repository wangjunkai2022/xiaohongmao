package com.airbnb.lottie.parser.moshi;

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
/* loaded from: classes.dex */
public final class e<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: i  reason: collision with root package name */
    private static final Comparator<Comparable> f4685i = new a();

    /* renamed from: j  reason: collision with root package name */
    static final /* synthetic */ boolean f4686j = false;

    /* renamed from: a  reason: collision with root package name */
    Comparator<? super K> f4687a;

    /* renamed from: b  reason: collision with root package name */
    g<K, V>[] f4688b;

    /* renamed from: c  reason: collision with root package name */
    final g<K, V> f4689c;

    /* renamed from: d  reason: collision with root package name */
    int f4690d;

    /* renamed from: e  reason: collision with root package name */
    int f4691e;

    /* renamed from: f  reason: collision with root package name */
    int f4692f;

    /* renamed from: g  reason: collision with root package name */
    private e<K, V>.d f4693g;

    /* renamed from: h  reason: collision with root package name */
    private e<K, V>.C0035e f4694h;

    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes.dex */
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
    /* loaded from: classes.dex */
    public static final class b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private g<K, V> f4695a;

        /* renamed from: b  reason: collision with root package name */
        private int f4696b;

        /* renamed from: c  reason: collision with root package name */
        private int f4697c;

        /* renamed from: d  reason: collision with root package name */
        private int f4698d;

        b() {
        }

        void a(g<K, V> gVar) {
            gVar.f4710c = null;
            gVar.f4708a = null;
            gVar.f4709b = null;
            gVar.f4716i = 1;
            int i4 = this.f4696b;
            if (i4 > 0) {
                int i10 = this.f4698d;
                if ((i10 & 1) == 0) {
                    this.f4698d = i10 + 1;
                    this.f4696b = i4 - 1;
                    this.f4697c++;
                }
            }
            gVar.f4708a = this.f4695a;
            this.f4695a = gVar;
            int i11 = this.f4698d + 1;
            this.f4698d = i11;
            int i12 = this.f4696b;
            if (i12 > 0 && (i11 & 1) == 0) {
                this.f4698d = i11 + 1;
                this.f4696b = i12 - 1;
                this.f4697c++;
            }
            int i13 = 4;
            while (true) {
                int i14 = i13 - 1;
                if ((this.f4698d & i14) != i14) {
                    return;
                }
                int i15 = this.f4697c;
                if (i15 == 0) {
                    g<K, V> gVar2 = this.f4695a;
                    g<K, V> gVar3 = gVar2.f4708a;
                    g<K, V> gVar4 = gVar3.f4708a;
                    gVar3.f4708a = gVar4.f4708a;
                    this.f4695a = gVar3;
                    gVar3.f4709b = gVar4;
                    gVar3.f4710c = gVar2;
                    gVar3.f4716i = gVar2.f4716i + 1;
                    gVar4.f4708a = gVar3;
                    gVar2.f4708a = gVar3;
                } else if (i15 == 1) {
                    g<K, V> gVar5 = this.f4695a;
                    g<K, V> gVar6 = gVar5.f4708a;
                    this.f4695a = gVar6;
                    gVar6.f4710c = gVar5;
                    gVar6.f4716i = gVar5.f4716i + 1;
                    gVar5.f4708a = gVar6;
                    this.f4697c = 0;
                } else if (i15 == 2) {
                    this.f4697c = 0;
                }
                i13 *= 2;
            }
        }

        void b(int i4) {
            this.f4696b = ((Integer.highestOneBit(i4) * 2) - 1) - i4;
            this.f4698d = 0;
            this.f4697c = 0;
            this.f4695a = null;
        }

        g<K, V> c() {
            g<K, V> gVar = this.f4695a;
            if (gVar.f4708a == null) {
                return gVar;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes.dex */
    public static class c<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private g<K, V> f4699a;

        c() {
        }

        public g<K, V> a() {
            g<K, V> gVar = this.f4699a;
            if (gVar == null) {
                return null;
            }
            g<K, V> gVar2 = gVar.f4708a;
            gVar.f4708a = null;
            g<K, V> gVar3 = gVar.f4710c;
            while (true) {
                g<K, V> gVar4 = gVar2;
                gVar2 = gVar3;
                if (gVar2 != null) {
                    gVar2.f4708a = gVar4;
                    gVar3 = gVar2.f4709b;
                } else {
                    this.f4699a = gVar4;
                    return gVar;
                }
            }
        }

        void b(g<K, V> gVar) {
            g<K, V> gVar2 = null;
            while (gVar != null) {
                gVar.f4708a = gVar2;
                gVar2 = gVar;
                gVar = gVar.f4709b;
            }
            this.f4699a = gVar2;
        }
    }

    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes.dex */
    final class d extends AbstractSet<Map.Entry<K, V>> {

        /* compiled from: LinkedHashTreeMap.java */
        /* loaded from: classes.dex */
        class a extends e<K, V>.f<Map.Entry<K, V>> {
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
            e.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && e.this.e((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            g<K, V> e4;
            if ((obj instanceof Map.Entry) && (e4 = e.this.e((Map.Entry) obj)) != null) {
                e.this.j(e4, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e.this.f4690d;
        }
    }

    /* compiled from: LinkedHashTreeMap.java */
    /* renamed from: com.airbnb.lottie.parser.moshi.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    final class C0035e extends AbstractSet<K> {

        /* compiled from: LinkedHashTreeMap.java */
        /* renamed from: com.airbnb.lottie.parser.moshi.e$e$a */
        /* loaded from: classes.dex */
        class a extends e<K, V>.f<K> {
            a() {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f4713f;
            }
        }

        C0035e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return e.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return e.this.k(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e.this.f4690d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes.dex */
    public abstract class f<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        g<K, V> f4704a;

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f4705b = null;

        /* renamed from: c  reason: collision with root package name */
        int f4706c;

        f() {
            this.f4704a = e.this.f4689c.f4711d;
            this.f4706c = e.this.f4691e;
        }

        final g<K, V> a() {
            g<K, V> gVar = this.f4704a;
            e eVar = e.this;
            if (gVar != eVar.f4689c) {
                if (eVar.f4691e == this.f4706c) {
                    this.f4704a = gVar.f4711d;
                    this.f4705b = gVar;
                    return gVar;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f4704a != e.this.f4689c;
        }

        @Override // java.util.Iterator
        public final void remove() {
            g<K, V> gVar = this.f4705b;
            if (gVar != null) {
                e.this.j(gVar, true);
                this.f4705b = null;
                this.f4706c = e.this.f4691e;
                return;
            }
            throw new IllegalStateException();
        }
    }

    e() {
        this(null);
    }

    private void a() {
        g<K, V>[] b10 = b(this.f4688b);
        this.f4688b = b10;
        this.f4692f = (b10.length / 2) + (b10.length / 4);
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
                    } else if ((a10.f4714g & length) == 0) {
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
                    } else if ((a11.f4714g & length) == 0) {
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
            g<K, V> gVar2 = gVar.f4709b;
            g<K, V> gVar3 = gVar.f4710c;
            int i4 = gVar2 != null ? gVar2.f4716i : 0;
            int i10 = gVar3 != null ? gVar3.f4716i : 0;
            int i11 = i4 - i10;
            if (i11 == -2) {
                g<K, V> gVar4 = gVar3.f4709b;
                g<K, V> gVar5 = gVar3.f4710c;
                int i12 = (gVar4 != null ? gVar4.f4716i : 0) - (gVar5 != null ? gVar5.f4716i : 0);
                if (i12 != -1 && (i12 != 0 || z9)) {
                    n(gVar3);
                    m(gVar);
                } else {
                    m(gVar);
                }
                if (z9) {
                    return;
                }
            } else if (i11 == 2) {
                g<K, V> gVar6 = gVar2.f4709b;
                g<K, V> gVar7 = gVar2.f4710c;
                int i13 = (gVar6 != null ? gVar6.f4716i : 0) - (gVar7 != null ? gVar7.f4716i : 0);
                if (i13 != 1 && (i13 != 0 || z9)) {
                    m(gVar2);
                    n(gVar);
                } else {
                    n(gVar);
                }
                if (z9) {
                    return;
                }
            } else if (i11 == 0) {
                gVar.f4716i = i4 + 1;
                if (z9) {
                    return;
                }
            } else {
                gVar.f4716i = Math.max(i4, i10) + 1;
                if (!z9) {
                    return;
                }
            }
            gVar = gVar.f4708a;
        }
    }

    private void l(g<K, V> gVar, g<K, V> gVar2) {
        g<K, V> gVar3 = gVar.f4708a;
        gVar.f4708a = null;
        if (gVar2 != null) {
            gVar2.f4708a = gVar3;
        }
        if (gVar3 != null) {
            if (gVar3.f4709b == gVar) {
                gVar3.f4709b = gVar2;
                return;
            } else {
                gVar3.f4710c = gVar2;
                return;
            }
        }
        int i4 = gVar.f4714g;
        g<K, V>[] gVarArr = this.f4688b;
        gVarArr[i4 & (gVarArr.length - 1)] = gVar2;
    }

    private void m(g<K, V> gVar) {
        g<K, V> gVar2 = gVar.f4709b;
        g<K, V> gVar3 = gVar.f4710c;
        g<K, V> gVar4 = gVar3.f4709b;
        g<K, V> gVar5 = gVar3.f4710c;
        gVar.f4710c = gVar4;
        if (gVar4 != null) {
            gVar4.f4708a = gVar;
        }
        l(gVar, gVar3);
        gVar3.f4709b = gVar;
        gVar.f4708a = gVar3;
        int max = Math.max(gVar2 != null ? gVar2.f4716i : 0, gVar4 != null ? gVar4.f4716i : 0) + 1;
        gVar.f4716i = max;
        gVar3.f4716i = Math.max(max, gVar5 != null ? gVar5.f4716i : 0) + 1;
    }

    private void n(g<K, V> gVar) {
        g<K, V> gVar2 = gVar.f4709b;
        g<K, V> gVar3 = gVar.f4710c;
        g<K, V> gVar4 = gVar2.f4709b;
        g<K, V> gVar5 = gVar2.f4710c;
        gVar.f4709b = gVar5;
        if (gVar5 != null) {
            gVar5.f4708a = gVar;
        }
        l(gVar, gVar2);
        gVar2.f4710c = gVar;
        gVar.f4708a = gVar2;
        int max = Math.max(gVar3 != null ? gVar3.f4716i : 0, gVar5 != null ? gVar5.f4716i : 0) + 1;
        gVar.f4716i = max;
        gVar2.f4716i = Math.max(max, gVar4 != null ? gVar4.f4716i : 0) + 1;
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
        Arrays.fill(this.f4688b, (Object) null);
        this.f4690d = 0;
        this.f4691e++;
        g<K, V> gVar = this.f4689c;
        g<K, V> gVar2 = gVar.f4711d;
        while (gVar2 != gVar) {
            g<K, V> gVar3 = gVar2.f4711d;
            gVar2.f4712e = null;
            gVar2.f4711d = null;
            gVar2 = gVar3;
        }
        gVar.f4712e = gVar;
        gVar.f4711d = gVar;
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
        Comparator<? super K> comparator = this.f4687a;
        g<K, V>[] gVarArr = this.f4688b;
        int o9 = o(k10.hashCode());
        int length = (gVarArr.length - 1) & o9;
        g<K, V> gVar3 = gVarArr[length];
        if (gVar3 != null) {
            Comparable comparable = comparator == f4685i ? (Comparable) k10 : null;
            while (true) {
                if (comparable != null) {
                    compare = comparable.compareTo(gVar3.f4713f);
                } else {
                    compare = comparator.compare(k10, (K) gVar3.f4713f);
                }
                if (compare == 0) {
                    return gVar3;
                }
                g<K, V> gVar4 = compare < 0 ? gVar3.f4709b : gVar3.f4710c;
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
            g<K, V> gVar5 = this.f4689c;
            if (gVar == null) {
                if (comparator == f4685i && !(k10 instanceof Comparable)) {
                    throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
                }
                gVar2 = new g<>(gVar, k10, o9, gVar5, gVar5.f4712e);
                gVarArr[length] = gVar2;
            } else {
                gVar2 = new g<>(gVar, k10, o9, gVar5, gVar5.f4712e);
                if (i4 < 0) {
                    gVar.f4709b = gVar2;
                } else {
                    gVar.f4710c = gVar2;
                }
                i(gVar, true);
            }
            int i10 = this.f4690d;
            this.f4690d = i10 + 1;
            if (i10 > this.f4692f) {
                a();
            }
            this.f4691e++;
            return gVar2;
        }
        return null;
    }

    g<K, V> e(Map.Entry<?, ?> entry) {
        g<K, V> h4 = h(entry.getKey());
        if (h4 != null && c(h4.f4715h, entry.getValue())) {
            return h4;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        e<K, V>.d dVar = this.f4693g;
        if (dVar != null) {
            return dVar;
        }
        e<K, V>.d dVar2 = new d();
        this.f4693g = dVar2;
        return dVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        g<K, V> h4 = h(obj);
        if (h4 != null) {
            return h4.f4715h;
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
            g<K, V> gVar2 = gVar.f4712e;
            gVar2.f4711d = gVar.f4711d;
            gVar.f4711d.f4712e = gVar2;
            gVar.f4712e = null;
            gVar.f4711d = null;
        }
        g<K, V> gVar3 = gVar.f4709b;
        g<K, V> gVar4 = gVar.f4710c;
        g<K, V> gVar5 = gVar.f4708a;
        int i10 = 0;
        if (gVar3 != null && gVar4 != null) {
            g<K, V> b10 = gVar3.f4716i > gVar4.f4716i ? gVar3.b() : gVar4.a();
            j(b10, false);
            g<K, V> gVar6 = gVar.f4709b;
            if (gVar6 != null) {
                i4 = gVar6.f4716i;
                b10.f4709b = gVar6;
                gVar6.f4708a = b10;
                gVar.f4709b = null;
            } else {
                i4 = 0;
            }
            g<K, V> gVar7 = gVar.f4710c;
            if (gVar7 != null) {
                i10 = gVar7.f4716i;
                b10.f4710c = gVar7;
                gVar7.f4708a = b10;
                gVar.f4710c = null;
            }
            b10.f4716i = Math.max(i4, i10) + 1;
            l(gVar, b10);
            return;
        }
        if (gVar3 != null) {
            l(gVar, gVar3);
            gVar.f4709b = null;
        } else if (gVar4 != null) {
            l(gVar, gVar4);
            gVar.f4710c = null;
        } else {
            l(gVar, null);
        }
        i(gVar5, false);
        this.f4690d--;
        this.f4691e++;
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
        e<K, V>.C0035e c0035e = this.f4694h;
        if (c0035e != null) {
            return c0035e;
        }
        e<K, V>.C0035e c0035e2 = new C0035e();
        this.f4694h = c0035e2;
        return c0035e2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v9) {
        Objects.requireNonNull(k10, "key == null");
        g<K, V> d4 = d(k10, true);
        V v10 = d4.f4715h;
        d4.f4715h = v9;
        return v10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        g<K, V> k10 = k(obj);
        if (k10 != null) {
            return k10.f4715h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f4690d;
    }

    e(Comparator<? super K> comparator) {
        this.f4690d = 0;
        this.f4691e = 0;
        this.f4687a = comparator == null ? f4685i : comparator;
        this.f4689c = new g<>();
        g<K, V>[] gVarArr = new g[16];
        this.f4688b = gVarArr;
        this.f4692f = (gVarArr.length / 2) + (gVarArr.length / 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedHashTreeMap.java */
    /* loaded from: classes.dex */
    public static final class g<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        g<K, V> f4708a;

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f4709b;

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f4710c;

        /* renamed from: d  reason: collision with root package name */
        g<K, V> f4711d;

        /* renamed from: e  reason: collision with root package name */
        g<K, V> f4712e;

        /* renamed from: f  reason: collision with root package name */
        final K f4713f;

        /* renamed from: g  reason: collision with root package name */
        final int f4714g;

        /* renamed from: h  reason: collision with root package name */
        V f4715h;

        /* renamed from: i  reason: collision with root package name */
        int f4716i;

        g() {
            this.f4713f = null;
            this.f4714g = -1;
            this.f4712e = this;
            this.f4711d = this;
        }

        public g<K, V> a() {
            g<K, V> gVar = this;
            for (g<K, V> gVar2 = this.f4709b; gVar2 != null; gVar2 = gVar2.f4709b) {
                gVar = gVar2;
            }
            return gVar;
        }

        public g<K, V> b() {
            g<K, V> gVar = this;
            for (g<K, V> gVar2 = this.f4710c; gVar2 != null; gVar2 = gVar2.f4710c) {
                gVar = gVar2;
            }
            return gVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k10 = this.f4713f;
                if (k10 == null) {
                    if (entry.getKey() != null) {
                        return false;
                    }
                } else if (!k10.equals(entry.getKey())) {
                    return false;
                }
                V v9 = this.f4715h;
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
            return this.f4713f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f4715h;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f4713f;
            int hashCode = k10 == null ? 0 : k10.hashCode();
            V v9 = this.f4715h;
            return hashCode ^ (v9 != null ? v9.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v9) {
            V v10 = this.f4715h;
            this.f4715h = v9;
            return v10;
        }

        public String toString() {
            return this.f4713f + "=" + this.f4715h;
        }

        g(g<K, V> gVar, K k10, int i4, g<K, V> gVar2, g<K, V> gVar3) {
            this.f4708a = gVar;
            this.f4713f = k10;
            this.f4714g = i4;
            this.f4716i = 1;
            this.f4711d = gVar2;
            this.f4712e = gVar3;
            gVar3.f4711d = this;
            gVar2.f4712e = this;
        }
    }
}
