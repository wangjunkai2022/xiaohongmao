package com.googlecode.mp4parser;

import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: AbstractContainerBox.java */
/* loaded from: classes2.dex */
public class b extends d implements com.coremedia.iso.boxes.d {

    /* renamed from: j  reason: collision with root package name */
    com.coremedia.iso.boxes.j f36434j;

    /* renamed from: k  reason: collision with root package name */
    protected String f36435k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f36436l;

    /* renamed from: m  reason: collision with root package name */
    private long f36437m;

    public b(String str) {
        this.f36435k = str;
    }

    @Override // com.googlecode.mp4parser.d
    public void G(e eVar, long j4, com.coremedia.iso.c cVar) throws IOException {
        this.f36945b = eVar;
        long C = eVar.C();
        this.f36947d = C;
        this.f36948e = C - ((this.f36436l || 8 + j4 >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
        eVar.S(eVar.C() + j4);
        this.f36949f = eVar.C();
        this.f36944a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuffer I() {
        ByteBuffer wrap;
        if (!this.f36436l && getSize() < KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            wrap = ByteBuffer.wrap(new byte[]{0, 0, 0, 0, this.f36435k.getBytes()[0], this.f36435k.getBytes()[1], this.f36435k.getBytes()[2], this.f36435k.getBytes()[3]});
            com.coremedia.iso.i.i(wrap, getSize());
        } else {
            byte[] bArr = new byte[16];
            bArr[3] = 1;
            bArr[4] = this.f36435k.getBytes()[0];
            bArr[5] = this.f36435k.getBytes()[1];
            bArr[6] = this.f36435k.getBytes()[2];
            bArr[7] = this.f36435k.getBytes()[3];
            wrap = ByteBuffer.wrap(bArr);
            wrap.position(8);
            com.coremedia.iso.i.l(wrap, getSize());
        }
        wrap.rewind();
        return wrap;
    }

    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        A(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.d
    public com.coremedia.iso.boxes.j getParent() {
        return this.f36434j;
    }

    public long getSize() {
        long E = E();
        return E + ((this.f36436l || 8 + E >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    @Override // com.coremedia.iso.boxes.d
    public String getType() {
        return this.f36435k;
    }

    @Override // com.coremedia.iso.boxes.d
    public long k() {
        return this.f36437m;
    }

    public void p(e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        this.f36437m = eVar.C() - byteBuffer.remaining();
        this.f36436l = byteBuffer.remaining() == 16;
        G(eVar, j4, cVar);
    }

    @Override // com.coremedia.iso.boxes.d
    public void r(com.coremedia.iso.boxes.j jVar) {
        this.f36434j = jVar;
    }
}
