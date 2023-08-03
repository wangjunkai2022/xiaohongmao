package com.googlecode.mp4parser;

import com.coremedia.iso.boxes.v;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;
import java.util.logging.Logger;

/* compiled from: FullContainerBox.java */
/* loaded from: classes2.dex */
public abstract class h extends b implements v {

    /* renamed from: p  reason: collision with root package name */
    private static Logger f36956p = Logger.getLogger(h.class.getName());

    /* renamed from: n  reason: collision with root package name */
    private int f36957n;

    /* renamed from: o  reason: collision with root package name */
    private int f36958o;

    public h(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.googlecode.mp4parser.b
    public ByteBuffer I() {
        ByteBuffer wrap;
        if (!this.f36436l && getSize() < KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            byte[] bArr = new byte[12];
            bArr[4] = this.f36435k.getBytes()[0];
            bArr[5] = this.f36435k.getBytes()[1];
            bArr[6] = this.f36435k.getBytes()[2];
            bArr[7] = this.f36435k.getBytes()[3];
            wrap = ByteBuffer.wrap(bArr);
            com.coremedia.iso.i.i(wrap, getSize());
            wrap.position(8);
            K(wrap);
        } else {
            byte[] bArr2 = new byte[20];
            bArr2[3] = 1;
            bArr2[4] = this.f36435k.getBytes()[0];
            bArr2[5] = this.f36435k.getBytes()[1];
            bArr2[6] = this.f36435k.getBytes()[2];
            bArr2[7] = this.f36435k.getBytes()[3];
            wrap = ByteBuffer.wrap(bArr2);
            wrap.position(8);
            com.coremedia.iso.i.l(wrap, getSize());
            K(wrap);
        }
        wrap.rewind();
        return wrap;
    }

    protected final long J(ByteBuffer byteBuffer) {
        this.f36957n = com.coremedia.iso.g.p(byteBuffer);
        this.f36958o = com.coremedia.iso.g.k(byteBuffer);
        return 4L;
    }

    protected final void K(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f36957n);
        com.coremedia.iso.i.h(byteBuffer, this.f36958o);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        super.a(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getFlags() {
        return this.f36958o;
    }

    @Override // com.coremedia.iso.boxes.v
    public int getVersion() {
        return this.f36957n;
    }

    @Override // com.googlecode.mp4parser.d, com.coremedia.iso.boxes.j
    public <T extends com.coremedia.iso.boxes.d> List<T> h(Class<T> cls) {
        return q(cls, false);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        eVar.read(allocate);
        J((ByteBuffer) allocate.rewind());
        super.p(eVar, byteBuffer, j4, cVar);
    }

    @Override // com.coremedia.iso.boxes.v
    public void setFlags(int i4) {
        this.f36958o = i4;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setVersion(int i4) {
        this.f36957n = i4;
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return getClass().getSimpleName() + "[childBoxes]";
    }
}
