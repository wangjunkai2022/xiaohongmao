package com.coremedia.iso.boxes;

import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;

/* compiled from: SampleDescriptionBox.java */
/* loaded from: classes.dex */
public class s0 extends com.googlecode.mp4parser.b implements v {

    /* renamed from: p  reason: collision with root package name */
    public static final String f10315p = "stsd";

    /* renamed from: n  reason: collision with root package name */
    private int f10316n;

    /* renamed from: o  reason: collision with root package name */
    private int f10317o;

    public s0() {
        super(f10315p);
    }

    public com.coremedia.iso.boxes.sampleentry.a J() {
        Iterator it = h(com.coremedia.iso.boxes.sampleentry.a.class).iterator();
        if (it.hasNext()) {
            return (com.coremedia.iso.boxes.sampleentry.a) it.next();
        }
        return null;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(8);
        com.coremedia.iso.i.m(allocate, this.f10316n);
        com.coremedia.iso.i.h(allocate, this.f10317o);
        com.coremedia.iso.i.i(allocate, y().size());
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getFlags() {
        return this.f10317o;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long E = E() + 8;
        return E + ((this.f36436l || 8 + E >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getVersion() {
        return this.f10316n;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        eVar.read(allocate);
        allocate.rewind();
        this.f10316n = com.coremedia.iso.g.p(allocate);
        this.f10317o = com.coremedia.iso.g.k(allocate);
        G(eVar, j4 - 8, cVar);
    }

    @Override // com.coremedia.iso.boxes.v
    public void setFlags(int i4) {
        this.f10317o = i4;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setVersion(int i4) {
        this.f10316n = i4;
    }
}
