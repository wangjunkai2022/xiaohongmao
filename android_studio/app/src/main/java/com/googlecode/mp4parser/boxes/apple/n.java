package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AppleGPSCoordinatesBox.java */
/* loaded from: classes2.dex */
public class n extends com.googlecode.mp4parser.a {

    /* renamed from: p  reason: collision with root package name */
    public static final String f36473p = "©xyz";

    /* renamed from: q  reason: collision with root package name */
    private static final int f36474q = 5575;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f36475r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f36476s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f36477t = null;

    /* renamed from: n  reason: collision with root package name */
    String f36478n;

    /* renamed from: o  reason: collision with root package name */
    int f36479o;

    static {
        s();
    }

    public n() {
        super(f36473p);
        this.f36479o = f36474q;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleGPSCoordinatesBox.java", n.class);
        f36475r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getValue", "com.googlecode.mp4parser.boxes.apple.AppleGPSCoordinatesBox", "", "", "", "java.lang.String"), 22);
        f36476s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setValue", "com.googlecode.mp4parser.boxes.apple.AppleGPSCoordinatesBox", "java.lang.String", "iso6709String", "", "void"), 26);
        f36477t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.apple.AppleGPSCoordinatesBox", "", "", "", "java.lang.String"), 52);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        int i4 = byteBuffer.getShort();
        this.f36479o = byteBuffer.getShort();
        byte[] bArr = new byte[i4];
        byteBuffer.get(bArr);
        this.f36478n = com.coremedia.iso.l.a(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.putShort((short) this.f36478n.length());
        byteBuffer.putShort((short) this.f36479o);
        byteBuffer.put(com.coremedia.iso.l.b(this.f36478n));
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f36478n) + 4;
    }

    public String t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36475r, this, this));
        return this.f36478n;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36477t, this, this));
        return "AppleGPSCoordinatesBox[" + this.f36478n + "]";
    }

    public void u(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36476s, this, this, str));
        this.f36479o = f36474q;
        this.f36478n = str;
    }
}
