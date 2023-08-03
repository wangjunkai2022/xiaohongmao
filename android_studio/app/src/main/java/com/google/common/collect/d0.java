package com.google.common.collect;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CompactLinkedHashSet.java */
@h3.c
/* loaded from: classes2.dex */
public class d0<E> extends b0<E> {

    /* renamed from: r  reason: collision with root package name */
    private static final int f33233r = -2;
    @MonotonicNonNullDecl

    /* renamed from: n  reason: collision with root package name */
    private transient int[] f33234n;
    @MonotonicNonNullDecl

    /* renamed from: o  reason: collision with root package name */
    private transient int[] f33235o;

    /* renamed from: p  reason: collision with root package name */
    private transient int f33236p;

    /* renamed from: q  reason: collision with root package name */
    private transient int f33237q;

    d0() {
    }

    public static <E> d0<E> G() {
        return new d0<>();
    }

    public static <E> d0<E> H(Collection<? extends E> collection) {
        d0<E> J = J(collection.size());
        J.addAll(collection);
        return J;
    }

    public static <E> d0<E> I(E... eArr) {
        d0<E> J = J(eArr.length);
        Collections.addAll(J, eArr);
        return J;
    }

    public static <E> d0<E> J(int i4) {
        return new d0<>(i4);
    }

    private void K(int i4, int i10) {
        if (i4 == -2) {
            this.f33236p = i10;
        } else {
            this.f33235o[i4] = i10;
        }
        if (i10 == -2) {
            this.f33237q = i4;
        } else {
            this.f33234n[i10] = i4;
        }
    }

    @Override // com.google.common.collect.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        super.clear();
        this.f33236p = -2;
        this.f33237q = -2;
        Arrays.fill(this.f33234n, -1);
        Arrays.fill(this.f33235o, -1);
    }

    @Override // com.google.common.collect.b0
    int d(int i4, int i10) {
        return i4 == size() ? i10 : i4;
    }

    @Override // com.google.common.collect.b0
    int l() {
        return this.f33236p;
    }

    @Override // com.google.common.collect.b0
    int o(int i4) {
        return this.f33235o[i4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.b0
    public void q(int i4, float f10) {
        super.q(i4, f10);
        int[] iArr = new int[i4];
        this.f33234n = iArr;
        this.f33235o = new int[i4];
        Arrays.fill(iArr, -1);
        Arrays.fill(this.f33235o, -1);
        this.f33236p = -2;
        this.f33237q = -2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.b0
    public void r(int i4, E e4, int i10) {
        super.r(i4, e4, i10);
        K(this.f33237q, i4);
        K(i4, -2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.b0
    public void s(int i4) {
        int size = size() - 1;
        super.s(i4);
        K(this.f33234n[i4], this.f33235o[i4]);
        if (size != i4) {
            K(this.f33234n[size], i4);
            K(i4, this.f33235o[size]);
        }
        this.f33234n[size] = -1;
        this.f33235o[size] = -1;
    }

    @Override // com.google.common.collect.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return p3.l(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.b0
    public void z(int i4) {
        super.z(i4);
        int[] iArr = this.f33234n;
        int length = iArr.length;
        this.f33234n = Arrays.copyOf(iArr, i4);
        this.f33235o = Arrays.copyOf(this.f33235o, i4);
        if (length < i4) {
            Arrays.fill(this.f33234n, length, i4, -1);
            Arrays.fill(this.f33235o, length, i4, -1);
        }
    }

    d0(int i4) {
        super(i4);
    }

    @Override // com.google.common.collect.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) p3.m(this, tArr);
    }
}
