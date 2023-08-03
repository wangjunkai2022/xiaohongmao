package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.aspectj.lang.c;

/* compiled from: Utf8AppleDataBox.java */
/* loaded from: classes2.dex */
public abstract class z0 extends j {

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36573y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36574z = null;

    /* renamed from: x  reason: collision with root package name */
    String f36575x;

    static {
        s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public z0(String str) {
        super(str, 1);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("Utf8AppleDataBox.java", z0.class);
        f36573y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getValue", "com.googlecode.mp4parser.boxes.apple.Utf8AppleDataBox", "", "", "", "java.lang.String"), 21);
        f36574z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setValue", "com.googlecode.mp4parser.boxes.apple.Utf8AppleDataBox", "java.lang.String", "value", "", "void"), 30);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    @s3.a
    public byte[] C() {
        return com.coremedia.iso.l.b(this.f36575x);
    }

    public String E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36573y, this, this));
        if (!j()) {
            m();
        }
        return this.f36575x;
    }

    public void F(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36574z, this, this, str));
        this.f36575x = str;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return this.f36575x.getBytes(Charset.forName("UTF-8")).length;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        this.f36575x = com.coremedia.iso.g.h(byteBuffer, byteBuffer.remaining());
    }
}
