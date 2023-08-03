package com.google.common.collect;

import java.util.Arrays;

/* compiled from: ObjectCountLinkedHashMap.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
class r3<K> extends q3<K> {

    /* renamed from: r  reason: collision with root package name */
    private static final int f33859r = -2;
    @h3.d

    /* renamed from: o  reason: collision with root package name */
    transient long[] f33860o;

    /* renamed from: p  reason: collision with root package name */
    private transient int f33861p;

    /* renamed from: q  reason: collision with root package name */
    private transient int f33862q;

    r3() {
        this(3);
    }

    public static <K> r3<K> F() {
        return new r3<>();
    }

    public static <K> r3<K> G(int i4) {
        return new r3<>(i4);
    }

    private int H(int i4) {
        return (int) (this.f33860o[i4] >>> 32);
    }

    private int I(int i4) {
        return (int) this.f33860o[i4];
    }

    private void J(int i4, int i10) {
        long[] jArr = this.f33860o;
        jArr[i4] = (jArr[i4] & 4294967295L) | (i10 << 32);
    }

    private void K(int i4, int i10) {
        if (i4 == -2) {
            this.f33861p = i10;
        } else {
            L(i4, i10);
        }
        if (i10 == -2) {
            this.f33862q = i4;
        } else {
            J(i10, i4);
        }
    }

    private void L(int i4, int i10) {
        long[] jArr = this.f33860o;
        jArr[i4] = (jArr[i4] & (-4294967296L)) | (i10 & 4294967295L);
    }

    @Override // com.google.common.collect.q3
    public void a() {
        super.a();
        this.f33861p = -2;
        this.f33862q = -2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q3
    public int f() {
        int i4 = this.f33861p;
        if (i4 == -2) {
            return -1;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q3
    public void o(int i4, float f10) {
        super.o(i4, f10);
        this.f33861p = -2;
        this.f33862q = -2;
        long[] jArr = new long[i4];
        this.f33860o = jArr;
        Arrays.fill(jArr, -1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q3
    public void p(int i4, K k10, int i10, int i11) {
        super.p(i4, k10, i10, i11);
        K(this.f33862q, i4);
        K(i4, -2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q3
    public void q(int i4) {
        int D = D() - 1;
        K(H(i4), I(i4));
        if (i4 < D) {
            K(H(D), i4);
            K(i4, I(D));
        }
        super.q(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q3
    public int t(int i4) {
        int I = I(i4);
        if (I == -2) {
            return -1;
        }
        return I;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q3
    public int u(int i4, int i10) {
        return i4 == D() ? i10 : i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q3
    public void z(int i4) {
        super.z(i4);
        long[] jArr = this.f33860o;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i4);
        this.f33860o = copyOf;
        Arrays.fill(copyOf, length, i4, -1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r3(int i4) {
        this(i4, 1.0f);
    }

    r3(int i4, float f10) {
        super(i4, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r3(q3<K> q3Var) {
        o(q3Var.D(), 1.0f);
        int f10 = q3Var.f();
        while (f10 != -1) {
            v(q3Var.j(f10), q3Var.l(f10));
            f10 = q3Var.t(f10);
        }
    }
}
