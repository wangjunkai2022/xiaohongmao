package com.coremedia.iso.boxes;

import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: MetaBox.java */
/* loaded from: classes.dex */
public class g0 extends com.googlecode.mp4parser.b {

    /* renamed from: p  reason: collision with root package name */
    public static final String f10125p = "meta";

    /* renamed from: n  reason: collision with root package name */
    private int f10126n;

    /* renamed from: o  reason: collision with root package name */
    private int f10127o;

    public g0() {
        super("meta");
    }

    protected final long J(ByteBuffer byteBuffer) {
        this.f10126n = com.coremedia.iso.g.p(byteBuffer);
        this.f10127o = com.coremedia.iso.g.k(byteBuffer);
        return 4L;
    }

    protected final void K(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f10126n);
        com.coremedia.iso.i.h(byteBuffer, this.f10127o);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(4);
        K(allocate);
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    public int getFlags() {
        return this.f10127o;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long E = E() + 4;
        return E + ((this.f36436l || E >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    public int getVersion() {
        return this.f10126n;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        eVar.read(allocate);
        J((ByteBuffer) allocate.rewind());
        G(eVar, j4 - 4, cVar);
    }

    public void setFlags(int i4) {
        this.f10127o = i4;
    }

    public void setVersion(int i4) {
        this.f10126n = i4;
    }
}
