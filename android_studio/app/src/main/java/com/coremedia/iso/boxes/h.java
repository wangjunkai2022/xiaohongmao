package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: CompositionShiftLeastGreatestAtom.java */
/* loaded from: classes.dex */
public class h extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;

    /* renamed from: w  reason: collision with root package name */
    public static final String f10144w = "cslg";

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10145x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10146y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10147z = null;

    /* renamed from: r  reason: collision with root package name */
    int f10148r;

    /* renamed from: s  reason: collision with root package name */
    int f10149s;

    /* renamed from: t  reason: collision with root package name */
    int f10150t;

    /* renamed from: u  reason: collision with root package name */
    int f10151u;

    /* renamed from: v  reason: collision with root package name */
    int f10152v;

    static {
        s();
    }

    public h() {
        super(f10144w);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("CompositionShiftLeastGreatestAtom.java", h.class);
        f10145x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCompositionOffsetToDisplayOffsetShift", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 66);
        f10146y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCompositionOffsetToDisplayOffsetShift", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "compositionOffsetToDisplayOffsetShift", "", "void"), 70);
        f10147z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLeastDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 74);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLeastDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "leastDisplayOffset", "", "void"), 78);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGreatestDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 82);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setGreatestDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "greatestDisplayOffset", "", "void"), 86);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDisplayStartTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 90);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDisplayStartTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "displayStartTime", "", "void"), 94);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDisplayEndTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 98);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDisplayEndTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "displayEndTime", "", "void"), 102);
    }

    public void A(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10146y, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10148r = i4;
    }

    public void B(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10152v = i4;
    }

    public void C(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10151u = i4;
    }

    public void D(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10150t = i4;
    }

    public void E(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10149s = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10148r = byteBuffer.getInt();
        this.f10149s = byteBuffer.getInt();
        this.f10150t = byteBuffer.getInt();
        this.f10151u = byteBuffer.getInt();
        this.f10152v = byteBuffer.getInt();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.putInt(this.f10148r);
        byteBuffer.putInt(this.f10149s);
        byteBuffer.putInt(this.f10150t);
        byteBuffer.putInt(this.f10151u);
        byteBuffer.putInt(this.f10152v);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 24L;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10145x, this, this));
        return this.f10148r;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f10152v;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f10151u;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f10150t;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10147z, this, this));
        return this.f10149s;
    }
}
