package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.o4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Multisets.java */
@h3.b
/* loaded from: classes2.dex */
public final class l3 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    public static class a extends n<E> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ k3 f33698c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ k3 f33699d;

        /* compiled from: Multisets.java */
        /* renamed from: com.google.common.collect.l3$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0232a extends com.google.common.collect.c<k3.a<E>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f33700c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Iterator f33701d;

            C0232a(Iterator it, Iterator it2) {
                this.f33700c = it;
                this.f33701d = it2;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public k3.a<E> a() {
                if (this.f33700c.hasNext()) {
                    k3.a aVar = (k3.a) this.f33700c.next();
                    Object element = aVar.getElement();
                    return l3.k(element, Math.max(aVar.getCount(), a.this.f33699d.count(element)));
                }
                while (this.f33701d.hasNext()) {
                    k3.a aVar2 = (k3.a) this.f33701d.next();
                    Object element2 = aVar2.getElement();
                    if (!a.this.f33698c.contains(element2)) {
                        return l3.k(element2, aVar2.getCount());
                    }
                }
                return (k3.a) b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(k3 k3Var, k3 k3Var2) {
            super(null);
            this.f33698c = k3Var;
            this.f33699d = k3Var2;
        }

        @Override // com.google.common.collect.i
        Set<E> a() {
            return o4.N(this.f33698c.elementSet(), this.f33699d.elementSet());
        }

        @Override // com.google.common.collect.i
        Iterator<E> c() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
        public boolean contains(@NullableDecl Object obj) {
            return this.f33698c.contains(obj) || this.f33699d.contains(obj);
        }

        @Override // com.google.common.collect.k3
        public int count(Object obj) {
            return Math.max(this.f33698c.count(obj), this.f33699d.count(obj));
        }

        @Override // com.google.common.collect.i
        Iterator<k3.a<E>> d() {
            return new C0232a(this.f33698c.entrySet().iterator(), this.f33699d.entrySet().iterator());
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f33698c.isEmpty() && this.f33699d.isEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    public static class b extends n<E> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ k3 f33703c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ k3 f33704d;

        /* compiled from: Multisets.java */
        /* loaded from: classes2.dex */
        class a extends com.google.common.collect.c<k3.a<E>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f33705c;

            a(Iterator it) {
                this.f33705c = it;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public k3.a<E> a() {
                while (this.f33705c.hasNext()) {
                    k3.a aVar = (k3.a) this.f33705c.next();
                    Object element = aVar.getElement();
                    int min = Math.min(aVar.getCount(), b.this.f33704d.count(element));
                    if (min > 0) {
                        return l3.k(element, min);
                    }
                }
                return (k3.a) b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(k3 k3Var, k3 k3Var2) {
            super(null);
            this.f33703c = k3Var;
            this.f33704d = k3Var2;
        }

        @Override // com.google.common.collect.i
        Set<E> a() {
            return o4.n(this.f33703c.elementSet(), this.f33704d.elementSet());
        }

        @Override // com.google.common.collect.i
        Iterator<E> c() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.k3
        public int count(Object obj) {
            int count = this.f33703c.count(obj);
            if (count == 0) {
                return 0;
            }
            return Math.min(count, this.f33704d.count(obj));
        }

        @Override // com.google.common.collect.i
        Iterator<k3.a<E>> d() {
            return new a(this.f33703c.entrySet().iterator());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    public static class c extends n<E> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ k3 f33707c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ k3 f33708d;

        /* compiled from: Multisets.java */
        /* loaded from: classes2.dex */
        class a extends com.google.common.collect.c<k3.a<E>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f33709c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Iterator f33710d;

            a(Iterator it, Iterator it2) {
                this.f33709c = it;
                this.f33710d = it2;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public k3.a<E> a() {
                if (this.f33709c.hasNext()) {
                    k3.a aVar = (k3.a) this.f33709c.next();
                    Object element = aVar.getElement();
                    return l3.k(element, aVar.getCount() + c.this.f33708d.count(element));
                }
                while (this.f33710d.hasNext()) {
                    k3.a aVar2 = (k3.a) this.f33710d.next();
                    Object element2 = aVar2.getElement();
                    if (!c.this.f33707c.contains(element2)) {
                        return l3.k(element2, aVar2.getCount());
                    }
                }
                return (k3.a) b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(k3 k3Var, k3 k3Var2) {
            super(null);
            this.f33707c = k3Var;
            this.f33708d = k3Var2;
        }

        @Override // com.google.common.collect.i
        Set<E> a() {
            return o4.N(this.f33707c.elementSet(), this.f33708d.elementSet());
        }

        @Override // com.google.common.collect.i
        Iterator<E> c() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
        public boolean contains(@NullableDecl Object obj) {
            return this.f33707c.contains(obj) || this.f33708d.contains(obj);
        }

        @Override // com.google.common.collect.k3
        public int count(Object obj) {
            return this.f33707c.count(obj) + this.f33708d.count(obj);
        }

        @Override // com.google.common.collect.i
        Iterator<k3.a<E>> d() {
            return new a(this.f33707c.entrySet().iterator(), this.f33708d.entrySet().iterator());
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f33707c.isEmpty() && this.f33708d.isEmpty();
        }

        @Override // com.google.common.collect.l3.n, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
        public int size() {
            return com.google.common.math.d.t(this.f33707c.size(), this.f33708d.size());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    public static class d extends n<E> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ k3 f33712c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ k3 f33713d;

        /* compiled from: Multisets.java */
        /* loaded from: classes2.dex */
        class a extends com.google.common.collect.c<E> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f33714c;

            a(Iterator it) {
                this.f33714c = it;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v0, types: [E, java.lang.Object] */
            @Override // com.google.common.collect.c
            protected E a() {
                while (this.f33714c.hasNext()) {
                    k3.a aVar = (k3.a) this.f33714c.next();
                    ?? element = aVar.getElement();
                    if (aVar.getCount() > d.this.f33713d.count(element)) {
                        return element;
                    }
                }
                return b();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Multisets.java */
        /* loaded from: classes2.dex */
        public class b extends com.google.common.collect.c<k3.a<E>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f33716c;

            b(Iterator it) {
                this.f33716c = it;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public k3.a<E> a() {
                while (this.f33716c.hasNext()) {
                    k3.a aVar = (k3.a) this.f33716c.next();
                    Object element = aVar.getElement();
                    int count = aVar.getCount() - d.this.f33713d.count(element);
                    if (count > 0) {
                        return l3.k(element, count);
                    }
                }
                return (k3.a) b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(k3 k3Var, k3 k3Var2) {
            super(null);
            this.f33712c = k3Var;
            this.f33713d = k3Var2;
        }

        @Override // com.google.common.collect.l3.n, com.google.common.collect.i
        int b() {
            return x2.Z(d());
        }

        @Override // com.google.common.collect.i
        Iterator<E> c() {
            return new a(this.f33712c.entrySet().iterator());
        }

        @Override // com.google.common.collect.l3.n, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.k3
        public int count(@NullableDecl Object obj) {
            int count = this.f33712c.count(obj);
            if (count == 0) {
                return 0;
            }
            return Math.max(0, count - this.f33713d.count(obj));
        }

        @Override // com.google.common.collect.i
        Iterator<k3.a<E>> d() {
            return new b(this.f33712c.entrySet().iterator());
        }
    }

    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    static class e extends g5<k3.a<E>, E> {
        e(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Type inference failed for: r1v1, types: [E, java.lang.Object] */
        @Override // com.google.common.collect.g5
        /* renamed from: b */
        public E a(k3.a<E> aVar) {
            return aVar.getElement();
        }
    }

    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    static abstract class f<E> implements k3.a<E> {
        @Override // com.google.common.collect.k3.a
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof k3.a) {
                k3.a aVar = (k3.a) obj;
                return getCount() == aVar.getCount() && com.google.common.base.w.a(getElement(), aVar.getElement());
            }
            return false;
        }

        @Override // com.google.common.collect.k3.a
        public int hashCode() {
            E element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        @Override // com.google.common.collect.k3.a
        public String toString() {
            String valueOf = String.valueOf(getElement());
            int count = getCount();
            if (count == 1) {
                return valueOf;
            }
            return valueOf + " x " + count;
        }
    }

    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    private static final class g implements Comparator<k3.a<?>> {

        /* renamed from: a  reason: collision with root package name */
        static final g f33718a = new g();

        private g() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(k3.a<?> aVar, k3.a<?> aVar2) {
            return aVar2.getCount() - aVar.getCount();
        }
    }

    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    static abstract class h<E> extends o4.k<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return e().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return e().containsAll(collection);
        }

        abstract k3<E> e();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return e().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public abstract Iterator<E> iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return e().remove(obj, Integer.MAX_VALUE) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e().entrySet().size();
        }
    }

    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    static abstract class i<E> extends o4.k<k3.a<E>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof k3.a) {
                k3.a aVar = (k3.a) obj;
                return aVar.getCount() > 0 && e().count(aVar.getElement()) == aVar.getCount();
            }
            return false;
        }

        abstract k3<E> e();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof k3.a) {
                k3.a aVar = (k3.a) obj;
                E e4 = (E) aVar.getElement();
                int count = aVar.getCount();
                if (count != 0) {
                    return e().setCount(e4, count, 0);
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    public static final class j<E> extends n<E> {

        /* renamed from: c  reason: collision with root package name */
        final k3<E> f33719c;

        /* renamed from: d  reason: collision with root package name */
        final com.google.common.base.b0<? super E> f33720d;

        /* compiled from: Multisets.java */
        /* loaded from: classes2.dex */
        class a implements com.google.common.base.b0<k3.a<E>> {
            a() {
            }

            @Override // com.google.common.base.b0
            /* renamed from: a */
            public boolean apply(k3.a<E> aVar) {
                return j.this.f33720d.apply(aVar.getElement());
            }
        }

        j(k3<E> k3Var, com.google.common.base.b0<? super E> b0Var) {
            super(null);
            this.f33719c = (k3) com.google.common.base.a0.E(k3Var);
            this.f33720d = (com.google.common.base.b0) com.google.common.base.a0.E(b0Var);
        }

        @Override // com.google.common.collect.i
        Set<E> a() {
            return o4.i(this.f33719c.elementSet(), this.f33720d);
        }

        @Override // com.google.common.collect.i, com.google.common.collect.k3
        public int add(@NullableDecl E e4, int i4) {
            com.google.common.base.a0.y(this.f33720d.apply(e4), "Element %s does not match predicate %s", e4, this.f33720d);
            return this.f33719c.add(e4, i4);
        }

        @Override // com.google.common.collect.i
        Iterator<E> c() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.k3
        public int count(@NullableDecl Object obj) {
            int count = this.f33719c.count(obj);
            if (count <= 0 || !this.f33720d.apply(obj)) {
                return 0;
            }
            return count;
        }

        @Override // com.google.common.collect.i
        Set<k3.a<E>> createEntrySet() {
            return o4.i(this.f33719c.entrySet(), new a());
        }

        @Override // com.google.common.collect.i
        Iterator<k3.a<E>> d() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.l3.n, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.k3
        /* renamed from: e */
        public k5<E> iterator() {
            return x2.x(this.f33719c.iterator(), this.f33720d);
        }

        @Override // com.google.common.collect.i, com.google.common.collect.k3
        public int remove(@NullableDecl Object obj, int i4) {
            y.b(i4, "occurrences");
            if (i4 == 0) {
                return count(obj);
            }
            if (contains(obj)) {
                return this.f33719c.remove(obj, i4);
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    public static class k<E> extends f<E> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f33722c = 0;
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private final E f33723a;

        /* renamed from: b  reason: collision with root package name */
        private final int f33724b;

        k(@NullableDecl E e4, int i4) {
            this.f33723a = e4;
            this.f33724b = i4;
            y.b(i4, "count");
        }

        public k<E> a() {
            return null;
        }

        @Override // com.google.common.collect.k3.a
        public final int getCount() {
            return this.f33724b;
        }

        @Override // com.google.common.collect.k3.a
        @NullableDecl
        public final E getElement() {
            return this.f33723a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    public static final class l<E> implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private final k3<E> f33725a;

        /* renamed from: b  reason: collision with root package name */
        private final Iterator<k3.a<E>> f33726b;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        private k3.a<E> f33727c;

        /* renamed from: d  reason: collision with root package name */
        private int f33728d;

        /* renamed from: e  reason: collision with root package name */
        private int f33729e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f33730f;

        l(k3<E> k3Var, Iterator<k3.a<E>> it) {
            this.f33725a = k3Var;
            this.f33726b = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33728d > 0 || this.f33726b.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                if (this.f33728d == 0) {
                    k3.a<E> next = this.f33726b.next();
                    this.f33727c = next;
                    int count = next.getCount();
                    this.f33728d = count;
                    this.f33729e = count;
                }
                this.f33728d--;
                this.f33730f = true;
                return this.f33727c.getElement();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            y.e(this.f33730f);
            if (this.f33729e == 1) {
                this.f33726b.remove();
            } else {
                this.f33725a.remove(this.f33727c.getElement());
            }
            this.f33729e--;
            this.f33730f = false;
        }
    }

    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    static class m<E> extends s1<E> implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f33731d = 0;

        /* renamed from: a  reason: collision with root package name */
        final k3<? extends E> f33732a;
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        transient Set<E> f33733b;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        transient Set<k3.a<E>> f33734c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public m(k3<? extends E> k3Var) {
            this.f33732a = k3Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.s1, com.google.common.collect.e1
        /* renamed from: Y */
        public k3<E> M() {
            return (k3<? extends E>) this.f33732a;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Queue
        public boolean add(E e4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.e1, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.s1, com.google.common.collect.k3
        public Set<E> elementSet() {
            Set<E> set = this.f33733b;
            if (set == null) {
                Set<E> h02 = h0();
                this.f33733b = h02;
                return h02;
            }
            return set;
        }

        @Override // com.google.common.collect.s1, com.google.common.collect.k3
        public Set<k3.a<E>> entrySet() {
            Set<k3.a<E>> set = this.f33734c;
            if (set == null) {
                Set<k3.a<E>> unmodifiableSet = Collections.unmodifiableSet(this.f33732a.entrySet());
                this.f33734c = unmodifiableSet;
                return unmodifiableSet;
            }
            return set;
        }

        Set<E> h0() {
            return Collections.unmodifiableSet(this.f33732a.elementSet());
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return x2.f0(this.f33732a.iterator());
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.s1, com.google.common.collect.k3
        public int setCount(E e4, int i4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.s1, com.google.common.collect.k3
        public int add(E e4, int i4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.s1, com.google.common.collect.k3
        public int remove(Object obj, int i4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.s1, com.google.common.collect.k3
        public boolean setCount(E e4, int i4, int i10) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: Multisets.java */
    /* loaded from: classes2.dex */
    private static abstract class n<E> extends com.google.common.collect.i<E> {
        private n() {
        }

        @Override // com.google.common.collect.i
        int b() {
            return elementSet().size();
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            elementSet().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.k3
        public Iterator<E> iterator() {
            return l3.n(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
        public int size() {
            return l3.o(this);
        }

        /* synthetic */ n(a aVar) {
            this();
        }
    }

    private l3() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> k3<E> A(k3<? extends E> k3Var) {
        return ((k3Var instanceof m) || (k3Var instanceof ImmutableMultiset)) ? k3Var : new m((k3) com.google.common.base.a0.E(k3Var));
    }

    @h3.a
    public static <E> v4<E> B(v4<E> v4Var) {
        return new m5((v4) com.google.common.base.a0.E(v4Var));
    }

    private static <E> boolean a(k3<E> k3Var, com.google.common.collect.f<? extends E> fVar) {
        if (fVar.isEmpty()) {
            return false;
        }
        fVar.e(k3Var);
        return true;
    }

    private static <E> boolean b(k3<E> k3Var, k3<? extends E> k3Var2) {
        if (k3Var2 instanceof com.google.common.collect.f) {
            return a(k3Var, (com.google.common.collect.f) k3Var2);
        }
        if (k3Var2.isEmpty()) {
            return false;
        }
        for (k3.a<? extends E> aVar : k3Var2.entrySet()) {
            k3Var.add(aVar.getElement(), aVar.getCount());
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> boolean c(k3<E> k3Var, Collection<? extends E> collection) {
        com.google.common.base.a0.E(k3Var);
        com.google.common.base.a0.E(collection);
        if (collection instanceof k3) {
            return b(k3Var, d(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return x2.a(k3Var, collection.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> k3<T> d(Iterable<T> iterable) {
        return (k3) iterable;
    }

    @CanIgnoreReturnValue
    public static boolean e(k3<?> k3Var, k3<?> k3Var2) {
        com.google.common.base.a0.E(k3Var);
        com.google.common.base.a0.E(k3Var2);
        for (k3.a<?> aVar : k3Var2.entrySet()) {
            if (k3Var.count(aVar.getElement()) < aVar.getCount()) {
                return false;
            }
        }
        return true;
    }

    @h3.a
    public static <E> ImmutableMultiset<E> f(k3<E> k3Var) {
        k3.a[] aVarArr = (k3.a[]) k3Var.entrySet().toArray(new k3.a[0]);
        Arrays.sort(aVarArr, g.f33718a);
        return ImmutableMultiset.k(Arrays.asList(aVarArr));
    }

    @h3.a
    public static <E> k3<E> g(k3<E> k3Var, k3<?> k3Var2) {
        com.google.common.base.a0.E(k3Var);
        com.google.common.base.a0.E(k3Var2);
        return new d(k3Var, k3Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Iterator<E> h(Iterator<k3.a<E>> it) {
        return new e(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(k3<?> k3Var, @NullableDecl Object obj) {
        if (obj == k3Var) {
            return true;
        }
        if (obj instanceof k3) {
            k3 k3Var2 = (k3) obj;
            if (k3Var.size() == k3Var2.size() && k3Var.entrySet().size() == k3Var2.entrySet().size()) {
                for (k3.a aVar : k3Var2.entrySet()) {
                    if (k3Var.count(aVar.getElement()) != aVar.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @h3.a
    public static <E> k3<E> j(k3<E> k3Var, com.google.common.base.b0<? super E> b0Var) {
        if (k3Var instanceof j) {
            j jVar = (j) k3Var;
            return new j(jVar.f33719c, com.google.common.base.c0.d(jVar.f33720d, b0Var));
        }
        return new j(k3Var, b0Var);
    }

    public static <E> k3.a<E> k(@NullableDecl E e4, int i4) {
        return new k(e4, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(Iterable<?> iterable) {
        if (iterable instanceof k3) {
            return ((k3) iterable).elementSet().size();
        }
        return 11;
    }

    public static <E> k3<E> m(k3<E> k3Var, k3<?> k3Var2) {
        com.google.common.base.a0.E(k3Var);
        com.google.common.base.a0.E(k3Var2);
        return new b(k3Var, k3Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Iterator<E> n(k3<E> k3Var) {
        return new l(k3Var, k3Var.entrySet().iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(k3<?> k3Var) {
        long j4 = 0;
        for (k3.a<?> aVar : k3Var.entrySet()) {
            j4 += aVar.getCount();
        }
        return com.google.common.primitives.f.x(j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean p(k3<?> k3Var, Collection<?> collection) {
        if (collection instanceof k3) {
            collection = ((k3) collection).elementSet();
        }
        return k3Var.elementSet().removeAll(collection);
    }

    @CanIgnoreReturnValue
    public static boolean q(k3<?> k3Var, k3<?> k3Var2) {
        com.google.common.base.a0.E(k3Var);
        com.google.common.base.a0.E(k3Var2);
        Iterator<k3.a<?>> it = k3Var.entrySet().iterator();
        boolean z9 = false;
        while (it.hasNext()) {
            k3.a<?> next = it.next();
            int count = k3Var2.count(next.getElement());
            if (count >= next.getCount()) {
                it.remove();
            } else if (count > 0) {
                k3Var.remove(next.getElement(), count);
            }
            z9 = true;
        }
        return z9;
    }

    @CanIgnoreReturnValue
    public static boolean r(k3<?> k3Var, Iterable<?> iterable) {
        if (iterable instanceof k3) {
            return q(k3Var, (k3) iterable);
        }
        com.google.common.base.a0.E(k3Var);
        com.google.common.base.a0.E(iterable);
        boolean z9 = false;
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            z9 |= k3Var.remove(it.next());
        }
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean s(k3<?> k3Var, Collection<?> collection) {
        com.google.common.base.a0.E(collection);
        if (collection instanceof k3) {
            collection = ((k3) collection).elementSet();
        }
        return k3Var.elementSet().retainAll(collection);
    }

    @CanIgnoreReturnValue
    public static boolean t(k3<?> k3Var, k3<?> k3Var2) {
        return u(k3Var, k3Var2);
    }

    private static <E> boolean u(k3<E> k3Var, k3<?> k3Var2) {
        com.google.common.base.a0.E(k3Var);
        com.google.common.base.a0.E(k3Var2);
        Iterator<k3.a<E>> it = k3Var.entrySet().iterator();
        boolean z9 = false;
        while (it.hasNext()) {
            k3.a<E> next = it.next();
            int count = k3Var2.count(next.getElement());
            if (count == 0) {
                it.remove();
            } else if (count < next.getCount()) {
                k3Var.setCount(next.getElement(), count);
            }
            z9 = true;
        }
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> int v(k3<E> k3Var, E e4, int i4) {
        y.b(i4, "count");
        int count = k3Var.count(e4);
        int i10 = i4 - count;
        if (i10 > 0) {
            k3Var.add(e4, i10);
        } else if (i10 < 0) {
            k3Var.remove(e4, -i10);
        }
        return count;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> boolean w(k3<E> k3Var, E e4, int i4, int i10) {
        y.b(i4, "oldCount");
        y.b(i10, "newCount");
        if (k3Var.count(e4) == i4) {
            k3Var.setCount(e4, i10);
            return true;
        }
        return false;
    }

    @h3.a
    public static <E> k3<E> x(k3<? extends E> k3Var, k3<? extends E> k3Var2) {
        com.google.common.base.a0.E(k3Var);
        com.google.common.base.a0.E(k3Var2);
        return new c(k3Var, k3Var2);
    }

    @h3.a
    public static <E> k3<E> y(k3<? extends E> k3Var, k3<? extends E> k3Var2) {
        com.google.common.base.a0.E(k3Var);
        com.google.common.base.a0.E(k3Var2);
        return new a(k3Var, k3Var2);
    }

    @Deprecated
    public static <E> k3<E> z(ImmutableMultiset<E> immutableMultiset) {
        return (k3) com.google.common.base.a0.E(immutableMultiset);
    }
}
