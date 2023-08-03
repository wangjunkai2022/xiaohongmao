package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.boxes.j;
import com.coremedia.iso.i;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: AudioSampleEntry.java */
/* loaded from: classes.dex */
public final class c extends com.coremedia.iso.boxes.sampleentry.a {
    public static final String B = "samr";
    public static final String C = "sawb";
    public static final String D = "mp4a";
    public static final String E = "drms";
    public static final String F = "alac";
    public static final String G = "owma";
    public static final String H = "ac-3";
    public static final String I = "ec-3";
    public static final String J = "mlpa";
    public static final String K = "dtsl";
    public static final String L = "dtsh";
    public static final String M = "dtse";
    public static final String N = "enca";
    static final /* synthetic */ boolean O = false;
    private byte[] A;

    /* renamed from: o  reason: collision with root package name */
    private int f10332o;

    /* renamed from: p  reason: collision with root package name */
    private int f10333p;

    /* renamed from: q  reason: collision with root package name */
    private long f10334q;

    /* renamed from: r  reason: collision with root package name */
    private int f10335r;

    /* renamed from: s  reason: collision with root package name */
    private int f10336s;

    /* renamed from: t  reason: collision with root package name */
    private int f10337t;

    /* renamed from: u  reason: collision with root package name */
    private long f10338u;

    /* renamed from: v  reason: collision with root package name */
    private long f10339v;

    /* renamed from: w  reason: collision with root package name */
    private long f10340w;

    /* renamed from: x  reason: collision with root package name */
    private long f10341x;

    /* renamed from: y  reason: collision with root package name */
    private int f10342y;

    /* renamed from: z  reason: collision with root package name */
    private long f10343z;

    /* compiled from: AudioSampleEntry.java */
    /* loaded from: classes.dex */
    class a implements com.coremedia.iso.boxes.d {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ long f10345b;

        /* renamed from: c  reason: collision with root package name */
        private final /* synthetic */ ByteBuffer f10346c;

        a(long j4, ByteBuffer byteBuffer) {
            this.f10345b = j4;
            this.f10346c = byteBuffer;
        }

        @Override // com.coremedia.iso.boxes.d
        public void a(WritableByteChannel writableByteChannel) throws IOException {
            this.f10346c.rewind();
            writableByteChannel.write(this.f10346c);
        }

        @Override // com.coremedia.iso.boxes.d
        public j getParent() {
            return c.this;
        }

        @Override // com.coremedia.iso.boxes.d
        public long getSize() {
            return this.f10345b;
        }

        @Override // com.coremedia.iso.boxes.d
        public String getType() {
            return InternalFrame.ID;
        }

        @Override // com.coremedia.iso.boxes.d
        public long k() {
            return 0L;
        }

        @Override // com.coremedia.iso.boxes.d
        public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
            throw new RuntimeException("NotImplemented");
        }

        @Override // com.coremedia.iso.boxes.d
        public void r(j jVar) {
            if (!c.O && jVar != c.this) {
                throw new AssertionError("you cannot diswown this special box");
            }
        }
    }

    public c(String str) {
        super(str);
    }

    public void A0(int i4) {
        this.f10335r = i4;
    }

    public void B0(byte[] bArr) {
        this.A = bArr;
    }

    public void C0(String str) {
        this.f36435k = str;
    }

    public long J() {
        return this.f10340w;
    }

    public long K() {
        return this.f10339v;
    }

    public long L() {
        return this.f10341x;
    }

    public int M() {
        return this.f10332o;
    }

    public int W() {
        return this.f10336s;
    }

    public int X() {
        return this.f10337t;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        int i4 = this.f10335r;
        ByteBuffer allocate = ByteBuffer.allocate((i4 == 1 ? 16 : 0) + 28 + (i4 == 2 ? 36 : 0));
        allocate.position(6);
        i.f(allocate, this.f10318n);
        i.f(allocate, this.f10335r);
        i.f(allocate, this.f10342y);
        i.i(allocate, this.f10343z);
        i.f(allocate, this.f10332o);
        i.f(allocate, this.f10333p);
        i.f(allocate, this.f10336s);
        i.f(allocate, this.f10337t);
        if (this.f36435k.equals(J)) {
            i.i(allocate, g0());
        } else {
            i.i(allocate, g0() << 16);
        }
        if (this.f10335r == 1) {
            i.i(allocate, this.f10338u);
            i.i(allocate, this.f10339v);
            i.i(allocate, this.f10340w);
            i.i(allocate, this.f10341x);
        }
        if (this.f10335r == 2) {
            i.i(allocate, this.f10338u);
            i.i(allocate, this.f10339v);
            i.i(allocate, this.f10340w);
            i.i(allocate, this.f10341x);
            allocate.put(this.A);
        }
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    public int b0() {
        return this.f10342y;
    }

    public long d0() {
        return this.f10343z;
    }

    public long g0() {
        return this.f10334q;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        int i4 = this.f10335r;
        int i10 = 16;
        long E2 = (i4 == 1 ? 16 : 0) + 28 + (i4 == 2 ? 36 : 0) + E();
        if (!this.f36436l && 8 + E2 < KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            i10 = 8;
        }
        return E2 + i10;
    }

    public int h0() {
        return this.f10333p;
    }

    public long l0() {
        return this.f10338u;
    }

    public int n0() {
        return this.f10335r;
    }

    public byte[] o0() {
        return this.A;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(28);
        eVar.read(allocate);
        allocate.position(6);
        this.f10318n = com.coremedia.iso.g.i(allocate);
        this.f10335r = com.coremedia.iso.g.i(allocate);
        this.f10342y = com.coremedia.iso.g.i(allocate);
        this.f10343z = com.coremedia.iso.g.l(allocate);
        this.f10332o = com.coremedia.iso.g.i(allocate);
        this.f10333p = com.coremedia.iso.g.i(allocate);
        this.f10336s = com.coremedia.iso.g.i(allocate);
        this.f10337t = com.coremedia.iso.g.i(allocate);
        this.f10334q = com.coremedia.iso.g.l(allocate);
        if (!this.f36435k.equals(J)) {
            this.f10334q >>>= 16;
        }
        if (this.f10335r == 1) {
            ByteBuffer allocate2 = ByteBuffer.allocate(16);
            eVar.read(allocate2);
            allocate2.rewind();
            this.f10338u = com.coremedia.iso.g.l(allocate2);
            this.f10339v = com.coremedia.iso.g.l(allocate2);
            this.f10340w = com.coremedia.iso.g.l(allocate2);
            this.f10341x = com.coremedia.iso.g.l(allocate2);
        }
        if (this.f10335r == 2) {
            ByteBuffer allocate3 = ByteBuffer.allocate(36);
            eVar.read(allocate3);
            allocate3.rewind();
            this.f10338u = com.coremedia.iso.g.l(allocate3);
            this.f10339v = com.coremedia.iso.g.l(allocate3);
            this.f10340w = com.coremedia.iso.g.l(allocate3);
            this.f10341x = com.coremedia.iso.g.l(allocate3);
            byte[] bArr = new byte[20];
            this.A = bArr;
            allocate3.get(bArr);
        }
        if (G.equals(this.f36435k)) {
            System.err.println(G);
            long j10 = j4 - 28;
            int i4 = this.f10335r;
            long j11 = (j10 - (i4 != 1 ? 0 : 16)) - (i4 != 2 ? 0 : 36);
            ByteBuffer allocate4 = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j11));
            eVar.read(allocate4);
            D(new a(j11, allocate4));
            return;
        }
        long j12 = j4 - 28;
        int i10 = this.f10335r;
        G(eVar, (j12 - (i10 != 1 ? 0 : 16)) - (i10 != 2 ? 0 : 36), cVar);
    }

    public void p0(long j4) {
        this.f10340w = j4;
    }

    public void q0(long j4) {
        this.f10339v = j4;
    }

    public void r0(long j4) {
        this.f10341x = j4;
    }

    public void s0(int i4) {
        this.f10332o = i4;
    }

    public void t0(int i4) {
        this.f10336s = i4;
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return "AudioSampleEntry{bytesPerSample=" + this.f10341x + ", bytesPerFrame=" + this.f10340w + ", bytesPerPacket=" + this.f10339v + ", samplesPerPacket=" + this.f10338u + ", packetSize=" + this.f10337t + ", compressionId=" + this.f10336s + ", soundVersion=" + this.f10335r + ", sampleRate=" + this.f10334q + ", sampleSize=" + this.f10333p + ", channelCount=" + this.f10332o + ", boxes=" + y() + '}';
    }

    public void u0(int i4) {
        this.f10337t = i4;
    }

    public void v0(int i4) {
        this.f10342y = i4;
    }

    public void w0(long j4) {
        this.f10343z = j4;
    }

    public void x0(long j4) {
        this.f10334q = j4;
    }

    public void y0(int i4) {
        this.f10333p = i4;
    }

    public void z0(long j4) {
        this.f10338u = j4;
    }
}
