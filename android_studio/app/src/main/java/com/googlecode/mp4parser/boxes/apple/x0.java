package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TrackLoadSettingsAtom.java */
/* loaded from: classes2.dex */
public class x0 extends com.googlecode.mp4parser.a {

    /* renamed from: r  reason: collision with root package name */
    public static final String f36550r = "load";

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f36551s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f36552t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36553u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36554v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36555w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36556x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36557y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36558z = null;

    /* renamed from: n  reason: collision with root package name */
    int f36559n;

    /* renamed from: o  reason: collision with root package name */
    int f36560o;

    /* renamed from: p  reason: collision with root package name */
    int f36561p;

    /* renamed from: q  reason: collision with root package name */
    int f36562q;

    static {
        s();
    }

    public x0() {
        super(f36550r);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackLoadSettingsAtom.java", x0.class);
        f36551s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPreloadStartTime", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 49);
        f36552t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPreloadStartTime", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "preloadStartTime", "", "void"), 53);
        f36553u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPreloadDuration", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 57);
        f36554v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPreloadDuration", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "preloadDuration", "", "void"), 61);
        f36555w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPreloadFlags", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 65);
        f36556x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPreloadFlags", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "preloadFlags", "", "void"), 69);
        f36557y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultHints", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 73);
        f36558z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultHints", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "defaultHints", "", "void"), 77);
    }

    public void A(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36552t, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36559n = i4;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f36559n = byteBuffer.getInt();
        this.f36560o = byteBuffer.getInt();
        this.f36561p = byteBuffer.getInt();
        this.f36562q = byteBuffer.getInt();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.putInt(this.f36559n);
        byteBuffer.putInt(this.f36560o);
        byteBuffer.putInt(this.f36561p);
        byteBuffer.putInt(this.f36562q);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 16L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36557y, this, this));
        return this.f36562q;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36553u, this, this));
        return this.f36560o;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36555w, this, this));
        return this.f36561p;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36551s, this, this));
        return this.f36559n;
    }

    public void x(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36558z, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36562q = i4;
    }

    public void y(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36554v, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36560o = i4;
    }

    public void z(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36556x, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36561p = i4;
    }
}
