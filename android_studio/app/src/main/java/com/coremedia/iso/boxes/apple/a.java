package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AppleDataRateBox.java */
/* loaded from: classes.dex */
public class a extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f9930s = "rmdr";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f9931t = null;

    /* renamed from: r  reason: collision with root package name */
    private long f9932r;

    static {
        s();
    }

    public a() {
        super(f9930s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleDataRateBox.java", a.class);
        f9931t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataRate", "com.coremedia.iso.boxes.apple.AppleDataRateBox", "", "", "", "long"), 53);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f9932r = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.i(byteBuffer, this.f9932r);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 8L;
    }

    public long v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f9931t, this, this));
        return this.f9932r;
    }
}
