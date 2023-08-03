package com.coremedia.iso.boxes.fragment;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: MovieFragmentRandomAccessOffsetBox.java */
/* loaded from: classes.dex */
public class f extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10043s = "mfro";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10044t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10045u = null;

    /* renamed from: r  reason: collision with root package name */
    private long f10046r;

    static {
        s();
    }

    public f() {
        super(f10043s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MovieFragmentRandomAccessOffsetBox.java", f.class);
        f10044t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMfraSize", "com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessOffsetBox", "", "", "", "long"), 56);
        f10045u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMfraSize", "com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessOffsetBox", "long", "mfraSize", "", "void"), 60);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10046r = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10046r);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 8L;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10044t, this, this));
        return this.f10046r;
    }

    public void w(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10045u, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10046r = j4;
    }
}
