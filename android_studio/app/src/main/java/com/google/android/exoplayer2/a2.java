package com.google.android.exoplayer2;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/* compiled from: PlaylistTimeline.java */
/* loaded from: classes2.dex */
final class a2 extends a {

    /* renamed from: i  reason: collision with root package name */
    private final int f20711i;

    /* renamed from: j  reason: collision with root package name */
    private final int f20712j;

    /* renamed from: k  reason: collision with root package name */
    private final int[] f20713k;

    /* renamed from: l  reason: collision with root package name */
    private final int[] f20714l;

    /* renamed from: m  reason: collision with root package name */
    private final s2[] f20715m;

    /* renamed from: n  reason: collision with root package name */
    private final Object[] f20716n;

    /* renamed from: o  reason: collision with root package name */
    private final HashMap<Object, Integer> f20717o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a2(Collection<? extends k1> collection, com.google.android.exoplayer2.source.z0 z0Var) {
        super(false, z0Var);
        int i4 = 0;
        int size = collection.size();
        this.f20713k = new int[size];
        this.f20714l = new int[size];
        this.f20715m = new s2[size];
        this.f20716n = new Object[size];
        this.f20717o = new HashMap<>();
        int i10 = 0;
        int i11 = 0;
        for (k1 k1Var : collection) {
            this.f20715m[i11] = k1Var.a();
            this.f20714l[i11] = i4;
            this.f20713k[i11] = i10;
            i4 += this.f20715m[i11].u();
            i10 += this.f20715m[i11].m();
            this.f20716n[i11] = k1Var.getUid();
            this.f20717o.put(this.f20716n[i11], Integer.valueOf(i11));
            i11++;
        }
        this.f20711i = i4;
        this.f20712j = i10;
    }

    @Override // com.google.android.exoplayer2.a
    protected int A(int i4) {
        return com.google.android.exoplayer2.util.z0.i(this.f20714l, i4 + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.a
    protected Object D(int i4) {
        return this.f20716n[i4];
    }

    @Override // com.google.android.exoplayer2.a
    protected int F(int i4) {
        return this.f20713k[i4];
    }

    @Override // com.google.android.exoplayer2.a
    protected int G(int i4) {
        return this.f20714l[i4];
    }

    @Override // com.google.android.exoplayer2.a
    protected s2 J(int i4) {
        return this.f20715m[i4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<s2> K() {
        return Arrays.asList(this.f20715m);
    }

    @Override // com.google.android.exoplayer2.s2
    public int m() {
        return this.f20712j;
    }

    @Override // com.google.android.exoplayer2.s2
    public int u() {
        return this.f20711i;
    }

    @Override // com.google.android.exoplayer2.a
    protected int y(Object obj) {
        Integer num = this.f20717o.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.a
    protected int z(int i4) {
        return com.google.android.exoplayer2.util.z0.i(this.f20713k, i4 + 1, false, false);
    }
}
