package com.google.common.collect;

import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.k3;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableMultiset.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class e4<E> extends ImmutableMultiset<E> {

    /* renamed from: g  reason: collision with root package name */
    static final e4<Object> f33388g = new e4<>(q3.c());

    /* renamed from: d  reason: collision with root package name */
    final transient q3<E> f33389d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f33390e;
    @LazyInit

    /* renamed from: f  reason: collision with root package name */
    private transient ImmutableSet<E> f33391f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RegularImmutableMultiset.java */
    /* loaded from: classes2.dex */
    public final class b extends t2<E> {
        private b() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return e4.this.contains(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean e() {
            return true;
        }

        @Override // com.google.common.collect.t2
        E get(int i4) {
            return e4.this.f33389d.j(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e4.this.f33389d.D();
        }
    }

    /* compiled from: RegularImmutableMultiset.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static class c implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f33393c = 0;

        /* renamed from: a  reason: collision with root package name */
        final Object[] f33394a;

        /* renamed from: b  reason: collision with root package name */
        final int[] f33395b;

        c(k3<?> k3Var) {
            int size = k3Var.entrySet().size();
            this.f33394a = new Object[size];
            this.f33395b = new int[size];
            int i4 = 0;
            for (k3.a<?> aVar : k3Var.entrySet()) {
                this.f33394a[i4] = aVar.getElement();
                this.f33395b[i4] = aVar.getCount();
                i4++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        Object a() {
            ImmutableMultiset.b bVar = new ImmutableMultiset.b(this.f33394a.length);
            int i4 = 0;
            while (true) {
                Object[] objArr = this.f33394a;
                if (i4 < objArr.length) {
                    bVar.k(objArr[i4], this.f33395b[i4]);
                    i4++;
                } else {
                    return bVar.e();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e4(q3<E> q3Var) {
        this.f33389d = q3Var;
        long j4 = 0;
        for (int i4 = 0; i4 < q3Var.D(); i4++) {
            j4 += q3Var.l(i4);
        }
        this.f33390e = com.google.common.primitives.f.x(j4);
    }

    @Override // com.google.common.collect.k3
    public int count(@NullableDecl Object obj) {
        return this.f33389d.g(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    @h3.c
    Object h() {
        return new c(this);
    }

    @Override // com.google.common.collect.ImmutableMultiset
    k3.a<E> m(int i4) {
        return this.f33389d.h(i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public int size() {
        return this.f33390e;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.k3
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.f33391f;
        if (immutableSet == null) {
            b bVar = new b();
            this.f33391f = bVar;
            return bVar;
        }
        return immutableSet;
    }
}
