package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.io.EOFException;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.UShort;

/* compiled from: DTSTrackImpl.java */
/* loaded from: classes2.dex */
public class m extends com.googlecode.mp4parser.authoring.a {
    private static final int P = 67108864;
    int A;
    int B;
    int C;
    int D;
    int E;
    int F;
    int G;
    int H;
    int I;
    int J;
    int K;
    int L;
    int M;
    String N;
    private String O;

    /* renamed from: d  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f36317d;

    /* renamed from: e  reason: collision with root package name */
    s0 f36318e;

    /* renamed from: f  reason: collision with root package name */
    int f36319f;

    /* renamed from: g  reason: collision with root package name */
    int f36320g;

    /* renamed from: h  reason: collision with root package name */
    int f36321h;

    /* renamed from: i  reason: collision with root package name */
    int f36322i;

    /* renamed from: j  reason: collision with root package name */
    int f36323j;

    /* renamed from: k  reason: collision with root package name */
    int f36324k;

    /* renamed from: l  reason: collision with root package name */
    private long[] f36325l;

    /* renamed from: m  reason: collision with root package name */
    private int f36326m;

    /* renamed from: n  reason: collision with root package name */
    com.googlecode.mp4parser.boxes.d f36327n;

    /* renamed from: o  reason: collision with root package name */
    private com.googlecode.mp4parser.e f36328o;

    /* renamed from: p  reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f36329p;

    /* renamed from: q  reason: collision with root package name */
    boolean f36330q;

    /* renamed from: r  reason: collision with root package name */
    boolean f36331r;

    /* renamed from: s  reason: collision with root package name */
    boolean f36332s;

    /* renamed from: t  reason: collision with root package name */
    int f36333t;

    /* renamed from: u  reason: collision with root package name */
    int f36334u;

    /* renamed from: v  reason: collision with root package name */
    int f36335v;

    /* renamed from: w  reason: collision with root package name */
    int f36336w;

    /* renamed from: x  reason: collision with root package name */
    int f36337x;

    /* renamed from: y  reason: collision with root package name */
    int f36338y;

    /* renamed from: z  reason: collision with root package name */
    int f36339z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DTSTrackImpl.java */
    /* loaded from: classes2.dex */
    public class a implements com.googlecode.mp4parser.authoring.f {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ ByteBuffer f36341b;

        a(ByteBuffer byteBuffer) {
            this.f36341b = byteBuffer;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            return this.f36341b;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write((ByteBuffer) this.f36341b.rewind());
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f36341b.rewind().remaining();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DTSTrackImpl.java */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f36342a;

        /* renamed from: b  reason: collision with root package name */
        long f36343b;

        /* renamed from: c  reason: collision with root package name */
        int f36344c = 0;

        /* renamed from: d  reason: collision with root package name */
        com.googlecode.mp4parser.e f36345d;

        /* renamed from: e  reason: collision with root package name */
        long f36346e;

        /* renamed from: f  reason: collision with root package name */
        ByteBuffer f36347f;

        /* renamed from: g  reason: collision with root package name */
        long f36348g;

        b(com.googlecode.mp4parser.e eVar, long j4, long j10, int i4) throws IOException {
            this.f36345d = eVar;
            this.f36343b = j4;
            this.f36346e = j10 + j4;
            this.f36342a = i4;
            d();
        }

        private void a() {
            this.f36344c++;
        }

        private void b() {
            long j4 = this.f36343b;
            int i4 = this.f36344c;
            this.f36348g = j4 + i4;
            this.f36344c = i4 + 4;
        }

        private void c() {
            this.f36344c += 4;
        }

        private void d() throws IOException {
            System.err.println("Fill Buffer");
            com.googlecode.mp4parser.e eVar = this.f36345d;
            long j4 = this.f36343b;
            this.f36347f = eVar.e0(j4, Math.min(this.f36346e - j4, 67108864L));
        }

        private ByteBuffer f() {
            long j4 = this.f36348g;
            long j10 = this.f36343b;
            if (j4 >= j10) {
                this.f36347f.position((int) (j4 - j10));
                ByteBuffer slice = this.f36347f.slice();
                slice.limit((int) (this.f36344c - (this.f36348g - this.f36343b)));
                return slice;
            }
            throw new RuntimeException("damn! NAL exceeds buffer");
        }

        private boolean g(byte b10, byte b11, byte b12, byte b13) throws IOException {
            int limit = this.f36347f.limit();
            int i4 = this.f36344c;
            if (limit - i4 >= 4) {
                return this.f36347f.get(i4) == b10 && this.f36347f.get(this.f36344c + 1) == b11 && this.f36347f.get(this.f36344c + 2) == b12 && this.f36347f.get(this.f36344c + 3) == b13;
            } else if (this.f36343b + i4 + 4 < this.f36345d.size()) {
                return false;
            } else {
                throw new EOFException();
            }
        }

        private boolean h() throws IOException {
            return g((byte) 100, (byte) 88, (byte) 32, (byte) 37);
        }

        private boolean i() throws IOException {
            return l((byte) 100, (byte) 88, (byte) 32, (byte) 37);
        }

        private boolean j() throws IOException {
            return g(Byte.MAX_VALUE, (byte) -2, Byte.MIN_VALUE, (byte) 1);
        }

        private boolean k() throws IOException {
            return l(Byte.MAX_VALUE, (byte) -2, Byte.MIN_VALUE, (byte) 1);
        }

        private boolean l(byte b10, byte b11, byte b12, byte b13) throws IOException {
            int limit = this.f36347f.limit();
            int i4 = this.f36344c;
            if (limit - i4 >= 4) {
                if ((this.f36343b + i4) % 1048576 == 0) {
                    PrintStream printStream = System.err;
                    StringBuilder sb = new StringBuilder();
                    sb.append(((this.f36343b + this.f36344c) / 1024) / 1024);
                    printStream.println(sb.toString());
                }
                return this.f36347f.get(this.f36344c) == b10 && this.f36347f.get(this.f36344c + 1) == b11 && this.f36347f.get(this.f36344c + 2) == b12 && this.f36347f.get(this.f36344c + 3) == b13;
            }
            long j4 = this.f36343b;
            long j10 = this.f36346e;
            if (i4 + j4 + 4 > j10) {
                return j4 + ((long) i4) == j10;
            }
            this.f36343b = this.f36348g;
            this.f36344c = 0;
            d();
            return j();
        }

        public ByteBuffer e() throws IOException {
            while (true) {
                try {
                    if (this.f36342a == 1) {
                        if (j()) {
                            break;
                        }
                        a();
                    } else if (h()) {
                        break;
                    } else {
                        a();
                    }
                } catch (EOFException unused) {
                    return null;
                }
                return null;
            }
            b();
            while (true) {
                if (this.f36342a == 1) {
                    if (k()) {
                        break;
                    }
                    c();
                } else if (i()) {
                    break;
                } else {
                    c();
                }
                return null;
            }
            return f();
        }
    }

    public m(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        super(eVar.toString());
        this.f36317d = new com.googlecode.mp4parser.authoring.i();
        this.f36321h = 0;
        this.f36326m = 0;
        this.f36327n = new com.googlecode.mp4parser.boxes.d();
        this.f36330q = false;
        this.f36331r = false;
        this.f36332s = false;
        this.f36333t = 0;
        this.f36334u = 0;
        this.f36335v = 0;
        this.f36336w = 0;
        this.f36337x = 0;
        this.f36338y = 0;
        this.f36339z = 0;
        this.A = 0;
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = "none";
        this.O = str;
        this.f36328o = eVar;
        h();
    }

    private List<com.googlecode.mp4parser.authoring.f> a(com.googlecode.mp4parser.e eVar, int i4, long j4, int i10) throws IOException {
        b bVar = new b(eVar, i4, j4, i10);
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteBuffer e4 = bVar.e();
            if (e4 == null) {
                System.err.println("all samples found");
                return arrayList;
            }
            arrayList.add(new a(e4));
        }
    }

    private int b(int i4) throws IOException {
        switch (i4) {
            case 0:
                return 32;
            case 1:
                return 56;
            case 2:
                return 64;
            case 3:
                return 96;
            case 4:
                return 112;
            case 5:
                return 128;
            case 6:
                return 192;
            case 7:
                return 224;
            case 8:
                return 256;
            case 9:
                return 320;
            case 10:
                return com.facebook.imagepipeline.memory.c.f12563b;
            case 11:
                return 448;
            case 12:
                return 512;
            case 13:
                return 576;
            case 14:
                return 640;
            case 15:
                return 768;
            case 16:
                return 960;
            case 17:
                return 1024;
            case 18:
                return 1152;
            case 19:
                return com.im.freechat.utils.h.f43782b;
            case 20:
                return 1344;
            case 21:
                return 1408;
            case 22:
                return 1411;
            case 23:
                return 1472;
            case 24:
                return 1536;
            case 25:
                return -1;
            default:
                throw new IOException("Unknown bitrate value");
        }
    }

    private int d(int i4) throws IOException {
        switch (i4) {
            case 1:
                return 8000;
            case 2:
                return com.google.android.exoplayer2.audio.a.f21097g;
            case 3:
                return 32000;
            case 4:
            case 5:
            case 9:
            case 10:
            default:
                throw new IOException("Unknown Sample Rate");
            case 6:
                return 11025;
            case 7:
                return 22050;
            case 8:
                return StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE;
            case 11:
                return 12000;
            case 12:
                return 24000;
            case 13:
                return 48000;
        }
    }

    private void h() throws IOException {
        if (r()) {
            this.f36318e = new s0();
            com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(this.N);
            cVar.s0(this.f36324k);
            cVar.x0(this.f36319f);
            cVar.d(1);
            cVar.y0(16);
            cVar.D(this.f36327n);
            this.f36318e.D(cVar);
            this.f36317d.l(new Date());
            this.f36317d.r(new Date());
            this.f36317d.o(this.O);
            this.f36317d.s(this.f36319f);
            return;
        }
        throw new IOException();
    }

    private boolean i(int i4, ByteBuffer byteBuffer) {
        int i10;
        byteBuffer.get();
        short s9 = byteBuffer.getShort();
        this.C = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
        this.E = byteBuffer.getInt();
        this.F = byteBuffer.getShort();
        this.G = (byteBuffer.get() << 32) | (byteBuffer.getInt() & 65535);
        this.H = byteBuffer.getShort();
        this.I = byteBuffer.getShort();
        if ((s9 & 3) == 3) {
            this.J = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
            this.K = byteBuffer.getShort();
            this.L = byteBuffer.getShort();
            i10 = 28;
        } else {
            i10 = 21;
        }
        if ((s9 & 4) > 0) {
            this.M = byteBuffer.get();
            i10++;
        }
        if ((s9 & 8) > 0) {
            this.D = 1;
        }
        while (i10 < i4) {
            byteBuffer.get();
            i10++;
        }
        return true;
    }

    private boolean k(int i4, ByteBuffer byteBuffer) {
        this.f36334u = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
        this.f36335v = byteBuffer.getShort();
        this.f36336w = byteBuffer.getShort();
        this.f36337x = byteBuffer.getInt();
        for (int i10 = 11; i10 < i4; i10++) {
            byteBuffer.get();
        }
        return true;
    }

    private void p(int i4, ByteBuffer byteBuffer) {
        byteBuffer.getInt();
        byteBuffer.get();
        byteBuffer.getInt();
        byteBuffer.get();
        short s9 = byteBuffer.getShort();
        byteBuffer.get();
        byte b10 = byteBuffer.get();
        this.f36333t = b10;
        if ((s9 & 1) == 1) {
            this.f36330q = true;
        }
        if ((s9 & 8) == 8) {
            this.f36331r = true;
        }
        if ((s9 & 16) == 16) {
            this.f36332s = true;
            this.f36333t = b10 + 1;
        } else {
            this.f36333t = 0;
        }
        for (int i10 = 14; i10 < i4; i10++) {
            byteBuffer.get();
        }
    }

    private boolean q(int i4, ByteBuffer byteBuffer) {
        int i10;
        this.f36338y = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
        if (this.f36330q) {
            this.f36339z = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
            this.A = byteBuffer.getShort();
            i10 = 8;
        } else {
            this.B = byteBuffer.getInt();
            i10 = 7;
        }
        while (i10 < i4) {
            byteBuffer.get();
            i10++;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0130, code lost:
        if (r2 != false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0133, code lost:
        if (r1 != true) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0135, code lost:
        if (r10 != false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0137, code lost:
        if (r11 != false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0139, code lost:
        if (r14 != false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x013b, code lost:
        r1 = 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x013f, code lost:
        if (r15 != false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0142, code lost:
        if (r2 != true) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0144, code lost:
        if (r1 != true) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0146, code lost:
        if (r10 != false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0148, code lost:
        if (r11 != false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x014a, code lost:
        if (r14 != false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x014c, code lost:
        r1 = 13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0150, code lost:
        if (r15 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0152, code lost:
        if (r2 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0154, code lost:
        if (r1 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0156, code lost:
        if (r10 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0159, code lost:
        if (r11 != true) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x015b, code lost:
        if (r14 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x015d, code lost:
        r1 = 14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0161, code lost:
        r1 = r18;
        r10 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0165, code lost:
        if (r7 != 0) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0167, code lost:
        if (r15 != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0169, code lost:
        if (r2 != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x016b, code lost:
        if (r1 != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x016e, code lost:
        if (r10 != true) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
        r3 = r0.getLong();
        r26.f36326m = r0.position();
        r1 = -1;
        r2 = false;
        r5 = -1;
        r9 = -1;
        r10 = 65535;
        r11 = false;
        r12 = false;
        r13 = 0;
        r14 = false;
        r15 = false;
        r16 = false;
        r17 = 0;
        r18 = false;
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0170, code lost:
        if (r11 != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0172, code lost:
        if (r14 != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0174, code lost:
        r1 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0178, code lost:
        if (r7 != 6) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x017a, code lost:
        if (r15 != false) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x017c, code lost:
        if (r2 != false) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x017e, code lost:
        if (r1 != false) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0181, code lost:
        if (r10 != true) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0183, code lost:
        if (r11 != false) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0185, code lost:
        if (r14 != false) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0187, code lost:
        r1 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x018a, code lost:
        if (r7 != 0) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x018c, code lost:
        if (r15 != false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x018e, code lost:
        if (r2 != false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0191, code lost:
        if (r1 != true) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0193, code lost:
        if (r10 != false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0195, code lost:
        if (r11 != false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004e, code lost:
        if (r2 == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0197, code lost:
        if (r14 != false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0199, code lost:
        r1 = 11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x019d, code lost:
        if (r7 != 6) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x019f, code lost:
        if (r15 != false) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x01a1, code lost:
        if (r2 != false) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x01a4, code lost:
        if (r1 != true) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x01a6, code lost:
        if (r10 != false) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x01a8, code lost:
        if (r11 != false) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
        r0 = r26.f36323j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x01aa, code lost:
        if (r14 != false) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x01ac, code lost:
        r1 = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x01af, code lost:
        if (r7 != 0) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x01b1, code lost:
        if (r15 != false) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x01b3, code lost:
        if (r2 != false) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x01b5, code lost:
        if (r1 != false) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x01b7, code lost:
        if (r10 != false) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x01ba, code lost:
        if (r11 != true) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x01bc, code lost:
        if (r14 != false) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
        if (r0 == 512) goto L335;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x01be, code lost:
        r1 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x01c1, code lost:
        if (r7 != 2) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x01c3, code lost:
        if (r15 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x01c5, code lost:
        if (r2 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x01c7, code lost:
        if (r1 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x01c9, code lost:
        if (r10 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x01cc, code lost:
        if (r11 != true) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x01ce, code lost:
        if (r14 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x01d0, code lost:
        r1 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x01d2, code lost:
        r26.f36327n.P(r26.C);
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x01dc, code lost:
        if (r26.f36330q == false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x01de, code lost:
        r26.f36327n.S((r26.f36335v + r26.f36339z) * 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x01ec, code lost:
        r26.f36327n.S((r26.f36335v + r26.f36338y) * 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x01f9, code lost:
        r26.f36327n.K((r26.f36335v + r26.f36338y) * 1000);
        r26.f36327n.U(r26.f36322i);
        r26.f36327n.Q(r0);
        r26.f36327n.Z(r1);
        r0 = r26.f36336w;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x021b, code lost:
        if ((r0 & 8) > 0) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x021e, code lost:
        if ((r0 & 4096) <= 0) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0221, code lost:
        r26.f36327n.M(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        if (r0 == 1024) goto L334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0228, code lost:
        r26.f36327n.M(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x022e, code lost:
        r26.f36327n.N(r9);
        r26.f36327n.O(r26.f36337x);
        r26.f36327n.Y(0);
        r26.f36327n.V(4);
        r26.f36327n.L(r26.H);
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x024f, code lost:
        if (r26.f36334u <= 0) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0253, code lost:
        if (r26.f36338y <= 0) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0255, code lost:
        r26.f36327n.T(1);
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x025d, code lost:
        r1 = 0;
        r26.f36327n.T(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0263, code lost:
        r26.f36327n.R(r26.D);
        r26.f36327n.X(r1);
        r26.f36324k = r1;
        r0 = 16;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0274, code lost:
        if (r7 < r0) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0276, code lost:
        r0 = a(r26.f36328o, r26.f36326m, r3, r5);
        r26.f36329p = r0;
        r0 = new long[r0.size()];
        r26.f36325l = r0;
        java.util.Arrays.fill(r0, r26.f36323j);
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0291, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0297, code lost:
        if (((r26.H >> r7) & 1) != 1) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x029b, code lost:
        if (r7 == 0) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x029d, code lost:
        if (r7 == 12) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x02a1, code lost:
        if (r7 == 14) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x02a4, code lost:
        if (r7 == 3) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
        if (r0 == 2048) goto L333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x02a7, code lost:
        if (r7 == 4) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x02aa, code lost:
        if (r7 == 7) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x02ae, code lost:
        if (r7 == 8) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x02b0, code lost:
        r26.f36324k += 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x02b6, code lost:
        r26.f36324k++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0060, code lost:
        if (r0 == 4096) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x02c0, code lost:
        r7 = r7 + 1;
        r0 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x02c5, code lost:
        r22 = r16;
        r7 = r17;
        r23 = r18;
        r24 = r19;
        r19 = r0.position();
        r8 = r0.getInt();
        r25 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x02dd, code lost:
        if (r8 != 2147385345) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x02df, code lost:
        if (r5 != 1) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x02e1, code lost:
        r17 = r7;
        r16 = r22;
        r18 = r23;
        r19 = r24;
        r1 = -1;
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x02eb, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x02ee, code lost:
        r2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(r0);
        r5 = r2.c(1);
        r8 = r2.c(5);
        r7 = r2.c(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0300, code lost:
        if (r5 != 1) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0304, code lost:
        if (r8 != 31) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
        r0 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0306, code lost:
        if (r7 == 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x030a, code lost:
        r26.f36323j = (r2.c(7) + 1) * 32;
        r1 = r2.c(14);
        r26.f36321h += r1 + 1;
        r9 = r2.c(6);
        r26.f36319f = d(r2.c(4));
        r26.f36320g = b(r2.c(5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0341, code lost:
        if (r2.c(1) == 0) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0343, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0345, code lost:
        r2.c(1);
        r2.c(1);
        r2.c(1);
        r2.c(1);
        r17 = r2.c(3);
        r13 = r2.c(1);
        r2.c(1);
        r2.c(2);
        r2.c(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0364, code lost:
        if (r7 != 1) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0366, code lost:
        r2.c(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x036b, code lost:
        r2.c(1);
        r5 = r2.c(4);
        r2.c(2);
        r8 = r2.c(3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
        r0 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x037b, code lost:
        if (r8 == 0) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x037e, code lost:
        if (r8 == 1) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0381, code lost:
        if (r8 == 2) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0384, code lost:
        if (r8 == 3) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0387, code lost:
        if (r8 == 5) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
        r0 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x038a, code lost:
        if (r8 == 6) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x038c, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x038e, code lost:
        r26.f36322i = 24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0393, code lost:
        r26.f36322i = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0398, code lost:
        r26.f36322i = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x039c, code lost:
        r2.c(1);
        r2.c(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x03a4, code lost:
        if (r5 == 6) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x03a7, code lost:
        if (r5 == 7) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x03a9, code lost:
        r2.c(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x03ae, code lost:
        r2.c(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x03b3, code lost:
        r2.c(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x03b7, code lost:
        r0.position((r19 + r1) + 1);
        r16 = r22;
        r18 = r23;
        r19 = r24;
        r2 = r25;
        r1 = -1;
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x03ca, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x03d3, code lost:
        if (r8 != 1683496997) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x03d6, code lost:
        if (r5 != (-1)) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006a, code lost:
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x03d8, code lost:
        r26.f36323j = r26.F;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x03dd, code lost:
        r10 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(r0);
        r10.c(8);
        r10.c(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x03f0, code lost:
        if (r10.c(1) != 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x03f2, code lost:
        r2 = 8;
        r8 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x03f7, code lost:
        r2 = 12;
        r8 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x03fb, code lost:
        r8 = r10.c(r8) + 1;
        r0.position(r19 + (r10.c(r2) + 1));
        r2 = r0.getInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0411, code lost:
        if (r2 != 1515870810) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0413, code lost:
        if (r12 != true) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0415, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x0417, code lost:
        r2 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006b, code lost:
        if (r0 != r1) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0419, code lost:
        r20 = r3;
        r10 = r22;
        r4 = r24;
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0425, code lost:
        if (r2 != 1191201283) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0429, code lost:
        if (r22 != true) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x042b, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x042d, code lost:
        r2 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x042f, code lost:
        r20 = r3;
        r4 = r24;
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0436, code lost:
        r20 = r3;
        r10 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x043d, code lost:
        if (r2 != 496366178) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x0441, code lost:
        if (r23 != true) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0443, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0445, code lost:
        r2 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0447, code lost:
        r4 = r24;
        r23 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0451, code lost:
        if (r2 != 1700671838) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0455, code lost:
        if (r24 != true) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0457, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006e, code lost:
        if (r9 == 0) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0459, code lost:
        r2 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x045b, code lost:
        r23 = r23;
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x045f, code lost:
        r23 = r23;
        r4 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0466, code lost:
        if (r2 != 176167201) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0468, code lost:
        if (r14 != true) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x046a, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x046c, code lost:
        r2 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x046e, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0473, code lost:
        if (r2 != 1101174087) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
        if (r9 == 2) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x0475, code lost:
        if (r11 != true) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x0477, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0479, code lost:
        r2 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x047b, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0480, code lost:
        if (r2 != 45126241) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0482, code lost:
        if (r15 != true) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0484, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0486, code lost:
        r2 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x0488, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0072, code lost:
        switch(r9) {
            case 4: goto L143;
            case 5: goto L143;
            case 6: goto L143;
            case 7: goto L143;
            case 8: goto L143;
            case 9: goto L143;
            default: goto L142;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x048a, code lost:
        r2 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x048c, code lost:
        if (r2 != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x048e, code lost:
        r26.f36321h += r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0493, code lost:
        r0.position(r19 + r8);
        r19 = r4;
        r17 = r7;
        r16 = r10;
        r3 = r20;
        r18 = r23;
        r1 = -1;
        r7 = false;
        r10 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x04be, code lost:
        throw new java.io.IOException("No DTS_SYNCWORD_* found at " + r0.position());
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0075, code lost:
        r9 = 31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
        if (r5 != 0) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007e, code lost:
        if (r11 != true) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0080, code lost:
        if (r15 != false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0082, code lost:
        r26.N = com.coremedia.iso.boxes.sampleentry.c.K;
        r20 = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008b, code lost:
        r26.N = com.coremedia.iso.boxes.sampleentry.c.L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008d, code lost:
        r20 = 21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0090, code lost:
        if (r14 != true) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0092, code lost:
        r26.N = com.coremedia.iso.boxes.sampleentry.c.M;
        r20 = 18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009b, code lost:
        if (r15 != true) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009d, code lost:
        r26.N = com.coremedia.iso.boxes.sampleentry.c.L;
        r1 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a1, code lost:
        if (r1 != false) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a3, code lost:
        if (r11 != false) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a5, code lost:
        r20 = 19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00aa, code lost:
        if (r1 != true) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ac, code lost:
        if (r11 != false) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ae, code lost:
        r20 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b1, code lost:
        if (r1 != false) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b3, code lost:
        if (r11 != true) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b6, code lost:
        r20 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b8, code lost:
        r26.f36319f = r26.C;
        r26.f36322i = 24;
        r1 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c4, code lost:
        r2 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c7, code lost:
        if (r10 >= 1) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00cb, code lost:
        if (r13 <= 0) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00cd, code lost:
        r7 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00cf, code lost:
        if (r7 == 0) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d1, code lost:
        if (r7 == 2) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d4, code lost:
        if (r7 == 6) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d6, code lost:
        r26.N = com.coremedia.iso.boxes.sampleentry.c.L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d8, code lost:
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00db, code lost:
        r26.N = com.coremedia.iso.boxes.sampleentry.c.L;
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00e0, code lost:
        r26.N = "dtsc";
        r1 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00e5, code lost:
        r26.N = "dtsc";
        r1 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ea, code lost:
        r26.N = "dtsc";
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ef, code lost:
        r7 = r17;
        r26.N = com.coremedia.iso.boxes.sampleentry.c.L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00f3, code lost:
        if (r13 != 0) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f5, code lost:
        if (r15 != false) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00f8, code lost:
        if (r2 != true) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00fa, code lost:
        r1 = r18;
        r10 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00fe, code lost:
        if (r1 != false) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0100, code lost:
        if (r10 != false) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0102, code lost:
        if (r11 != false) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0104, code lost:
        if (r14 != false) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0106, code lost:
        r1 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0109, code lost:
        r1 = r18;
        r10 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x010d, code lost:
        if (r15 != false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x010f, code lost:
        if (r2 != false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0111, code lost:
        if (r1 != false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0113, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0114, code lost:
        if (r10 != true) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0116, code lost:
        if (r11 != false) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0118, code lost:
        if (r14 != false) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x011a, code lost:
        r1 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x011d, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x011e, code lost:
        if (r15 != false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0120, code lost:
        if (r2 != r7) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0122, code lost:
        if (r1 != false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0124, code lost:
        if (r10 != r7) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0126, code lost:
        if (r11 != false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0128, code lost:
        if (r14 != false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x012a, code lost:
        r1 = 9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x012e, code lost:
        if (r15 != false) goto L257;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean r() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.authoring.tracks.m.r():boolean");
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36329p;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36317d;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36325l;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36328o.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "soun";
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36318e;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return null;
    }

    public m(com.googlecode.mp4parser.e eVar) throws IOException {
        super(eVar.toString());
        this.f36317d = new com.googlecode.mp4parser.authoring.i();
        this.f36321h = 0;
        this.f36326m = 0;
        this.f36327n = new com.googlecode.mp4parser.boxes.d();
        this.f36330q = false;
        this.f36331r = false;
        this.f36332s = false;
        this.f36333t = 0;
        this.f36334u = 0;
        this.f36335v = 0;
        this.f36336w = 0;
        this.f36337x = 0;
        this.f36338y = 0;
        this.f36339z = 0;
        this.A = 0;
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = "none";
        this.O = "eng";
        this.f36328o = eVar;
        h();
    }
}
