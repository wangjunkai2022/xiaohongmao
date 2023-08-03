package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TfxdBox.java */
/* loaded from: classes2.dex */
public class e extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f36895t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36896u = null;

    /* renamed from: r  reason: collision with root package name */
    public long f36897r;

    /* renamed from: s  reason: collision with root package name */
    public long f36898s;

    static {
        s();
    }

    public e() {
        super("uuid");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TfxdBox.java", e.class);
        f36895t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFragmentAbsoluteTime", "com.googlecode.mp4parser.boxes.piff.TfxdBox", "", "", "", "long"), 79);
        f36896u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFragmentAbsoluteDuration", "com.googlecode.mp4parser.boxes.piff.TfxdBox", "", "", "", "long"), 83);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f36897r = g.o(byteBuffer);
            this.f36898s = g.o(byteBuffer);
            return;
        }
        this.f36897r = g.l(byteBuffer);
        this.f36898s = g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            i.l(byteBuffer, this.f36897r);
            i.l(byteBuffer, this.f36898s);
            return;
        }
        i.i(byteBuffer, this.f36897r);
        i.i(byteBuffer, this.f36898s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return getVersion() == 1 ? 20 : 12;
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] h() {
        return new byte[]{109, com.google.common.base.c.G, -101, 5, 66, -43, 68, -26, Byte.MIN_VALUE, -30, com.google.common.base.c.f32117x, com.google.common.base.c.G, -81, -9, 87, -78};
    }

    public long v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36896u, this, this));
        return this.f36898s;
    }

    public long w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36895t, this, this));
        return this.f36897r;
    }
}
