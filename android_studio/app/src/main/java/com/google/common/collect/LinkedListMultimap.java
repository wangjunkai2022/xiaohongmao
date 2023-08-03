package com.google.common.collect;

import com.google.common.collect.j3;
import com.google.common.collect.o4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class LinkedListMultimap<K, V> extends com.google.common.collect.h<K, V> implements a3<K, V>, Serializable {
    @h3.c

    /* renamed from: k  reason: collision with root package name */
    private static final long f32887k = 0;
    @NullableDecl

    /* renamed from: f  reason: collision with root package name */
    private transient g<K, V> f32888f;
    @NullableDecl

    /* renamed from: g  reason: collision with root package name */
    private transient g<K, V> f32889g;

    /* renamed from: h  reason: collision with root package name */
    private transient Map<K, f<K, V>> f32890h;

    /* renamed from: i  reason: collision with root package name */
    private transient int f32891i;

    /* renamed from: j  reason: collision with root package name */
    private transient int f32892j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends AbstractSequentialList<V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f32893a;

        a(Object obj) {
            this.f32893a = obj;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i4) {
            return new i(this.f32893a, i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            f fVar = (f) LinkedListMultimap.this.f32890h.get(this.f32893a);
            if (fVar == null) {
                return 0;
            }
            return fVar.f32907c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends AbstractSequentialList<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<Map.Entry<K, V>> listIterator(int i4) {
            return new h(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.f32891i;
        }
    }

    /* loaded from: classes2.dex */
    class c extends o4.k<K> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedListMultimap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new e(LinkedListMultimap.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return !LinkedListMultimap.this.removeAll(obj).isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedListMultimap.this.f32890h.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends AbstractSequentialList<V> {

        /* loaded from: classes2.dex */
        class a extends h5<Map.Entry<K, V>, V> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h f32898b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ListIterator listIterator, h hVar) {
                super(listIterator);
                this.f32898b = hVar;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.g5
            /* renamed from: c */
            public V a(Map.Entry<K, V> entry) {
                return entry.getValue();
            }

            @Override // com.google.common.collect.h5, java.util.ListIterator
            public void set(V v9) {
                this.f32898b.f(v9);
            }
        }

        d() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i4) {
            h hVar = new h(i4);
            return new a(hVar, hVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.f32891i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class f<K, V> {

        /* renamed from: a  reason: collision with root package name */
        g<K, V> f32905a;

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f32906b;

        /* renamed from: c  reason: collision with root package name */
        int f32907c;

        f(g<K, V> gVar) {
            this.f32905a = gVar;
            this.f32906b = gVar;
            gVar.f32913f = null;
            gVar.f32912e = null;
            this.f32907c = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g<K, V> extends com.google.common.collect.g<K, V> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        final K f32908a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        V f32909b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f32910c;
        @NullableDecl

        /* renamed from: d  reason: collision with root package name */
        g<K, V> f32911d;
        @NullableDecl

        /* renamed from: e  reason: collision with root package name */
        g<K, V> f32912e;
        @NullableDecl

        /* renamed from: f  reason: collision with root package name */
        g<K, V> f32913f;

        g(@NullableDecl K k10, @NullableDecl V v9) {
            this.f32908a = k10;
            this.f32909b = v9;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public K getKey() {
            return this.f32908a;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V getValue() {
            return this.f32909b;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V setValue(@NullableDecl V v9) {
            V v10 = this.f32909b;
            this.f32909b = v9;
            return v10;
        }
    }

    /* loaded from: classes2.dex */
    private class h implements ListIterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        int f32914a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f32915b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f32916c;
        @NullableDecl

        /* renamed from: d  reason: collision with root package name */
        g<K, V> f32917d;

        /* renamed from: e  reason: collision with root package name */
        int f32918e;

        h(int i4) {
            this.f32918e = LinkedListMultimap.this.f32892j;
            int size = LinkedListMultimap.this.size();
            com.google.common.base.a0.d0(i4, size);
            if (i4 >= size / 2) {
                this.f32917d = LinkedListMultimap.this.f32889g;
                this.f32914a = size;
                while (true) {
                    int i10 = i4 + 1;
                    if (i4 >= size) {
                        break;
                    }
                    previous();
                    i4 = i10;
                }
            } else {
                this.f32915b = LinkedListMultimap.this.f32888f;
                while (true) {
                    int i11 = i4 - 1;
                    if (i4 <= 0) {
                        break;
                    }
                    next();
                    i4 = i11;
                }
            }
            this.f32916c = null;
        }

        private void b() {
            if (LinkedListMultimap.this.f32892j != this.f32918e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        /* renamed from: a */
        public void add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @CanIgnoreReturnValue
        /* renamed from: c */
        public g<K, V> next() {
            b();
            LinkedListMultimap.u(this.f32915b);
            g<K, V> gVar = this.f32915b;
            this.f32916c = gVar;
            this.f32917d = gVar;
            this.f32915b = gVar.f32910c;
            this.f32914a++;
            return gVar;
        }

        @Override // java.util.ListIterator
        @CanIgnoreReturnValue
        /* renamed from: d */
        public g<K, V> previous() {
            b();
            LinkedListMultimap.u(this.f32917d);
            g<K, V> gVar = this.f32917d;
            this.f32916c = gVar;
            this.f32915b = gVar;
            this.f32917d = gVar.f32911d;
            this.f32914a--;
            return gVar;
        }

        @Override // java.util.ListIterator
        /* renamed from: e */
        public void set(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        void f(V v9) {
            com.google.common.base.a0.g0(this.f32916c != null);
            this.f32916c.f32909b = v9;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            b();
            return this.f32915b != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            b();
            return this.f32917d != null;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f32914a;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f32914a - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            b();
            y.e(this.f32916c != null);
            g<K, V> gVar = this.f32916c;
            if (gVar != this.f32915b) {
                this.f32917d = gVar.f32911d;
                this.f32914a--;
            } else {
                this.f32915b = gVar.f32910c;
            }
            LinkedListMultimap.this.B(gVar);
            this.f32916c = null;
            this.f32918e = LinkedListMultimap.this.f32892j;
        }
    }

    LinkedListMultimap() {
        this(12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(@NullableDecl Object obj) {
        x2.h(new i(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(g<K, V> gVar) {
        g<K, V> gVar2 = gVar.f32911d;
        if (gVar2 != null) {
            gVar2.f32910c = gVar.f32910c;
        } else {
            this.f32888f = gVar.f32910c;
        }
        g<K, V> gVar3 = gVar.f32910c;
        if (gVar3 != null) {
            gVar3.f32911d = gVar2;
        } else {
            this.f32889g = gVar2;
        }
        if (gVar.f32913f == null && gVar.f32912e == null) {
            this.f32890h.remove(gVar.f32908a).f32907c = 0;
            this.f32892j++;
        } else {
            f<K, V> fVar = this.f32890h.get(gVar.f32908a);
            fVar.f32907c--;
            g<K, V> gVar4 = gVar.f32913f;
            if (gVar4 == null) {
                fVar.f32905a = gVar.f32912e;
            } else {
                gVar4.f32912e = gVar.f32912e;
            }
            g<K, V> gVar5 = gVar.f32912e;
            if (gVar5 == null) {
                fVar.f32906b = gVar4;
            } else {
                gVar5.f32913f = gVar4;
            }
        }
        this.f32891i--;
    }

    @h3.c
    private void C(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public g<K, V> t(@NullableDecl K k10, @NullableDecl V v9, @NullableDecl g<K, V> gVar) {
        g<K, V> gVar2 = new g<>(k10, v9);
        if (this.f32888f == null) {
            this.f32889g = gVar2;
            this.f32888f = gVar2;
            this.f32890h.put(k10, new f<>(gVar2));
            this.f32892j++;
        } else if (gVar == null) {
            g<K, V> gVar3 = this.f32889g;
            gVar3.f32910c = gVar2;
            gVar2.f32911d = gVar3;
            this.f32889g = gVar2;
            f<K, V> fVar = this.f32890h.get(k10);
            if (fVar == null) {
                this.f32890h.put(k10, new f<>(gVar2));
                this.f32892j++;
            } else {
                fVar.f32907c++;
                g<K, V> gVar4 = fVar.f32906b;
                gVar4.f32912e = gVar2;
                gVar2.f32913f = gVar4;
                fVar.f32906b = gVar2;
            }
        } else {
            this.f32890h.get(k10).f32907c++;
            gVar2.f32911d = gVar.f32911d;
            gVar2.f32913f = gVar.f32913f;
            gVar2.f32910c = gVar;
            gVar2.f32912e = gVar;
            g<K, V> gVar5 = gVar.f32913f;
            if (gVar5 == null) {
                this.f32890h.get(k10).f32905a = gVar2;
            } else {
                gVar5.f32912e = gVar2;
            }
            g<K, V> gVar6 = gVar.f32911d;
            if (gVar6 == null) {
                this.f32888f = gVar2;
            } else {
                gVar6.f32910c = gVar2;
            }
            gVar.f32911d = gVar2;
            gVar.f32913f = gVar2;
        }
        this.f32891i++;
        return gVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void u(@NullableDecl Object obj) {
        if (obj == null) {
            throw new NoSuchElementException();
        }
    }

    private List<V> y(@NullableDecl Object obj) {
        return Collections.unmodifiableList(b3.s(new i(obj)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    private void z(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f32890h = c0.L();
        int readInt = objectInputStream.readInt();
        for (int i4 = 0; i4 < readInt; i4++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.h
    Map<K, Collection<V>> b() {
        return new j3.a(this);
    }

    @Override // com.google.common.collect.h3
    public void clear() {
        this.f32888f = null;
        this.f32889g = null;
        this.f32890h.clear();
        this.f32891i = 0;
        this.f32892j++;
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.h3
    public boolean containsKey(@NullableDecl Object obj) {
        return this.f32890h.containsKey(obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.h
    Set<K> d() {
        return new c();
    }

    @Override // com.google.common.collect.h
    k3<K> e() {
        return new j3.g(this);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((LinkedListMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.h
    Iterator<Map.Entry<K, V>> i() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public boolean isEmpty() {
        return this.f32888f == null;
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ k3 keys() {
        return super.keys();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public boolean put(@NullableDecl K k10, @NullableDecl V v9) {
        t(k10, v9, null);
        return true;
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((LinkedListMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.h3
    public int size() {
        return this.f32891i;
    }

    @Override // com.google.common.collect.h
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.h
    /* renamed from: w */
    public List<Map.Entry<K, V>> c() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.h
    /* renamed from: x */
    public List<V> h() {
        return new d();
    }

    private LinkedListMultimap(int i4) {
        this.f32890h = u3.c(i4);
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i4) {
        return new LinkedListMultimap<>(i4);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public List<V> get(@NullableDecl K k10) {
        return new a(k10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(@NullableDecl Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public List<V> removeAll(@NullableDecl Object obj) {
        List<V> y9 = y(obj);
        A(obj);
        return y9;
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public List<V> replaceValues(@NullableDecl K k10, Iterable<? extends V> iterable) {
        List<V> y9 = y(k10);
        i iVar = new i(k10);
        Iterator<? extends V> it = iterable.iterator();
        while (iVar.hasNext() && it.hasNext()) {
            iVar.next();
            iVar.set(it.next());
        }
        while (iVar.hasNext()) {
            iVar.next();
            iVar.remove();
        }
        while (it.hasNext()) {
            iVar.add(it.next());
        }
        return y9;
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public List<V> values() {
        return (List) super.values();
    }

    public static <K, V> LinkedListMultimap<K, V> create(h3<? extends K, ? extends V> h3Var) {
        return new LinkedListMultimap<>(h3Var);
    }

    /* loaded from: classes2.dex */
    private class e implements Iterator<K> {

        /* renamed from: a  reason: collision with root package name */
        final Set<K> f32900a;

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f32901b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f32902c;

        /* renamed from: d  reason: collision with root package name */
        int f32903d;

        private e() {
            this.f32900a = o4.y(LinkedListMultimap.this.keySet().size());
            this.f32901b = LinkedListMultimap.this.f32888f;
            this.f32903d = LinkedListMultimap.this.f32892j;
        }

        private void a() {
            if (LinkedListMultimap.this.f32892j != this.f32903d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f32901b != null;
        }

        @Override // java.util.Iterator
        public K next() {
            g<K, V> gVar;
            a();
            LinkedListMultimap.u(this.f32901b);
            g<K, V> gVar2 = this.f32901b;
            this.f32902c = gVar2;
            this.f32900a.add(gVar2.f32908a);
            do {
                gVar = this.f32901b.f32910c;
                this.f32901b = gVar;
                if (gVar == null) {
                    break;
                }
            } while (!this.f32900a.add(gVar.f32908a));
            return this.f32902c.f32908a;
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            y.e(this.f32902c != null);
            LinkedListMultimap.this.A(this.f32902c.f32908a);
            this.f32902c = null;
            this.f32903d = LinkedListMultimap.this.f32892j;
        }

        /* synthetic */ e(LinkedListMultimap linkedListMultimap, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class i implements ListIterator<V> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        final Object f32920a;

        /* renamed from: b  reason: collision with root package name */
        int f32921b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f32922c;
        @NullableDecl

        /* renamed from: d  reason: collision with root package name */
        g<K, V> f32923d;
        @NullableDecl

        /* renamed from: e  reason: collision with root package name */
        g<K, V> f32924e;

        i(@NullableDecl Object obj) {
            this.f32920a = obj;
            f fVar = (f) LinkedListMultimap.this.f32890h.get(obj);
            this.f32922c = fVar == null ? null : fVar.f32905a;
        }

        @Override // java.util.ListIterator
        public void add(V v9) {
            this.f32924e = LinkedListMultimap.this.t(this.f32920a, v9, this.f32922c);
            this.f32921b++;
            this.f32923d = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f32922c != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f32924e != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @CanIgnoreReturnValue
        public V next() {
            LinkedListMultimap.u(this.f32922c);
            g<K, V> gVar = this.f32922c;
            this.f32923d = gVar;
            this.f32924e = gVar;
            this.f32922c = gVar.f32912e;
            this.f32921b++;
            return gVar.f32909b;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f32921b;
        }

        @Override // java.util.ListIterator
        @CanIgnoreReturnValue
        public V previous() {
            LinkedListMultimap.u(this.f32924e);
            g<K, V> gVar = this.f32924e;
            this.f32923d = gVar;
            this.f32922c = gVar;
            this.f32924e = gVar.f32913f;
            this.f32921b--;
            return gVar.f32909b;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f32921b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            y.e(this.f32923d != null);
            g<K, V> gVar = this.f32923d;
            if (gVar != this.f32922c) {
                this.f32924e = gVar.f32913f;
                this.f32921b--;
            } else {
                this.f32922c = gVar.f32912e;
            }
            LinkedListMultimap.this.B(gVar);
            this.f32923d = null;
        }

        @Override // java.util.ListIterator
        public void set(V v9) {
            com.google.common.base.a0.g0(this.f32923d != null);
            this.f32923d.f32909b = v9;
        }

        public i(@NullableDecl Object obj, int i4) {
            f fVar = (f) LinkedListMultimap.this.f32890h.get(obj);
            int i10 = fVar == null ? 0 : fVar.f32907c;
            com.google.common.base.a0.d0(i4, i10);
            if (i4 >= i10 / 2) {
                this.f32924e = fVar == null ? null : fVar.f32906b;
                this.f32921b = i10;
                while (true) {
                    int i11 = i4 + 1;
                    if (i4 >= i10) {
                        break;
                    }
                    previous();
                    i4 = i11;
                }
            } else {
                this.f32922c = fVar == null ? null : fVar.f32905a;
                while (true) {
                    int i12 = i4 - 1;
                    if (i4 <= 0) {
                        break;
                    }
                    next();
                    i4 = i12;
                }
            }
            this.f32920a = obj;
            this.f32923d = null;
        }
    }

    private LinkedListMultimap(h3<? extends K, ? extends V> h3Var) {
        this(h3Var.keySet().size());
        putAll(h3Var);
    }
}
