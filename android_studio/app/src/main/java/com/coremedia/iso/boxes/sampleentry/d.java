package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.i;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Arrays;

/* compiled from: MpegSampleEntry.java */
/* loaded from: classes.dex */
public class d extends a {
    public d() {
        super("mp4s");
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.position(6);
        i.f(allocate, this.f10318n);
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long E = E() + 8;
        return E + ((this.f36436l || E >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        eVar.read(allocate);
        allocate.position(6);
        this.f10318n = com.coremedia.iso.g.i(allocate);
        G(eVar, j4 - 8, cVar);
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return "MpegSampleEntry" + Arrays.asList(y());
    }

    public d(String str) {
        super(str);
    }
}
