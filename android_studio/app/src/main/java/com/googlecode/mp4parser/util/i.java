package com.googlecode.mp4parser.util;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: LazyList.java */
/* loaded from: classes2.dex */
public class i<E> extends AbstractList<E> {

    /* renamed from: c  reason: collision with root package name */
    private static final j f36985c = j.a(i.class);

    /* renamed from: a  reason: collision with root package name */
    List<E> f36986a;

    /* renamed from: b  reason: collision with root package name */
    Iterator<E> f36987b;

    /* compiled from: LazyList.java */
    /* loaded from: classes2.dex */
    class a implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        int f36988a = 0;

        a() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f36988a < i.this.f36986a.size() || i.this.f36987b.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f36988a < i.this.f36986a.size()) {
                List<E> list = i.this.f36986a;
                int i4 = this.f36988a;
                this.f36988a = i4 + 1;
                return list.get(i4);
            }
            i iVar = i.this;
            iVar.f36986a.add(iVar.f36987b.next());
            return (E) next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public i(List<E> list, Iterator<E> it) {
        this.f36986a = list;
        this.f36987b = it;
    }

    private void a() {
        f36985c.b("blowup running");
        while (this.f36987b.hasNext()) {
            this.f36986a.add(this.f36987b.next());
        }
    }

    public List<E> b() {
        return this.f36986a;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i4) {
        if (this.f36986a.size() > i4) {
            return this.f36986a.get(i4);
        }
        if (this.f36987b.hasNext()) {
            this.f36986a.add(this.f36987b.next());
            return get(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        f36985c.b("potentially expensive size() call");
        a();
        return this.f36986a.size();
    }
}
