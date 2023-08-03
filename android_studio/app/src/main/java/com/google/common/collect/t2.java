package com.google.common.collect;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IndexedImmutableSet.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class t2<E> extends ImmutableSet<E> {

    /* compiled from: IndexedImmutableSet.java */
    /* loaded from: classes2.dex */
    class a extends ImmutableList<E> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return t2.this.e();
        }

        @Override // java.util.List
        public E get(int i4) {
            return (E) t2.this.get(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return t2.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    @h3.c
    public int a(Object[] objArr, int i4) {
        return asList().a(objArr, i4);
    }

    abstract E get(int i4);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet
    public ImmutableList<E> n() {
        return new a();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<E> iterator() {
        return asList().iterator();
    }
}
