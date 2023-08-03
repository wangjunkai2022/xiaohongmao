package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.boxes.j;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: VisualSampleEntry.java */
/* loaded from: classes.dex */
public final class h extends com.coremedia.iso.boxes.sampleentry.a implements j {
    public static final String A = "drmi";
    public static final String B = "hvc1";
    public static final String C = "hev1";
    public static final String D = "encv";
    static final /* synthetic */ boolean E = false;

    /* renamed from: w  reason: collision with root package name */
    public static final String f10367w = "mp4v";

    /* renamed from: x  reason: collision with root package name */
    public static final String f10368x = "s263";

    /* renamed from: y  reason: collision with root package name */
    public static final String f10369y = "avc1";

    /* renamed from: z  reason: collision with root package name */
    public static final String f10370z = "avc3";

    /* renamed from: o  reason: collision with root package name */
    private int f10371o;

    /* renamed from: p  reason: collision with root package name */
    private int f10372p;

    /* renamed from: q  reason: collision with root package name */
    private double f10373q;

    /* renamed from: r  reason: collision with root package name */
    private double f10374r;

    /* renamed from: s  reason: collision with root package name */
    private int f10375s;

    /* renamed from: t  reason: collision with root package name */
    private String f10376t;

    /* renamed from: u  reason: collision with root package name */
    private int f10377u;

    /* renamed from: v  reason: collision with root package name */
    private long[] f10378v;

    /* compiled from: VisualSampleEntry.java */
    /* loaded from: classes.dex */
    class a implements com.googlecode.mp4parser.e {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ long f10380b;

        /* renamed from: c  reason: collision with root package name */
        private final /* synthetic */ com.googlecode.mp4parser.e f10381c;

        a(long j4, com.googlecode.mp4parser.e eVar) {
            this.f10380b = j4;
            this.f10381c = eVar;
        }

        @Override // com.googlecode.mp4parser.e
        public long C() throws IOException {
            return this.f10381c.C();
        }

        @Override // com.googlecode.mp4parser.e
        public void S(long j4) throws IOException {
            this.f10381c.S(j4);
        }

        @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f10381c.close();
        }

        @Override // com.googlecode.mp4parser.e
        public ByteBuffer e0(long j4, long j10) throws IOException {
            return this.f10381c.e0(j4, j10);
        }

        @Override // com.googlecode.mp4parser.e
        public long m(long j4, long j10, WritableByteChannel writableByteChannel) throws IOException {
            return this.f10381c.m(j4, j10, writableByteChannel);
        }

        @Override // com.googlecode.mp4parser.e
        public int read(ByteBuffer byteBuffer) throws IOException {
            if (this.f10380b == this.f10381c.C()) {
                return -1;
            }
            if (byteBuffer.remaining() > this.f10380b - this.f10381c.C()) {
                ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(this.f10380b - this.f10381c.C()));
                this.f10381c.read(allocate);
                byteBuffer.put((ByteBuffer) allocate.rewind());
                return allocate.capacity();
            }
            return this.f10381c.read(byteBuffer);
        }

        @Override // com.googlecode.mp4parser.e
        public long size() throws IOException {
            return this.f10380b;
        }
    }

    public h() {
        super(f10369y);
        this.f10373q = 72.0d;
        this.f10374r = 72.0d;
        this.f10375s = 1;
        this.f10376t = "";
        this.f10377u = 24;
        this.f10378v = new long[3];
    }

    public String J() {
        return this.f10376t;
    }

    public int K() {
        return this.f10377u;
    }

    public int L() {
        return this.f10375s;
    }

    public int M() {
        return this.f10372p;
    }

    public double W() {
        return this.f10373q;
    }

    public double X() {
        return this.f10374r;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(78);
        allocate.position(6);
        i.f(allocate, this.f10318n);
        i.f(allocate, 0);
        i.f(allocate, 0);
        i.i(allocate, this.f10378v[0]);
        i.i(allocate, this.f10378v[1]);
        i.i(allocate, this.f10378v[2]);
        i.f(allocate, b0());
        i.f(allocate, M());
        i.b(allocate, W());
        i.b(allocate, X());
        i.i(allocate, 0L);
        i.f(allocate, L());
        i.m(allocate, l.c(J()));
        allocate.put(l.b(J()));
        int c10 = l.c(J());
        while (c10 < 31) {
            c10++;
            allocate.put((byte) 0);
        }
        i.f(allocate, K());
        i.f(allocate, 65535);
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    public int b0() {
        return this.f10371o;
    }

    public void d0(String str) {
        this.f10376t = str;
    }

    public void g0(int i4) {
        this.f10377u = i4;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long E2 = E() + 78;
        return E2 + ((this.f36436l || 8 + E2 >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    public void h0(int i4) {
        this.f10375s = i4;
    }

    public void l0(int i4) {
        this.f10372p = i4;
    }

    public void n0(double d4) {
        this.f10373q = d4;
    }

    public void o0(String str) {
        this.f36435k = str;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        long C2 = eVar.C() + j4;
        ByteBuffer allocate = ByteBuffer.allocate(78);
        eVar.read(allocate);
        allocate.position(6);
        this.f10318n = com.coremedia.iso.g.i(allocate);
        com.coremedia.iso.g.i(allocate);
        com.coremedia.iso.g.i(allocate);
        this.f10378v[0] = com.coremedia.iso.g.l(allocate);
        this.f10378v[1] = com.coremedia.iso.g.l(allocate);
        this.f10378v[2] = com.coremedia.iso.g.l(allocate);
        this.f10371o = com.coremedia.iso.g.i(allocate);
        this.f10372p = com.coremedia.iso.g.i(allocate);
        this.f10373q = com.coremedia.iso.g.d(allocate);
        this.f10374r = com.coremedia.iso.g.d(allocate);
        com.coremedia.iso.g.l(allocate);
        this.f10375s = com.coremedia.iso.g.i(allocate);
        int p9 = com.coremedia.iso.g.p(allocate);
        if (p9 > 31) {
            p9 = 31;
        }
        byte[] bArr = new byte[p9];
        allocate.get(bArr);
        this.f10376t = l.a(bArr);
        if (p9 < 31) {
            allocate.get(new byte[31 - p9]);
        }
        this.f10377u = com.coremedia.iso.g.i(allocate);
        com.coremedia.iso.g.i(allocate);
        G(new a(C2, eVar), j4 - 78, cVar);
    }

    public void p0(double d4) {
        this.f10374r = d4;
    }

    public void q0(int i4) {
        this.f10371o = i4;
    }

    public h(String str) {
        super(str);
        this.f10373q = 72.0d;
        this.f10374r = 72.0d;
        this.f10375s = 1;
        this.f10376t = "";
        this.f10377u = 24;
        this.f10378v = new long[3];
    }
}
