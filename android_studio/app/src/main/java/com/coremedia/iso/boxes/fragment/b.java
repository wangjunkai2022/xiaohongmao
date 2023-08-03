package com.coremedia.iso.boxes.fragment;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: MovieExtendsHeaderBox.java */
/* loaded from: classes.dex */
public class b extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10032s = "mehd";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10033t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10034u = null;

    /* renamed from: r  reason: collision with root package name */
    private long f10035r;

    static {
        s();
    }

    public b() {
        super(f10032s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MovieExtendsHeaderBox.java", b.class);
        f10033t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFragmentDuration", "com.coremedia.iso.boxes.fragment.MovieExtendsHeaderBox", "", "", "", "long"), 65);
        f10034u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFragmentDuration", "com.coremedia.iso.boxes.fragment.MovieExtendsHeaderBox", "long", "fragmentDuration", "", "void"), 69);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10035r = getVersion() == 1 ? com.coremedia.iso.g.o(byteBuffer) : com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, this.f10035r);
        } else {
            com.coremedia.iso.i.i(byteBuffer, this.f10035r);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return getVersion() == 1 ? 12 : 8;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10033t, this, this));
        return this.f10035r;
    }

    public void w(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10034u, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10035r = j4;
    }
}
