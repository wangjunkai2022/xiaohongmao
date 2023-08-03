package com.coremedia.iso.boxes.fragment;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TrackFragmentBaseMediaDecodeTimeBox.java */
/* loaded from: classes.dex */
public class j extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10074s = "tfdt";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10075t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10076u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10077v = null;

    /* renamed from: r  reason: collision with root package name */
    private long f10078r;

    static {
        s();
    }

    public j() {
        super(f10074s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackFragmentBaseMediaDecodeTimeBox.java", j.class);
        f10075t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBaseMediaDecodeTime", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox", "", "", "", "long"), 65);
        f10076u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBaseMediaDecodeTime", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox", "long", "baseMediaDecodeTime", "", "void"), 69);
        f10077v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox", "", "", "", "java.lang.String"), 74);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f10078r = com.coremedia.iso.g.o(byteBuffer);
        } else {
            this.f10078r = com.coremedia.iso.g.l(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, this.f10078r);
        } else {
            com.coremedia.iso.i.i(byteBuffer, this.f10078r);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return getVersion() == 0 ? 8 : 12;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10077v, this, this));
        return "TrackFragmentBaseMediaDecodeTimeBox{baseMediaDecodeTime=" + this.f10078r + '}';
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10075t, this, this));
        return this.f10078r;
    }

    public void w(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10076u, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10078r = j4;
    }
}
