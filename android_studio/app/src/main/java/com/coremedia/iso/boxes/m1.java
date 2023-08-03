package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: VideoMediaHeaderBox.java */
/* loaded from: classes.dex */
public class m1 extends a {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10235t = "vmhd";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10236u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10237v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10238w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10239x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10240y = null;

    /* renamed from: r  reason: collision with root package name */
    private int f10241r;

    /* renamed from: s  reason: collision with root package name */
    private int[] f10242s;

    static {
        s();
    }

    public m1() {
        super(f10235t);
        this.f10241r = 0;
        this.f10242s = new int[3];
        setFlags(1);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("VideoMediaHeaderBox.java", m1.class);
        f10236u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "int"), 39);
        f10237v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "[I"), 43);
        f10238w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "java.lang.String"), 71);
        f10239x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "[I", "opcolor", "", "void"), 75);
        f10240y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "int", "graphicsmode", "", "void"), 79);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10241r = com.coremedia.iso.g.i(byteBuffer);
        this.f10242s = new int[3];
        for (int i4 = 0; i4 < 3; i4++) {
            this.f10242s[i4] = com.coremedia.iso.g.i(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.f(byteBuffer, this.f10241r);
        for (int i4 : this.f10242s) {
            com.coremedia.iso.i.f(byteBuffer, i4);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 12L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10238w, this, this));
        return "VideoMediaHeaderBox[graphicsmode=" + v() + ";opcolor0=" + w()[0] + ";opcolor1=" + w()[1] + ";opcolor2=" + w()[2] + "]";
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10236u, this, this));
        return this.f10241r;
    }

    public int[] w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10237v, this, this));
        return this.f10242s;
    }

    public void x(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10240y, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10241r = i4;
    }

    public void y(int[] iArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10239x, this, this, iArr));
        this.f10242s = iArr;
    }
}
