package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TrackProductionApertureDimensionsAtom.java */
/* loaded from: classes2.dex */
public class y0 extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f36566t = "prof";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36567u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36568v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36569w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36570x = null;

    /* renamed from: r  reason: collision with root package name */
    double f36571r;

    /* renamed from: s  reason: collision with root package name */
    double f36572s;

    static {
        s();
    }

    public y0() {
        super(f36566t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackProductionApertureDimensionsAtom.java", y0.class);
        f36567u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getWidth", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "", "", "", "double"), 44);
        f36568v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setWidth", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "double", "width", "", "void"), 48);
        f36569w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getHeight", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "", "", "", "double"), 52);
        f36570x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setHeight", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "double", "height", "", "void"), 56);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36571r = com.coremedia.iso.g.d(byteBuffer);
        this.f36572s = com.coremedia.iso.g.d(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.b(byteBuffer, this.f36571r);
        com.coremedia.iso.i.b(byteBuffer, this.f36572s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 12L;
    }

    public double v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36569w, this, this));
        return this.f36572s;
    }

    public double w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36567u, this, this));
        return this.f36571r;
    }

    public void x(double d4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36570x, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f36572s = d4;
    }

    public void y(double d4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36568v, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f36571r = d4;
    }
}
