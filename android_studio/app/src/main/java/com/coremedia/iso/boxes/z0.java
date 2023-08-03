package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: StaticChunkOffsetBox.java */
/* loaded from: classes.dex */
public class z0 extends f {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10490t = "stco";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10491u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10492v = null;

    /* renamed from: s  reason: collision with root package name */
    private long[] f10493s;

    static {
        s();
    }

    public z0() {
        super(f10490t);
        this.f10493s = new long[0];
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("StaticChunkOffsetBox.java", z0.class);
        f10491u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "", "", "", "[J"), 39);
        f10492v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "[J", "chunkOffsets", "", "void"), 48);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f10493s = new long[a10];
        for (int i4 = 0; i4 < a10; i4++) {
            this.f10493s[i4] = com.coremedia.iso.g.l(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10493s.length);
        for (long j4 : this.f10493s) {
            com.coremedia.iso.i.i(byteBuffer, j4);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f10493s.length * 4) + 8;
    }

    @Override // com.coremedia.iso.boxes.f
    public long[] v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10491u, this, this));
        return this.f10493s;
    }

    @Override // com.coremedia.iso.boxes.f
    public void w(long[] jArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10492v, this, this, jArr));
        this.f10493s = jArr;
    }
}
