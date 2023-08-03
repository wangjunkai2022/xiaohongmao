package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: UnknownBox.java */
/* loaded from: classes.dex */
public class j1 extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    private static final /* synthetic */ c.b f10187o = null;

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f10188p = null;

    /* renamed from: n  reason: collision with root package name */
    ByteBuffer f10189n;

    static {
        s();
    }

    public j1(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("UnknownBox.java", j1.class);
        f10187o = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getData", "com.coremedia.iso.boxes.UnknownBox", "", "", "", "java.nio.ByteBuffer"), 52);
        f10188p = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setData", "com.coremedia.iso.boxes.UnknownBox", "java.nio.ByteBuffer", "data", "", "void"), 56);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f10189n = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        this.f10189n.rewind();
        byteBuffer.put(this.f10189n);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f10189n.limit();
    }

    public ByteBuffer t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10187o, this, this));
        return this.f10189n;
    }

    public void u(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10188p, this, this, byteBuffer));
        this.f10189n = byteBuffer;
    }
}
