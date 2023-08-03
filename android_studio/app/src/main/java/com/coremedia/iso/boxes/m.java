package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: DataEntryUrnBox.java */
/* loaded from: classes.dex */
public class m extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10221t = "urn ";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10222u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10223v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10224w = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10225r;

    /* renamed from: s  reason: collision with root package name */
    private String f10226s;

    static {
        s();
    }

    public m() {
        super(f10221t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("DataEntryUrnBox.java", m.class);
        f10222u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getName", "com.coremedia.iso.boxes.DataEntryUrnBox", "", "", "", "java.lang.String"), 40);
        f10223v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLocation", "com.coremedia.iso.boxes.DataEntryUrnBox", "", "", "", "java.lang.String"), 44);
        f10224w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.DataEntryUrnBox", "", "", "", "java.lang.String"), 67);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f10225r = com.coremedia.iso.g.g(byteBuffer);
        this.f10226s = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.l.b(this.f10225r));
        byteBuffer.put((byte) 0);
        byteBuffer.put(com.coremedia.iso.l.b(this.f10226s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f10225r) + 1 + com.coremedia.iso.l.c(this.f10226s) + 1;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10224w, this, this));
        return "DataEntryUrlBox[name=" + w() + ";location=" + v() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10223v, this, this));
        return this.f10226s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10222u, this, this));
        return this.f10225r;
    }
}
