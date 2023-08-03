package com.coremedia.iso.boxes;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: OmaDrmAccessUnitFormatBox.java */
/* loaded from: classes.dex */
public final class k0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;

    /* renamed from: v  reason: collision with root package name */
    public static final String f10198v = "odaf";

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10199w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10200x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10201y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10202z = null;

    /* renamed from: r  reason: collision with root package name */
    private boolean f10203r;

    /* renamed from: s  reason: collision with root package name */
    private byte f10204s;

    /* renamed from: t  reason: collision with root package name */
    private int f10205t;

    /* renamed from: u  reason: collision with root package name */
    private int f10206u;

    static {
        s();
    }

    public k0() {
        super(f10198v);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("OmaDrmAccessUnitFormatBox.java", k0.class);
        f10199w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isSelectiveEncryption", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 46);
        f10200x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getKeyIndicatorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "", "", "", "int"), 50);
        f10201y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getInitVectorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "", "", "", "int"), 54);
        f10202z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setInitVectorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "int", "initVectorLength", "", "void"), 58);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setKeyIndicatorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "int", "keyIndicatorLength", "", "void"), 62);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAllBits", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", io.sentry.profilemeasurements.a.f83541m, "allBits", "", "void"), 66);
    }

    public void A(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10205t = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        byte p9 = (byte) com.coremedia.iso.g.p(byteBuffer);
        this.f10204s = p9;
        this.f10203r = (p9 & 128) == 128;
        this.f10205t = com.coremedia.iso.g.p(byteBuffer);
        this.f10206u = com.coremedia.iso.g.p(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.m(byteBuffer, this.f10204s);
        com.coremedia.iso.i.m(byteBuffer, this.f10205t);
        com.coremedia.iso.i.m(byteBuffer, this.f10206u);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 7L;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10201y, this, this));
        return this.f10206u;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10200x, this, this));
        return this.f10205t;
    }

    public boolean x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10199w, this, this));
        return this.f10203r;
    }

    public void y(byte b10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.c(b10)));
        this.f10204s = b10;
        this.f10203r = (b10 & 128) == 128;
    }

    public void z(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10202z, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10206u = i4;
    }
}
