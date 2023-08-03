package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: ImmutableAsList.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
abstract class i2<E> extends ImmutableList<E> {

    /* compiled from: ImmutableAsList.java */
    @h3.c
    /* loaded from: classes2.dex */
    static class a implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33555b = 0;

        /* renamed from: a  reason: collision with root package name */
        final ImmutableCollection<?> f33556a;

        a(ImmutableCollection<?> immutableCollection) {
            this.f33556a = immutableCollection;
        }

        Object a() {
            return this.f33556a.asList();
        }
    }

    @h3.c
    private void m(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return o().contains(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return o().e();
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    @h3.c
    Object h() {
        return new a(o());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return o().isEmpty();
    }

    abstract ImmutableCollection<E> o();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return o().size();
    }
}
