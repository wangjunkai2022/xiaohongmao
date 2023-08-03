package com.mp4parser.iso14496.part30;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: XMLSubtitleSampleEntry.java */
/* loaded from: classes3.dex */
public class e extends com.coremedia.iso.boxes.sampleentry.a {

    /* renamed from: r  reason: collision with root package name */
    public static final String f47086r = "stpp";

    /* renamed from: o  reason: collision with root package name */
    private String f47087o;

    /* renamed from: p  reason: collision with root package name */
    private String f47088p;

    /* renamed from: q  reason: collision with root package name */
    private String f47089q;

    public e() {
        super(f47086r);
        this.f47087o = "";
        this.f47088p = "";
        this.f47089q = "";
    }

    public String J() {
        return this.f47089q;
    }

    public String K() {
        return this.f47087o;
    }

    public String L() {
        return this.f47088p;
    }

    public void M(String str) {
        this.f47089q = str;
    }

    public void W(String str) {
        this.f47087o = str;
    }

    public void X(String str) {
        this.f47088p = str;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(this.f47087o.length() + 8 + this.f47088p.length() + this.f47089q.length() + 3);
        allocate.position(6);
        i.f(allocate, this.f10318n);
        i.o(allocate, this.f47087o);
        i.o(allocate, this.f47088p);
        i.o(allocate, this.f47089q);
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        int i4 = 8;
        long E = E() + this.f47087o.length() + 8 + this.f47088p.length() + this.f47089q.length() + 3;
        return E + ((this.f36436l || 8 + E >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 16);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        eVar.read((ByteBuffer) allocate.rewind());
        allocate.position(6);
        this.f10318n = g.i(allocate);
        long C = eVar.C();
        ByteBuffer allocate2 = ByteBuffer.allocate(1024);
        eVar.read((ByteBuffer) allocate2.rewind());
        String g4 = g.g((ByteBuffer) allocate2.rewind());
        this.f47087o = g4;
        eVar.S(g4.length() + C + 1);
        eVar.read((ByteBuffer) allocate2.rewind());
        this.f47088p = g.g((ByteBuffer) allocate2.rewind());
        eVar.S(this.f47087o.length() + C + this.f47088p.length() + 2);
        eVar.read((ByteBuffer) allocate2.rewind());
        this.f47089q = g.g((ByteBuffer) allocate2.rewind());
        eVar.S(C + this.f47087o.length() + this.f47088p.length() + this.f47089q.length() + 3);
        G(eVar, j4 - ((((byteBuffer.remaining() + this.f47087o.length()) + this.f47088p.length()) + this.f47089q.length()) + 3), cVar);
    }
}
