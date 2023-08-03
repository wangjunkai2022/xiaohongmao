package com.googlecode.mp4parser.boxes.apple;

import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;

/* compiled from: QuicktimeTextSampleEntry.java */
/* loaded from: classes2.dex */
public class t0 extends com.coremedia.iso.boxes.sampleentry.a {
    public static final String E = "text";
    int A;
    int B;
    String C;
    int D;

    /* renamed from: o  reason: collision with root package name */
    int f36517o;

    /* renamed from: p  reason: collision with root package name */
    int f36518p;

    /* renamed from: q  reason: collision with root package name */
    int f36519q;

    /* renamed from: r  reason: collision with root package name */
    int f36520r;

    /* renamed from: s  reason: collision with root package name */
    int f36521s;

    /* renamed from: t  reason: collision with root package name */
    long f36522t;

    /* renamed from: u  reason: collision with root package name */
    long f36523u;

    /* renamed from: v  reason: collision with root package name */
    short f36524v;

    /* renamed from: w  reason: collision with root package name */
    short f36525w;

    /* renamed from: x  reason: collision with root package name */
    byte f36526x;

    /* renamed from: y  reason: collision with root package name */
    short f36527y;

    /* renamed from: z  reason: collision with root package name */
    int f36528z;

    public t0() {
        super("text");
        this.f36528z = 65535;
        this.A = 65535;
        this.B = 65535;
        this.C = "";
    }

    public void A0(int i4) {
        this.A = i4;
    }

    public void B0(int i4) {
        this.f36528z = i4;
    }

    public void C0(long j4) {
        this.f36523u = j4;
    }

    @Override // com.googlecode.mp4parser.d
    public void D(com.coremedia.iso.boxes.d dVar) {
        throw new RuntimeException("QuicktimeTextSampleEntries may not have child boxes");
    }

    public void D0(byte b10) {
        this.f36526x = b10;
    }

    public void E0(short s9) {
        this.f36527y = s9;
    }

    public void F0(int i4) {
        this.f36518p = i4;
    }

    public int J() {
        return this.f36521s;
    }

    public int K() {
        return this.f36520r;
    }

    public int L() {
        return this.f36519q;
    }

    public long M() {
        return this.f36522t;
    }

    public int W() {
        return this.f36517o;
    }

    public short X() {
        return this.f36525w;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        String str = this.C;
        ByteBuffer allocate = ByteBuffer.allocate((str != null ? str.length() : 0) + 52);
        allocate.position(6);
        com.coremedia.iso.i.f(allocate, this.D);
        allocate.putInt(this.f36517o);
        allocate.putInt(this.f36518p);
        com.coremedia.iso.i.f(allocate, this.f36519q);
        com.coremedia.iso.i.f(allocate, this.f36520r);
        com.coremedia.iso.i.f(allocate, this.f36521s);
        com.coremedia.iso.i.l(allocate, this.f36522t);
        com.coremedia.iso.i.l(allocate, this.f36523u);
        allocate.putShort(this.f36524v);
        allocate.putShort(this.f36525w);
        allocate.put(this.f36526x);
        allocate.putShort(this.f36527y);
        com.coremedia.iso.i.f(allocate, this.f36528z);
        com.coremedia.iso.i.f(allocate, this.A);
        com.coremedia.iso.i.f(allocate, this.B);
        String str2 = this.C;
        if (str2 != null) {
            com.coremedia.iso.i.m(allocate, str2.length());
            allocate.put(this.C.getBytes());
        }
        writableByteChannel.write((ByteBuffer) allocate.rewind());
    }

    @Override // com.googlecode.mp4parser.d, com.coremedia.iso.boxes.j
    public void b(List<com.coremedia.iso.boxes.d> list) {
        throw new RuntimeException("QuicktimeTextSampleEntries may not have child boxes");
    }

    public String b0() {
        return this.C;
    }

    public short d0() {
        return this.f36524v;
    }

    public int g0() {
        return this.B;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long E2 = E() + 52;
        String str = this.C;
        long length = E2 + (str != null ? str.length() : 0);
        return length + ((this.f36436l || 8 + length >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    public int h0() {
        return this.A;
    }

    public int l0() {
        return this.f36528z;
    }

    public long n0() {
        return this.f36523u;
    }

    public byte o0() {
        return this.f36526x;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j4));
        eVar.read(allocate);
        allocate.position(6);
        this.D = com.coremedia.iso.g.i(allocate);
        this.f36517o = allocate.getInt();
        this.f36518p = allocate.getInt();
        this.f36519q = com.coremedia.iso.g.i(allocate);
        this.f36520r = com.coremedia.iso.g.i(allocate);
        this.f36521s = com.coremedia.iso.g.i(allocate);
        this.f36522t = com.coremedia.iso.g.o(allocate);
        this.f36523u = com.coremedia.iso.g.o(allocate);
        this.f36524v = allocate.getShort();
        this.f36525w = allocate.getShort();
        this.f36526x = allocate.get();
        this.f36527y = allocate.getShort();
        this.f36528z = com.coremedia.iso.g.i(allocate);
        this.A = com.coremedia.iso.g.i(allocate);
        this.B = com.coremedia.iso.g.i(allocate);
        if (allocate.remaining() > 0) {
            byte[] bArr = new byte[com.coremedia.iso.g.p(allocate)];
            allocate.get(bArr);
            this.C = new String(bArr);
            return;
        }
        this.C = null;
    }

    public short p0() {
        return this.f36527y;
    }

    public int q0() {
        return this.f36518p;
    }

    public void r0(int i4) {
        this.f36521s = i4;
    }

    public void s0(int i4) {
        this.f36520r = i4;
    }

    public void t0(int i4) {
        this.f36519q = i4;
    }

    public void u0(long j4) {
        this.f36522t = j4;
    }

    public void v0(int i4) {
        this.f36517o = i4;
    }

    public void w0(short s9) {
        this.f36525w = s9;
    }

    public void x0(String str) {
        this.C = str;
    }

    public void y0(short s9) {
        this.f36524v = s9;
    }

    public void z0(int i4) {
        this.B = i4;
    }
}
