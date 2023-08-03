package com.mp4parser.iso14496.part12;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: BitRateBox.java */
/* loaded from: classes3.dex */
public final class a extends com.googlecode.mp4parser.a {

    /* renamed from: q  reason: collision with root package name */
    public static final String f46916q = "btrt";

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f46917r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f46918s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f46919t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f46920u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f46921v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f46922w = null;

    /* renamed from: n  reason: collision with root package name */
    private long f46923n;

    /* renamed from: o  reason: collision with root package name */
    private long f46924o;

    /* renamed from: p  reason: collision with root package name */
    private long f46925p;

    static {
        s();
    }

    public a() {
        super(f46916q);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("BitRateBox.java", a.class);
        f46917r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBufferSizeDb", "com.mp4parser.iso14496.part12.BitRateBox", "", "", "", "long"), 74);
        f46918s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBufferSizeDb", "com.mp4parser.iso14496.part12.BitRateBox", "long", "bufferSizeDb", "", "void"), 82);
        f46919t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMaxBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "", "", "", "long"), 90);
        f46920u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMaxBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "long", "maxBitrate", "", "void"), 98);
        f46921v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAvgBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "", "", "", "long"), 106);
        f46922w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAvgBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "long", "avgBitrate", "", "void"), 114);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f46923n = g.l(byteBuffer);
        this.f46924o = g.l(byteBuffer);
        this.f46925p = g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        i.i(byteBuffer, this.f46923n);
        i.i(byteBuffer, this.f46924o);
        i.i(byteBuffer, this.f46925p);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 12L;
    }

    public long t() {
        j.b().c(e.v(f46921v, this, this));
        return this.f46925p;
    }

    public long u() {
        j.b().c(e.v(f46917r, this, this));
        return this.f46923n;
    }

    public long v() {
        j.b().c(e.v(f46919t, this, this));
        return this.f46924o;
    }

    public void w(long j4) {
        j.b().c(e.w(f46922w, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f46925p = j4;
    }

    public void x(long j4) {
        j.b().c(e.w(f46918s, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f46923n = j4;
    }

    public void y(long j4) {
        j.b().c(e.w(f46920u, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f46924o = j4;
    }
}
