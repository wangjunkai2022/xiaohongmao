package com.coremedia.iso.boxes;

import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: DataReferenceBox.java */
/* loaded from: classes.dex */
public class o extends com.googlecode.mp4parser.b implements v {

    /* renamed from: p  reason: collision with root package name */
    public static final String f10264p = "dref";

    /* renamed from: n  reason: collision with root package name */
    private int f10265n;

    /* renamed from: o  reason: collision with root package name */
    private int f10266o;

    public o() {
        super(f10264p);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(8);
        com.coremedia.iso.i.m(allocate, this.f10265n);
        com.coremedia.iso.i.h(allocate, this.f10266o);
        com.coremedia.iso.i.i(allocate, y().size());
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getFlags() {
        return this.f10266o;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long E = E() + 8;
        return E + ((this.f36436l || 8 + E >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getVersion() {
        return this.f10265n;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        eVar.read(allocate);
        allocate.rewind();
        this.f10265n = com.coremedia.iso.g.p(allocate);
        this.f10266o = com.coremedia.iso.g.k(allocate);
        G(eVar, j4 - 8, cVar);
    }

    @Override // com.coremedia.iso.boxes.v
    public void setFlags(int i4) {
        this.f10266o = i4;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setVersion(int i4) {
        this.f10265n = i4;
    }
}
