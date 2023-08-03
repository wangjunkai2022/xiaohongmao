package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: SyncSampleBox.java */
/* loaded from: classes.dex */
public class c1 extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f9985s = "stss";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f9986t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f9987u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f9988v = null;

    /* renamed from: r  reason: collision with root package name */
    private long[] f9989r;

    static {
        s();
    }

    public c1() {
        super(f9985s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SyncSampleBox.java", c1.class);
        f9986t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "[J"), 46);
        f9987u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "java.lang.String"), 77);
        f9988v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "[J", "sampleNumber", "", "void"), 81);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f9989r = new long[a10];
        for (int i4 = 0; i4 < a10; i4++) {
            this.f9989r[i4] = com.coremedia.iso.g.l(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f9989r.length);
        for (long j4 : this.f9989r) {
            com.coremedia.iso.i.i(byteBuffer, j4);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f9989r.length * 4) + 8;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9987u, this, this));
        return "SyncSampleBox[entryCount=" + this.f9989r.length + "]";
    }

    public long[] v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9986t, this, this));
        return this.f9989r;
    }

    public void w(long[] jArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9988v, this, this, jArr));
        this.f9989r = jArr;
    }
}
