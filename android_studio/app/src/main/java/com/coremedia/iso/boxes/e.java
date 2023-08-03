package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: ChunkOffset64BitBox.java */
/* loaded from: classes.dex */
public class e extends f {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10006t = "co64";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10007u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10008v = null;

    /* renamed from: s  reason: collision with root package name */
    private long[] f10009s;

    static {
        s();
    }

    public e() {
        super(f10006t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ChunkOffset64BitBox.java", e.class);
        f10007u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getChunkOffsets", "com.coremedia.iso.boxes.ChunkOffset64BitBox", "", "", "", "[J"), 23);
        f10008v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setChunkOffsets", "com.coremedia.iso.boxes.ChunkOffset64BitBox", "[J", "chunkOffsets", "", "void"), 28);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f10009s = new long[a10];
        for (int i4 = 0; i4 < a10; i4++) {
            this.f10009s[i4] = com.coremedia.iso.g.o(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10009s.length);
        for (long j4 : this.f10009s) {
            com.coremedia.iso.i.l(byteBuffer, j4);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f10009s.length * 8) + 8;
    }

    @Override // com.coremedia.iso.boxes.f
    public long[] v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10007u, this, this));
        return this.f10009s;
    }

    @Override // com.coremedia.iso.boxes.f
    public void w(long[] jArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10008v, this, this, jArr));
        this.f10009s = jArr;
    }
}
