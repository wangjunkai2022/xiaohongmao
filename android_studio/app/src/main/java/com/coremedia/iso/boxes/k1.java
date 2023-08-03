package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: UserBox.java */
/* loaded from: classes.dex */
public class k1 extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f10207o = "uuid";

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f10208p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f10209q = null;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f10210r = null;

    /* renamed from: n  reason: collision with root package name */
    byte[] f10211n;

    static {
        s();
    }

    public k1(byte[] bArr) {
        super("uuid", bArr);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("UserBox.java", k1.class);
        f10208p = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.UserBox", "", "", "", "java.lang.String"), 40);
        f10209q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getData", "com.coremedia.iso.boxes.UserBox", "", "", "", "[B"), 47);
        f10210r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setData", "com.coremedia.iso.boxes.UserBox", "[B", "data", "", "void"), 51);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f10211n = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(this.f10211n);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f10211n.length;
    }

    public byte[] t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10209q, this, this));
        return this.f10211n;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10208p, this, this));
        return "UserBox[type=" + getType() + ";userType=" + new String(h()) + ";contentLength=" + this.f10211n.length + "]";
    }

    public void u(byte[] bArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10210r, this, this, bArr));
        this.f10211n = bArr;
    }
}
