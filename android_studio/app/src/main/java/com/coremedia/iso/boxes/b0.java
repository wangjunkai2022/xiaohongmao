package com.coremedia.iso.boxes;

import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: ItemProtectionBox.java */
/* loaded from: classes.dex */
public class b0 extends com.googlecode.mp4parser.b implements v {

    /* renamed from: p  reason: collision with root package name */
    public static final String f9964p = "ipro";

    /* renamed from: n  reason: collision with root package name */
    private int f9965n;

    /* renamed from: o  reason: collision with root package name */
    private int f9966o;

    public b0() {
        super(f9964p);
    }

    public w0 J() {
        if (h(w0.class).isEmpty()) {
            return null;
        }
        return (w0) h(w0.class).get(0);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(6);
        com.coremedia.iso.i.m(allocate, this.f9965n);
        com.coremedia.iso.i.h(allocate, this.f9966o);
        com.coremedia.iso.i.f(allocate, y().size());
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getFlags() {
        return this.f9966o;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long E = E() + 6;
        return E + ((this.f36436l || E >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getVersion() {
        return this.f9965n;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(6);
        eVar.read(allocate);
        allocate.rewind();
        this.f9965n = com.coremedia.iso.g.p(allocate);
        this.f9966o = com.coremedia.iso.g.k(allocate);
        G(eVar, j4 - 6, cVar);
    }

    @Override // com.coremedia.iso.boxes.v
    public void setFlags(int i4) {
        this.f9966o = i4;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setVersion(int i4) {
        this.f9965n = i4;
    }
}
