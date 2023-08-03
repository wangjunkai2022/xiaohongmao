package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: RecordingYearBox.java */
/* loaded from: classes.dex */
public class q0 extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10286s = "yrrc";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10287t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10288u = null;

    /* renamed from: r  reason: collision with root package name */
    int f10289r;

    static {
        s();
    }

    public q0() {
        super(f10286s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("RecordingYearBox.java", q0.class);
        f10287t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getRecordingYear", "com.coremedia.iso.boxes.RecordingYearBox", "", "", "", "int"), 42);
        f10288u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setRecordingYear", "com.coremedia.iso.boxes.RecordingYearBox", "int", "recordingYear", "", "void"), 46);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10289r = com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.f(byteBuffer, this.f10289r);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 6L;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10287t, this, this));
        return this.f10289r;
    }

    public void w(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10288u, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10289r = i4;
    }
}
