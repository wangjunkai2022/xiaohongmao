package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: FreeSpaceBox.java */
/* loaded from: classes.dex */
public class u extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f10406o = "skip";

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f10407p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f10408q = null;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f10409r = null;

    /* renamed from: n  reason: collision with root package name */
    byte[] f10410n;

    static {
        s();
    }

    public u() {
        super(f10406o);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("FreeSpaceBox.java", u.class);
        f10407p = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setData", "com.coremedia.iso.boxes.FreeSpaceBox", "[B", "data", "", "void"), 42);
        f10408q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getData", "com.coremedia.iso.boxes.FreeSpaceBox", "", "", "", "[B"), 46);
        f10409r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.FreeSpaceBox", "", "", "", "java.lang.String"), 61);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f10410n = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(this.f10410n);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f10410n.length;
    }

    public byte[] t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10408q, this, this));
        return this.f10410n;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10409r, this, this));
        return "FreeSpaceBox[size=" + this.f10410n.length + ";type=" + getType() + "]";
    }

    public void u(byte[] bArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10407p, this, this, bArr));
        this.f10410n = bArr;
    }
}
