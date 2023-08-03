package com.googlecode.mp4parser.boxes.piff;

import com.auth0.jwt.impl.i;
import com.googlecode.mp4parser.j;
import org.aspectj.lang.c;

/* compiled from: PiffSampleEncryptionBox.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.boxes.b {
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;

    static {
        s();
    }

    public a() {
        super("uuid");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("PiffSampleEncryptionBox.java", a.class);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAlgorithmId", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "", "", "", "int"), 46);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAlgorithmId", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "int", "algorithmId", "", "void"), 50);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getIvSize", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "", "", "", "int"), 54);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setIvSize", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "int", "ivSize", "", "void"), 58);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getKid", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "", "", "", "[B"), 62);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setKid", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "[B", i.f7104d, "", "void"), 66);
    }

    public int D() {
        j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f36581r;
    }

    public int E() {
        j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f36582s;
    }

    public byte[] F() {
        j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f36583t;
    }

    public void G(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36581r = i4;
    }

    public void H(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36582s = i4;
    }

    public void I(byte[] bArr) {
        j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, bArr));
        this.f36583t = bArr;
    }

    @s3.a
    public void J(boolean z9) {
        if (z9) {
            setFlags(getFlags() | 1);
        } else {
            setFlags(getFlags() & 16777214);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] h() {
        return new byte[]{-94, 57, 79, 82, 90, -101, 79, com.google.common.base.c.f32117x, -94, 68, 108, 66, 124, 100, -115, -12};
    }

    @Override // com.googlecode.mp4parser.boxes.b
    @s3.a
    public boolean y() {
        return (getFlags() & 1) > 0;
    }
}
