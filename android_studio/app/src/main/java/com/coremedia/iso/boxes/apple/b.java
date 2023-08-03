package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AppleDataReferenceBox.java */
/* loaded from: classes.dex */
public class b extends com.googlecode.mp4parser.c {

    /* renamed from: u  reason: collision with root package name */
    public static final String f9933u = "rdrf";

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f9934v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f9935w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f9936x = null;

    /* renamed from: r  reason: collision with root package name */
    private int f9937r;

    /* renamed from: s  reason: collision with root package name */
    private String f9938s;

    /* renamed from: t  reason: collision with root package name */
    private String f9939t;

    static {
        s();
    }

    public b() {
        super(f9933u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleDataReferenceBox.java", b.class);
        f9934v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataReferenceSize", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox", "", "", "", "long"), 63);
        f9935w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataReferenceType", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox", "", "", "", "java.lang.String"), 67);
        f9936x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataReference", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox", "", "", "", "java.lang.String"), 71);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f9938s = com.coremedia.iso.g.b(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f9937r = a10;
        this.f9939t = com.coremedia.iso.g.h(byteBuffer, a10);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.f.J(this.f9938s));
        i.i(byteBuffer, this.f9937r);
        byteBuffer.put(l.b(this.f9939t));
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f9937r + 12;
    }

    public String v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f9936x, this, this));
        return this.f9939t;
    }

    public long w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f9934v, this, this));
        return this.f9937r;
    }

    public String x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f9935w, this, this));
        return this.f9938s;
    }
}
