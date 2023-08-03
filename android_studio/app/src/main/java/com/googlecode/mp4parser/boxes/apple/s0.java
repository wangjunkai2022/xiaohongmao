package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: PixelAspectRationAtom.java */
/* loaded from: classes2.dex */
public class s0 extends com.googlecode.mp4parser.a {

    /* renamed from: p  reason: collision with root package name */
    public static final String f36510p = "pasp";

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f36511q = null;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f36512r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f36513s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f36514t = null;

    /* renamed from: n  reason: collision with root package name */
    private int f36515n;

    /* renamed from: o  reason: collision with root package name */
    private int f36516o;

    static {
        s();
    }

    public s0() {
        super(f36510p);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("PixelAspectRationAtom.java", s0.class);
        f36511q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "gethSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "", "", "", "int"), 35);
        f36512r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "sethSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "int", "hSpacing", "", "void"), 39);
        f36513s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getvSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "", "", "", "int"), 43);
        f36514t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setvSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "int", "vSpacing", "", "void"), 47);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f36515n = byteBuffer.getInt();
        this.f36516o = byteBuffer.getInt();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.putInt(this.f36515n);
        byteBuffer.putInt(this.f36516o);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 8L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36511q, this, this));
        return this.f36515n;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36513s, this, this));
        return this.f36516o;
    }

    public void v(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36512r, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36515n = i4;
    }

    public void w(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36514t, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36516o = i4;
    }
}
