package com.coremedia.iso.boxes.fragment;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: MovieFragmentHeaderBox.java */
/* loaded from: classes.dex */
public class d extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10037s = "mfhd";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10038t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10039u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10040v = null;

    /* renamed from: r  reason: collision with root package name */
    private long f10041r;

    static {
        s();
    }

    public d() {
        super(f10037s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MovieFragmentHeaderBox.java", d.class);
        f10038t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSequenceNumber", "com.coremedia.iso.boxes.fragment.MovieFragmentHeaderBox", "", "", "", "long"), 59);
        f10039u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSequenceNumber", "com.coremedia.iso.boxes.fragment.MovieFragmentHeaderBox", "long", "sequenceNumber", "", "void"), 63);
        f10040v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.fragment.MovieFragmentHeaderBox", "", "", "", "java.lang.String"), 68);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10041r = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10041r);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 8L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10040v, this, this));
        return "MovieFragmentHeaderBox{sequenceNumber=" + this.f10041r + '}';
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10038t, this, this));
        return this.f10041r;
    }

    public void w(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10039u, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10041r = j4;
    }
}
