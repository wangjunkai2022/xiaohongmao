package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.i;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: Ovc1VisualSampleEntryImpl.java */
/* loaded from: classes.dex */
public class e extends a {

    /* renamed from: p  reason: collision with root package name */
    public static final String f10347p = "ovc1";

    /* renamed from: o  reason: collision with root package name */
    private byte[] f10348o;

    public e() {
        super(f10347p);
        this.f10348o = new byte[0];
    }

    public byte[] J() {
        return this.f10348o;
    }

    public void K(byte[] bArr) {
        this.f10348o = bArr;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.position(6);
        i.f(allocate, this.f10318n);
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        writableByteChannel.write(ByteBuffer.wrap(this.f10348o));
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        int i4 = 16;
        if (!this.f36436l && this.f10348o.length + 16 < KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            i4 = 8;
        }
        return i4 + this.f10348o.length + 8;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j4));
        eVar.read(allocate);
        allocate.position(6);
        this.f10318n = com.coremedia.iso.g.i(allocate);
        byte[] bArr = new byte[allocate.remaining()];
        this.f10348o = bArr;
        allocate.get(bArr);
    }
}
