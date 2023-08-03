package com.google.common.collect;

import com.google.common.collect.o4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class LinkedHashMultimap<K, V> extends z2<K, V> {

    /* renamed from: l  reason: collision with root package name */
    private static final int f32861l = 16;

    /* renamed from: m  reason: collision with root package name */
    private static final int f32862m = 2;
    @h3.d

    /* renamed from: n  reason: collision with root package name */
    static final double f32863n = 1.0d;
    @h3.c

    /* renamed from: o  reason: collision with root package name */
    private static final long f32864o = 1;
    @h3.d

    /* renamed from: j  reason: collision with root package name */
    transient int f32865j;

    /* renamed from: k  reason: collision with root package name */
    private transient b<K, V> f32866k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        b<K, V> f32867a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        b<K, V> f32868b;

        a() {
            this.f32867a = LinkedHashMultimap.this.f32866k.f32875i;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                b<K, V> bVar = this.f32867a;
                this.f32868b = bVar;
                this.f32867a = bVar.f32875i;
                return bVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f32867a != LinkedHashMultimap.this.f32866k;
        }

        @Override // java.util.Iterator
        public void remove() {
            y.e(this.f32868b != null);
            LinkedHashMultimap.this.remove(this.f32868b.getKey(), this.f32868b.getValue());
            this.f32868b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.d
    /* loaded from: classes2.dex */
    public static final class b<K, V> extends j2<K, V> implements d<K, V> {

        /* renamed from: d  reason: collision with root package name */
        final int f32870d;
        @NullableDecl

        /* renamed from: e  reason: collision with root package name */
        b<K, V> f32871e;
        @NullableDecl

        /* renamed from: f  reason: collision with root package name */
        d<K, V> f32872f;
        @NullableDecl

        /* renamed from: g  reason: collision with root package name */
        d<K, V> f32873g;
        @NullableDecl

        /* renamed from: h  reason: collision with root package name */
        b<K, V> f32874h;
        @NullableDecl

        /* renamed from: i  reason: collision with root package name */
        b<K, V> f32875i;

        b(@NullableDecl K k10, @NullableDecl V v9, int i4, @NullableDecl b<K, V> bVar) {
            super(k10, v9);
            this.f32870d = i4;
            this.f32871e = bVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> a() {
            return this.f32872f;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> b() {
            return this.f32873g;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void c(d<K, V> dVar) {
            this.f32873g = dVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void d(d<K, V> dVar) {
            this.f32872f = dVar;
        }

        public b<K, V> e() {
            return this.f32874h;
        }

        public b<K, V> h() {
            return this.f32875i;
        }

        boolean i(@NullableDecl Object obj, int i4) {
            return this.f32870d == i4 && com.google.common.base.w.a(getValue(), obj);
        }

        public void j(b<K, V> bVar) {
            this.f32874h = bVar;
        }

        public void k(b<K, V> bVar) {
            this.f32875i = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.d
    /* loaded from: classes2.dex */
    public final class c extends o4.k<V> implements d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final K f32876a;
        @h3.d

        /* renamed from: b  reason: collision with root package name */
        b<K, V>[] f32877b;

        /* renamed from: c  reason: collision with root package name */
        private int f32878c = 0;

        /* renamed from: d  reason: collision with root package name */
        private int f32879d = 0;

        /* renamed from: e  reason: collision with root package name */
        private d<K, V> f32880e = this;

        /* renamed from: f  reason: collision with root package name */
        private d<K, V> f32881f = this;

        /* loaded from: classes2.dex */
        class a implements Iterator<V> {

            /* renamed from: a  reason: collision with root package name */
            d<K, V> f32883a;
            @NullableDecl

            /* renamed from: b  reason: collision with root package name */
            b<K, V> f32884b;

            /* renamed from: c  reason: collision with root package name */
            int f32885c;

            a() {
                this.f32883a = c.this.f32880e;
                this.f32885c = c.this.f32879d;
            }

            private void a() {
                if (c.this.f32879d != this.f32885c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                a();
                return this.f32883a != c.this;
            }

            @Override // java.util.Iterator
            public V next() {
                if (hasNext()) {
                    b<K, V> bVar = (b) this.f32883a;
                    V value = bVar.getValue();
                    this.f32884b = bVar;
                    this.f32883a = bVar.b();
                    return value;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                a();
                y.e(this.f32884b != null);
                c.this.remove(this.f32884b.getValue());
                this.f32885c = c.this.f32879d;
                this.f32884b = null;
            }
        }

        c(K k10, int i4) {
            this.f32876a = k10;
            this.f32877b = new b[h2.a(i4, LinkedHashMultimap.f32863n)];
        }

        private int g() {
            return this.f32877b.length - 1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void h() {
            if (h2.b(this.f32878c, this.f32877b.length, LinkedHashMultimap.f32863n)) {
                int length = this.f32877b.length * 2;
                b<K, V>[] bVarArr = new b[length];
                this.f32877b = bVarArr;
                int i4 = length - 1;
                for (d dVar = (d<K, V>) this.f32880e; dVar != this; dVar = (d<K, V>) dVar.b()) {
                    b<K, V> bVar = (b) dVar;
                    int i10 = bVar.f32870d & i4;
                    bVar.f32871e = bVarArr[i10];
                    bVarArr[i10] = bVar;
                }
            }
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> a() {
            return this.f32881f;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(@NullableDecl V v9) {
            int d4 = h2.d(v9);
            int g4 = g() & d4;
            b<K, V> bVar = this.f32877b[g4];
            for (b<K, V> bVar2 = bVar; bVar2 != null; bVar2 = bVar2.f32871e) {
                if (bVar2.i(v9, d4)) {
                    return false;
                }
            }
            b<K, V> bVar3 = new b<>(this.f32876a, v9, d4, bVar);
            LinkedHashMultimap.Q(this.f32881f, bVar3);
            LinkedHashMultimap.Q(bVar3, this);
            LinkedHashMultimap.P(LinkedHashMultimap.this.f32866k.e(), bVar3);
            LinkedHashMultimap.P(bVar3, LinkedHashMultimap.this.f32866k);
            this.f32877b[g4] = bVar3;
            this.f32878c++;
            this.f32879d++;
            h();
            return true;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> b() {
            return this.f32880e;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void c(d<K, V> dVar) {
            this.f32880e = dVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.f32877b, (Object) null);
            this.f32878c = 0;
            for (d<K, V> dVar = this.f32880e; dVar != this; dVar = dVar.b()) {
                LinkedHashMultimap.M((b) dVar);
            }
            LinkedHashMultimap.Q(this, this);
            this.f32879d++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            int d4 = h2.d(obj);
            for (b<K, V> bVar = this.f32877b[g() & d4]; bVar != null; bVar = bVar.f32871e) {
                if (bVar.i(obj, d4)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void d(d<K, V> dVar) {
            this.f32881f = dVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        public boolean remove(@NullableDecl Object obj) {
            int d4 = h2.d(obj);
            int g4 = g() & d4;
            b<K, V> bVar = null;
            for (b<K, V> bVar2 = this.f32877b[g4]; bVar2 != null; bVar2 = bVar2.f32871e) {
                if (bVar2.i(obj, d4)) {
                    if (bVar == null) {
                        this.f32877b[g4] = bVar2.f32871e;
                    } else {
                        bVar.f32871e = bVar2.f32871e;
                    }
                    LinkedHashMultimap.N(bVar2);
                    LinkedHashMultimap.M(bVar2);
                    this.f32878c--;
                    this.f32879d++;
                    return true;
                }
                bVar = bVar2;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f32878c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface d<K, V> {
        d<K, V> a();

        d<K, V> b();

        void c(d<K, V> dVar);

        void d(d<K, V> dVar);
    }

    private LinkedHashMultimap(int i4, int i10) {
        super(u3.e(i4));
        this.f32865j = 2;
        y.b(i10, "expectedValuesPerKey");
        this.f32865j = i10;
        b<K, V> bVar = new b<>(null, null, 0, null);
        this.f32866k = bVar;
        P(bVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void M(b<K, V> bVar) {
        P(bVar.e(), bVar.h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void N(d<K, V> dVar) {
        Q(dVar.a(), dVar.b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    private void O(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b<K, V> bVar = new b<>(null, null, 0, null);
        this.f32866k = bVar;
        P(bVar, bVar);
        this.f32865j = 2;
        int readInt = objectInputStream.readInt();
        Map e4 = u3.e(12);
        for (int i4 = 0; i4 < readInt; i4++) {
            Object readObject = objectInputStream.readObject();
            e4.put(readObject, t(readObject));
        }
        int readInt2 = objectInputStream.readInt();
        for (int i10 = 0; i10 < readInt2; i10++) {
            Object readObject2 = objectInputStream.readObject();
            ((Collection) e4.get(readObject2)).add(objectInputStream.readObject());
        }
        B(e4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void P(b<K, V> bVar, b<K, V> bVar2) {
        bVar.k(bVar2);
        bVar2.j(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void Q(d<K, V> dVar, d<K, V> dVar2) {
        dVar.c(dVar2);
        dVar2.d(dVar);
    }

    @h3.c
    private void R(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        for (K k10 : keySet()) {
            objectOutputStream.writeObject(k10);
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.m, com.google.common.collect.e
    /* renamed from: F */
    public Set<V> s() {
        return u3.f(this.f32865j);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3
    public void clear() {
        super.clear();
        b<K, V> bVar = this.f32866k;
        P(bVar, bVar);
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

    @Override // com.google.common.collect.m, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Set get(@NullableDecl Object obj) {
        return super.get((LinkedHashMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h
    Iterator<Map.Entry<K, V>> i() {
        return new a();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h
    Iterator<V> j() {
        return f3.O0(i());
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public Set<K> keySet() {
        return super.keySet();
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

    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Set removeAll(@NullableDecl Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((LinkedHashMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.e
    public Collection<V> t(K k10) {
        return new c(k10, this.f32865j);
    }

    @Override // com.google.common.collect.h
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    public Collection<V> values() {
        return super.values();
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i4, int i10) {
        return new LinkedHashMultimap<>(f3.o(i4), f3.o(i10));
    }

    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(@NullableDecl Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public Set<V> replaceValues(@NullableDecl K k10, Iterable<? extends V> iterable) {
        return super.replaceValues((LinkedHashMultimap<K, V>) k10, (Iterable) iterable);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(h3<? extends K, ? extends V> h3Var) {
        LinkedHashMultimap<K, V> create = create(h3Var.keySet().size(), 2);
        create.putAll(h3Var);
        return create;
    }
}
