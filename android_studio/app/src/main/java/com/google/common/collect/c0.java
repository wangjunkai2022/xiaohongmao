package com.google.common.collect;

import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* compiled from: CompactLinkedHashMap.java */
@h3.c
/* loaded from: classes2.dex */
class c0<K, V> extends a0<K, V> {

    /* renamed from: v  reason: collision with root package name */
    private static final int f33170v = -2;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: r  reason: collision with root package name */
    transient long[] f33171r;

    /* renamed from: s  reason: collision with root package name */
    private transient int f33172s;

    /* renamed from: t  reason: collision with root package name */
    private transient int f33173t;

    /* renamed from: u  reason: collision with root package name */
    private final boolean f33174u;

    c0() {
        this(3);
    }

    public static <K, V> c0<K, V> L() {
        return new c0<>();
    }

    public static <K, V> c0<K, V> M(int i4) {
        return new c0<>(i4);
    }

    private int N(int i4) {
        return (int) (this.f33171r[i4] >>> 32);
    }

    private void O(int i4, int i10) {
        long[] jArr = this.f33171r;
        jArr[i4] = (jArr[i4] & 4294967295L) | (i10 << 32);
    }

    private void P(int i4, int i10) {
        if (i4 == -2) {
            this.f33172s = i10;
        } else {
            Q(i4, i10);
        }
        if (i10 == -2) {
            this.f33173t = i4;
        } else {
            O(i10, i4);
        }
    }

    private void Q(int i4, int i10) {
        long[] jArr = this.f33171r;
        jArr[i4] = (jArr[i4] & (-4294967296L)) | (i10 & 4294967295L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.a0
    public void E(int i4) {
        super.E(i4);
        this.f33171r = Arrays.copyOf(this.f33171r, i4);
    }

    @Override // com.google.common.collect.a0, java.util.AbstractMap, java.util.Map
    public void clear() {
        super.clear();
        this.f33172s = -2;
        this.f33173t = -2;
    }

    @Override // com.google.common.collect.a0
    void d(int i4) {
        if (this.f33174u) {
            P(N(i4), q(i4));
            P(this.f33173t, i4);
            P(i4, -2);
            this.f33046f++;
        }
    }

    @Override // com.google.common.collect.a0
    int e(int i4, int i10) {
        return i4 >= size() ? i10 : i4;
    }

    @Override // com.google.common.collect.a0
    int n() {
        return this.f33172s;
    }

    @Override // com.google.common.collect.a0
    int q(int i4) {
        return (int) this.f33171r[i4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.a0
    public void u(int i4, float f10) {
        super.u(i4, f10);
        this.f33172s = -2;
        this.f33173t = -2;
        long[] jArr = new long[i4];
        this.f33171r = jArr;
        Arrays.fill(jArr, -1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.a0
    public void v(int i4, K k10, V v9, int i10) {
        super.v(i4, k10, v9, i10);
        P(this.f33173t, i4);
        P(i4, -2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.a0
    public void x(int i4) {
        int size = size() - 1;
        P(N(i4), q(i4));
        if (i4 < size) {
            P(N(size), i4);
            P(i4, q(size));
        }
        super.x(i4);
    }

    c0(int i4) {
        this(i4, 1.0f, false);
    }

    c0(int i4, float f10, boolean z9) {
        super(i4, f10);
        this.f33174u = z9;
    }
}
