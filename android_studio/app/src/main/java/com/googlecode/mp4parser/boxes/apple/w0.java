package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TrackEncodedPixelsDimensionsAtom.java */
/* loaded from: classes2.dex */
public class w0 extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f36543t = "enof";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36544u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36545v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36546w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36547x = null;

    /* renamed from: r  reason: collision with root package name */
    double f36548r;

    /* renamed from: s  reason: collision with root package name */
    double f36549s;

    static {
        s();
    }

    public w0() {
        super(f36543t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackEncodedPixelsDimensionsAtom.java", w0.class);
        f36544u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getWidth", "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom", "", "", "", "double"), 44);
        f36545v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setWidth", "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom", "double", "width", "", "void"), 48);
        f36546w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getHeight", "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom", "", "", "", "double"), 52);
        f36547x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setHeight", "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom", "double", "height", "", "void"), 56);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36548r = com.coremedia.iso.g.d(byteBuffer);
        this.f36549s = com.coremedia.iso.g.d(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.b(byteBuffer, this.f36548r);
        com.coremedia.iso.i.b(byteBuffer, this.f36549s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 12L;
    }

    public double v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36546w, this, this));
        return this.f36549s;
    }

    public double w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36544u, this, this));
        return this.f36548r;
    }

    public void x(double d4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36547x, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f36549s = d4;
    }

    public void y(double d4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36545v, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f36548r = d4;
    }
}
