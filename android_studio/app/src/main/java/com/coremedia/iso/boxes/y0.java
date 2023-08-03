package com.coremedia.iso.boxes;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: SoundMediaHeaderBox.java */
/* loaded from: classes.dex */
public class y0 extends a {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10482s = "smhd";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10483t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10484u = null;

    /* renamed from: r  reason: collision with root package name */
    private float f10485r;

    static {
        s();
    }

    public y0() {
        super(f10482s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SoundMediaHeaderBox.java", y0.class);
        f10483t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBalance", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", TypedValues.Custom.S_FLOAT), 36);
        f10484u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", "java.lang.String"), 58);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10485r = com.coremedia.iso.g.e(byteBuffer);
        com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.c(byteBuffer, this.f10485r);
        com.coremedia.iso.i.f(byteBuffer, 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 8L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10484u, this, this));
        return "SoundMediaHeaderBox[balance=" + v() + "]";
    }

    public float v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10483t, this, this));
        return this.f10485r;
    }
}
