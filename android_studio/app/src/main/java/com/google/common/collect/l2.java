package com.google.common.collect;

import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Collection;
import java.util.EnumSet;

/* compiled from: ImmutableEnumSet.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class l2<E extends Enum<E>> extends ImmutableSet<E> {

    /* renamed from: f  reason: collision with root package name */
    private final transient EnumSet<E> f33694f;
    @LazyInit

    /* renamed from: g  reason: collision with root package name */
    private transient int f33695g;

    /* compiled from: ImmutableEnumSet.java */
    /* loaded from: classes2.dex */
    private static class b<E extends Enum<E>> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33696b = 0;

        /* renamed from: a  reason: collision with root package name */
        final EnumSet<E> f33697a;

        b(EnumSet<E> enumSet) {
            this.f33697a = enumSet;
        }

        Object a() {
            return new l2(this.f33697a.clone());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImmutableSet q(EnumSet enumSet) {
        int size = enumSet.size();
        if (size != 0) {
            if (size != 1) {
                return new l2(enumSet);
            }
            return ImmutableSet.of(w2.z(enumSet));
        }
        return ImmutableSet.of();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f33694f.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof l2) {
            collection = ((l2) collection).f33694f;
        }
        return this.f33694f.containsAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2) {
            obj = ((l2) obj).f33694f;
        }
        return this.f33694f.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object h() {
        return new b(this.f33694f);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        int i4 = this.f33695g;
        if (i4 == 0) {
            int hashCode = this.f33694f.hashCode();
            this.f33695g = hashCode;
            return hashCode;
        }
        return i4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f33694f.isEmpty();
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f33694f.size();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return this.f33694f.toString();
    }

    private l2(EnumSet<E> enumSet) {
        this.f33694f = enumSet;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<E> iterator() {
        return x2.f0(this.f33694f.iterator());
    }
}
