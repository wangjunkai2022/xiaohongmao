package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: CleanApertureAtom.java */
/* loaded from: classes2.dex */
public class p0 extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f36489t = "clef";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36490u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36491v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36492w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36493x = null;

    /* renamed from: r  reason: collision with root package name */
    double f36494r;

    /* renamed from: s  reason: collision with root package name */
    double f36495s;

    static {
        s();
    }

    public p0() {
        super(f36489t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("CleanApertureAtom.java", p0.class);
        f36490u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getWidth", "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom", "", "", "", "double"), 45);
        f36491v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setWidth", "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom", "double", "width", "", "void"), 49);
        f36492w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getHeight", "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom", "", "", "", "double"), 53);
        f36493x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setHeight", "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom", "double", "height", "", "void"), 57);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36494r = com.coremedia.iso.g.d(byteBuffer);
        this.f36495s = com.coremedia.iso.g.d(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.b(byteBuffer, this.f36494r);
        com.coremedia.iso.i.b(byteBuffer, this.f36495s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 12L;
    }

    public double v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36492w, this, this));
        return this.f36495s;
    }

    public double w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36490u, this, this));
        return this.f36494r;
    }

    public void x(double d4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36493x, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f36495s = d4;
    }

    public void y(double d4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36491v, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f36494r = d4;
    }
}
