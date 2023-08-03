package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: ItemDataBox.java */
/* loaded from: classes.dex */
public class z extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f10486o = "idat";

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f10487p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f10488q = null;

    /* renamed from: n  reason: collision with root package name */
    ByteBuffer f10489n;

    static {
        s();
    }

    public z() {
        super(f10486o);
        this.f10489n = ByteBuffer.allocate(0);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ItemDataBox.java", z.class);
        f10487p = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getData", "com.coremedia.iso.boxes.ItemDataBox", "", "", "", "java.nio.ByteBuffer"), 19);
        f10488q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setData", "com.coremedia.iso.boxes.ItemDataBox", "java.nio.ByteBuffer", "data", "", "void"), 23);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f10489n = byteBuffer.slice();
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(this.f10489n);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f10489n.limit();
    }

    public ByteBuffer t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10487p, this, this));
        return this.f10489n;
    }

    public void u(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10488q, this, this, byteBuffer));
        this.f10489n = byteBuffer;
    }
}
