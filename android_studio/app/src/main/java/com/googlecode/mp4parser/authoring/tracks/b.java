package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import okio.Utf8;

/* compiled from: AC3TrackImpl.java */
/* loaded from: classes2.dex */
public class b extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: i  reason: collision with root package name */
    static int[][][][] f36222i;

    /* renamed from: d  reason: collision with root package name */
    private final com.googlecode.mp4parser.e f36223d;

    /* renamed from: e  reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f36224e;

    /* renamed from: f  reason: collision with root package name */
    private long[] f36225f;

    /* renamed from: g  reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.i f36226g;

    /* renamed from: h  reason: collision with root package name */
    private s0 f36227h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AC3TrackImpl.java */
    /* loaded from: classes2.dex */
    public class a implements com.googlecode.mp4parser.authoring.f {

        /* renamed from: a  reason: collision with root package name */
        private final long f36228a;

        /* renamed from: b  reason: collision with root package name */
        private final long f36229b;

        /* renamed from: c  reason: collision with root package name */
        private final com.googlecode.mp4parser.e f36230c;

        public a(long j4, long j10, com.googlecode.mp4parser.e eVar) {
            this.f36228a = j4;
            this.f36229b = j10;
            this.f36230c = eVar;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            try {
                return this.f36230c.e0(this.f36228a, this.f36229b);
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            this.f36230c.m(this.f36228a, this.f36229b, writableByteChannel);
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f36229b;
        }
    }

    static {
        int[][][][] iArr = (int[][][][]) Array.newInstance(int.class, 19, 2, 3, 2);
        f36222i = iArr;
        iArr[0][0][0][0] = 32;
        iArr[0][1][0][0] = 32;
        iArr[0][0][0][1] = 64;
        iArr[0][1][0][1] = 64;
        iArr[1][0][0][0] = 40;
        iArr[1][1][0][0] = 40;
        iArr[1][0][0][1] = 80;
        iArr[1][1][0][1] = 80;
        iArr[2][0][0][0] = 48;
        iArr[2][1][0][0] = 48;
        iArr[2][0][0][1] = 96;
        iArr[2][1][0][1] = 96;
        iArr[3][0][0][0] = 56;
        iArr[3][1][0][0] = 56;
        iArr[3][0][0][1] = 112;
        iArr[3][1][0][1] = 112;
        iArr[4][0][0][0] = 64;
        iArr[4][1][0][0] = 64;
        iArr[4][0][0][1] = 128;
        iArr[4][1][0][1] = 128;
        iArr[5][0][0][0] = 80;
        iArr[5][1][0][0] = 80;
        iArr[5][0][0][1] = 160;
        iArr[5][1][0][1] = 160;
        iArr[6][0][0][0] = 96;
        iArr[6][1][0][0] = 96;
        iArr[6][0][0][1] = 192;
        iArr[6][1][0][1] = 192;
        iArr[7][0][0][0] = 112;
        iArr[7][1][0][0] = 112;
        iArr[7][0][0][1] = 224;
        iArr[7][1][0][1] = 224;
        iArr[8][0][0][0] = 128;
        iArr[8][1][0][0] = 128;
        iArr[8][0][0][1] = 256;
        iArr[8][1][0][1] = 256;
        iArr[9][0][0][0] = 160;
        iArr[9][1][0][0] = 160;
        iArr[9][0][0][1] = 320;
        iArr[9][1][0][1] = 320;
        iArr[10][0][0][0] = 192;
        iArr[10][1][0][0] = 192;
        iArr[10][0][0][1] = 384;
        iArr[10][1][0][1] = 384;
        iArr[11][0][0][0] = 224;
        iArr[11][1][0][0] = 224;
        iArr[11][0][0][1] = 448;
        iArr[11][1][0][1] = 448;
        iArr[12][0][0][0] = 256;
        iArr[12][1][0][0] = 256;
        iArr[12][0][0][1] = 512;
        iArr[12][1][0][1] = 512;
        iArr[13][0][0][0] = 320;
        iArr[13][1][0][0] = 320;
        iArr[13][0][0][1] = 640;
        iArr[13][1][0][1] = 640;
        iArr[14][0][0][0] = 384;
        iArr[14][1][0][0] = 384;
        iArr[14][0][0][1] = 768;
        iArr[14][1][0][1] = 768;
        iArr[15][0][0][0] = 448;
        iArr[15][1][0][0] = 448;
        iArr[15][0][0][1] = 896;
        iArr[15][1][0][1] = 896;
        iArr[16][0][0][0] = 512;
        iArr[16][1][0][0] = 512;
        iArr[16][0][0][1] = 1024;
        iArr[16][1][0][1] = 1024;
        iArr[17][0][0][0] = 576;
        iArr[17][1][0][0] = 576;
        iArr[17][0][0][1] = 1152;
        iArr[17][1][0][1] = 1152;
        iArr[18][0][0][0] = 640;
        iArr[18][1][0][0] = 640;
        iArr[18][0][0][1] = 1280;
        iArr[18][1][0][1] = 1280;
        iArr[0][0][1][0] = 32;
        iArr[0][1][1][0] = 32;
        iArr[0][0][1][1] = 69;
        iArr[0][1][1][1] = 70;
        iArr[1][0][1][0] = 40;
        iArr[1][1][1][0] = 40;
        iArr[1][0][1][1] = 87;
        iArr[1][1][1][1] = 88;
        iArr[2][0][1][0] = 48;
        iArr[2][1][1][0] = 48;
        iArr[2][0][1][1] = 104;
        iArr[2][1][1][1] = 105;
        iArr[3][0][1][0] = 56;
        iArr[3][1][1][0] = 56;
        iArr[3][0][1][1] = 121;
        iArr[3][1][1][1] = 122;
        iArr[4][0][1][0] = 64;
        iArr[4][1][1][0] = 64;
        iArr[4][0][1][1] = 139;
        iArr[4][1][1][1] = 140;
        iArr[5][0][1][0] = 80;
        iArr[5][1][1][0] = 80;
        iArr[5][0][1][1] = 174;
        iArr[5][1][1][1] = 175;
        iArr[6][0][1][0] = 96;
        iArr[6][1][1][0] = 96;
        iArr[6][0][1][1] = 208;
        iArr[6][1][1][1] = 209;
        iArr[7][0][1][0] = 112;
        iArr[7][1][1][0] = 112;
        iArr[7][0][1][1] = 243;
        iArr[7][1][1][1] = 244;
        iArr[8][0][1][0] = 128;
        iArr[8][1][1][0] = 128;
        iArr[8][0][1][1] = 278;
        iArr[8][1][1][1] = 279;
        iArr[9][0][1][0] = 160;
        iArr[9][1][1][0] = 160;
        iArr[9][0][1][1] = 348;
        iArr[9][1][1][1] = 349;
        iArr[10][0][1][0] = 192;
        iArr[10][1][1][0] = 192;
        iArr[10][0][1][1] = 417;
        iArr[10][1][1][1] = 418;
        iArr[11][0][1][0] = 224;
        iArr[11][1][1][0] = 224;
        iArr[11][0][1][1] = 487;
        iArr[11][1][1][1] = 488;
        iArr[12][0][1][0] = 256;
        iArr[12][1][1][0] = 256;
        iArr[12][0][1][1] = 557;
        iArr[12][1][1][1] = 558;
        iArr[13][0][1][0] = 320;
        iArr[13][1][1][0] = 320;
        iArr[13][0][1][1] = 696;
        iArr[13][1][1][1] = 697;
        iArr[14][0][1][0] = 384;
        iArr[14][1][1][0] = 384;
        iArr[14][0][1][1] = 835;
        iArr[14][1][1][1] = 836;
        iArr[15][0][1][0] = 448;
        iArr[15][1][1][0] = 448;
        iArr[15][0][1][1] = 975;
        iArr[15][1][1][1] = 975;
        iArr[16][0][1][0] = 512;
        iArr[16][1][1][0] = 512;
        iArr[16][0][1][1] = 1114;
        iArr[16][1][1][1] = 1115;
        iArr[17][0][1][0] = 576;
        iArr[17][1][1][0] = 576;
        iArr[17][0][1][1] = 1253;
        iArr[17][1][1][1] = 1254;
        iArr[18][0][1][0] = 640;
        iArr[18][1][1][0] = 640;
        iArr[18][0][1][1] = 1393;
        iArr[18][1][1][1] = 1394;
        iArr[0][0][2][0] = 32;
        iArr[0][1][2][0] = 32;
        iArr[0][0][2][1] = 96;
        iArr[0][1][2][1] = 96;
        iArr[1][0][2][0] = 40;
        iArr[1][1][2][0] = 40;
        iArr[1][0][2][1] = 120;
        iArr[1][1][2][1] = 120;
        iArr[2][0][2][0] = 48;
        iArr[2][1][2][0] = 48;
        iArr[2][0][2][1] = 144;
        iArr[2][1][2][1] = 144;
        iArr[3][0][2][0] = 56;
        iArr[3][1][2][0] = 56;
        iArr[3][0][2][1] = 168;
        iArr[3][1][2][1] = 168;
        iArr[4][0][2][0] = 64;
        iArr[4][1][2][0] = 64;
        iArr[4][0][2][1] = 192;
        iArr[4][1][2][1] = 192;
        iArr[5][0][2][0] = 80;
        iArr[5][1][2][0] = 80;
        iArr[5][0][2][1] = 240;
        iArr[5][1][2][1] = 240;
        iArr[6][0][2][0] = 96;
        iArr[6][1][2][0] = 96;
        iArr[6][0][2][1] = 288;
        iArr[6][1][2][1] = 288;
        iArr[7][0][2][0] = 112;
        iArr[7][1][2][0] = 112;
        iArr[7][0][2][1] = 336;
        iArr[7][1][2][1] = 336;
        iArr[8][0][2][0] = 128;
        iArr[8][1][2][0] = 128;
        iArr[8][0][2][1] = 384;
        iArr[8][1][2][1] = 384;
        iArr[9][0][2][0] = 160;
        iArr[9][1][2][0] = 160;
        iArr[9][0][2][1] = 480;
        iArr[9][1][2][1] = 480;
        iArr[10][0][2][0] = 192;
        iArr[10][1][2][0] = 192;
        iArr[10][0][2][1] = 576;
        iArr[10][1][2][1] = 576;
        iArr[11][0][2][0] = 224;
        iArr[11][1][2][0] = 224;
        iArr[11][0][2][1] = 672;
        iArr[11][1][2][1] = 672;
        iArr[12][0][2][0] = 256;
        iArr[12][1][2][0] = 256;
        iArr[12][0][2][1] = 768;
        iArr[12][1][2][1] = 768;
        iArr[13][0][2][0] = 320;
        iArr[13][1][2][0] = 320;
        iArr[13][0][2][1] = 960;
        iArr[13][1][2][1] = 960;
        iArr[14][0][2][0] = 384;
        iArr[14][1][2][0] = 384;
        iArr[14][0][2][1] = 1152;
        iArr[14][1][2][1] = 1152;
        iArr[15][0][2][0] = 448;
        iArr[15][1][2][0] = 448;
        iArr[15][0][2][1] = 1344;
        iArr[15][1][2][1] = 1344;
        iArr[16][0][2][0] = 512;
        iArr[16][1][2][0] = 512;
        iArr[16][0][2][1] = 1536;
        iArr[16][1][2][1] = 1536;
        iArr[17][0][2][0] = 576;
        iArr[17][1][2][0] = 576;
        iArr[17][0][2][1] = 1728;
        iArr[17][1][2][1] = 1728;
        iArr[18][0][2][0] = 640;
        iArr[18][1][2][0] = 640;
        iArr[18][0][2][1] = 1920;
        iArr[18][1][2][1] = 1920;
    }

    public b(com.googlecode.mp4parser.e eVar) throws IOException {
        this(eVar, "eng");
    }

    private com.coremedia.iso.boxes.sampleentry.c a() throws IOException {
        int i4;
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(this.f36224e.get(0).a());
        if (cVar.c(16) == 2935) {
            cVar.c(16);
            int c10 = cVar.c(2);
            if (c10 == 0) {
                i4 = 48000;
            } else if (c10 == 1) {
                i4 = StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE;
            } else if (c10 != 2) {
                throw new RuntimeException("Unsupported Sample Rate");
            } else {
                i4 = 32000;
            }
            int c11 = cVar.c(6);
            int c12 = cVar.c(5);
            int c13 = cVar.c(3);
            int c14 = cVar.c(3);
            if (c12 != 16) {
                if (c12 == 9) {
                    i4 /= 2;
                } else if (c12 != 8 && c12 != 6) {
                    throw new RuntimeException("Unsupported bsid");
                }
                if (c14 != 1 && (c14 & 1) == 1) {
                    cVar.c(2);
                }
                if ((c14 & 4) != 0) {
                    cVar.c(2);
                }
                if (c14 == 2) {
                    cVar.c(2);
                }
                switch (c14) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        int c15 = cVar.c(1);
                        com.coremedia.iso.boxes.sampleentry.c cVar2 = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.H);
                        cVar2.s0(2);
                        cVar2.x0(i4);
                        cVar2.d(1);
                        cVar2.y0(16);
                        com.googlecode.mp4parser.boxes.a aVar = new com.googlecode.mp4parser.boxes.a();
                        aVar.A(c14);
                        aVar.B(c11 >> 1);
                        aVar.C(c12);
                        aVar.D(c13);
                        aVar.E(c10);
                        aVar.F(c15);
                        aVar.G(0);
                        cVar2.D(aVar);
                        return cVar2;
                    default:
                        throw new RuntimeException("Unsupported acmod");
                }
            }
            throw new RuntimeException("You cannot read E-AC-3 track with AC3TrackImpl.class - user EC3TrackImpl.class");
        }
        throw new RuntimeException("Stream doesn't seem to be AC3");
    }

    private int b(int i4, int i10) {
        int i11 = i4 >>> 1;
        int i12 = i4 & 1;
        if (i11 <= 18 && i12 <= 1 && i10 <= 2) {
            return f36222i[i11][i12][i10][1] * 2;
        }
        throw new RuntimeException("Cannot determine framesize of current sample");
    }

    private List<com.googlecode.mp4parser.authoring.f> d() throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(5);
        ArrayList arrayList = new ArrayList();
        while (-1 != this.f36223d.read(allocate)) {
            long b10 = b(allocate.get(4) & Utf8.REPLACEMENT_BYTE, allocate.get(4) >> 6);
            arrayList.add(new a(this.f36223d.C() - 5, b10, this.f36223d));
            com.googlecode.mp4parser.e eVar = this.f36223d;
            eVar.S((eVar.C() - 5) + b10);
            allocate.rewind();
        }
        long[] jArr = new long[arrayList.size()];
        this.f36225f = jArr;
        Arrays.fill(jArr, 1536L);
        return arrayList;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36224e;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36226g;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] c0() {
        return this.f36225f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36223d.close();
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
        return this.f36227h;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return null;
    }

    public b(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        super(eVar.toString());
        com.googlecode.mp4parser.authoring.i iVar = new com.googlecode.mp4parser.authoring.i();
        this.f36226g = iVar;
        this.f36223d = eVar;
        iVar.o(str);
        this.f36224e = d();
        this.f36227h = new s0();
        com.coremedia.iso.boxes.sampleentry.c a10 = a();
        this.f36227h.D(a10);
        this.f36226g.l(new Date());
        this.f36226g.r(new Date());
        this.f36226g.o(str);
        this.f36226g.s(a10.g0());
        this.f36226g.u(1.0f);
    }
}
