package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.googlecode.mp4parser.boxes.e;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/* compiled from: EC3TrackImpl.java */
/* loaded from: classes2.dex */
public class o extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: l  reason: collision with root package name */
    private static final long f36361l = 20;

    /* renamed from: d  reason: collision with root package name */
    private final com.googlecode.mp4parser.e f36362d;

    /* renamed from: e  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f36363e;

    /* renamed from: f  reason: collision with root package name */
    s0 f36364f;

    /* renamed from: g  reason: collision with root package name */
    private int f36365g;

    /* renamed from: h  reason: collision with root package name */
    private int f36366h;

    /* renamed from: i  reason: collision with root package name */
    private List<b> f36367i;

    /* renamed from: j  reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f36368j;

    /* renamed from: k  reason: collision with root package name */
    private long[] f36369k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EC3TrackImpl.java */
    /* loaded from: classes2.dex */
    public class a implements com.googlecode.mp4parser.authoring.f {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ int f36371b;

        a(int i4) {
            this.f36371b = i4;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            try {
                return o.this.f36362d.e0(this.f36371b, o.this.f36366h);
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            o.this.f36362d.m(this.f36371b, o.this.f36366h, writableByteChannel);
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return o.this.f36366h;
        }
    }

    /* compiled from: EC3TrackImpl.java */
    /* loaded from: classes2.dex */
    public static class b extends e.a {

        /* renamed from: j  reason: collision with root package name */
        public int f36372j;

        /* renamed from: k  reason: collision with root package name */
        public int f36373k;

        /* renamed from: l  reason: collision with root package name */
        public int f36374l;

        /* renamed from: m  reason: collision with root package name */
        public int f36375m;

        /* renamed from: n  reason: collision with root package name */
        public int f36376n;

        /* renamed from: o  reason: collision with root package name */
        public int f36377o;

        @Override // com.googlecode.mp4parser.boxes.e.a
        public String toString() {
            return "BitStreamInfo{frameSize=" + this.f36372j + ", substreamid=" + this.f36373k + ", bitrate=" + this.f36374l + ", samplerate=" + this.f36375m + ", strmtyp=" + this.f36376n + ", chanmap=" + this.f36377o + '}';
        }
    }

    public o(com.googlecode.mp4parser.e eVar) throws IOException {
        super(eVar.toString());
        this.f36363e = new com.googlecode.mp4parser.authoring.i();
        this.f36367i = new LinkedList();
        this.f36362d = eVar;
        boolean z9 = false;
        while (!z9) {
            b h4 = h();
            if (h4 != null) {
                for (b bVar : this.f36367i) {
                    if (h4.f36376n != 1 && bVar.f36373k == h4.f36373k) {
                        z9 = true;
                    }
                }
                if (!z9) {
                    this.f36367i.add(h4);
                }
            } else {
                throw new IOException();
            }
        }
        if (this.f36367i.size() != 0) {
            int i4 = this.f36367i.get(0).f36375m;
            this.f36364f = new s0();
            com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.I);
            cVar.s0(2);
            long j4 = i4;
            cVar.x0(j4);
            cVar.d(1);
            cVar.y0(16);
            com.googlecode.mp4parser.boxes.e eVar2 = new com.googlecode.mp4parser.boxes.e();
            int[] iArr = new int[this.f36367i.size()];
            int[] iArr2 = new int[this.f36367i.size()];
            for (b bVar2 : this.f36367i) {
                if (bVar2.f36376n == 1) {
                    int i10 = bVar2.f36373k;
                    iArr[i10] = iArr[i10] + 1;
                    int i11 = bVar2.f36377o;
                    iArr2[i10] = ((i11 >> 5) & 255) | ((i11 >> 6) & 256);
                }
            }
            for (b bVar3 : this.f36367i) {
                if (bVar3.f36376n != 1) {
                    e.a aVar = new e.a();
                    aVar.f36686a = bVar3.f36686a;
                    aVar.f36687b = bVar3.f36687b;
                    aVar.f36688c = bVar3.f36688c;
                    aVar.f36689d = bVar3.f36689d;
                    aVar.f36690e = bVar3.f36690e;
                    aVar.f36691f = 0;
                    int i12 = bVar3.f36373k;
                    aVar.f36692g = iArr[i12];
                    aVar.f36693h = iArr2[i12];
                    aVar.f36694i = 0;
                    eVar2.s(aVar);
                }
                this.f36365g += bVar3.f36374l;
                this.f36366h += bVar3.f36372j;
            }
            eVar2.x(this.f36365g / 1000);
            cVar.D(eVar2);
            this.f36364f.D(cVar);
            this.f36363e.l(new Date());
            this.f36363e.r(new Date());
            this.f36363e.s(j4);
            this.f36363e.u(1.0f);
            eVar.S(0L);
            List<com.googlecode.mp4parser.authoring.f> d4 = d();
            this.f36368j = d4;
            long[] jArr = new long[d4.size()];
            this.f36369k = jArr;
            Arrays.fill(jArr, 1536L);
            return;
        }
        throw new IOException();
    }

    private List<com.googlecode.mp4parser.authoring.f> d() throws IOException {
        int a10 = com.googlecode.mp4parser.util.c.a((this.f36362d.size() - this.f36362d.C()) / this.f36366h);
        ArrayList arrayList = new ArrayList(a10);
        for (int i4 = 0; i4 < a10; i4++) {
            arrayList.add(new a(this.f36366h * i4));
        }
        return arrayList;
    }

    private b h() throws IOException {
        int c10;
        long C = this.f36362d.C();
        ByteBuffer allocate = ByteBuffer.allocate(200);
        this.f36362d.read(allocate);
        allocate.rewind();
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(allocate);
        if (cVar.c(16) != 2935) {
            return null;
        }
        b bVar = new b();
        bVar.f36376n = cVar.c(2);
        bVar.f36373k = cVar.c(3);
        bVar.f36372j = (cVar.c(11) + 1) * 2;
        int c11 = cVar.c(2);
        bVar.f36686a = c11;
        int i4 = -1;
        if (c11 == 3) {
            i4 = cVar.c(2);
            c10 = 3;
        } else {
            c10 = cVar.c(2);
        }
        int i10 = c10 != 0 ? c10 != 1 ? c10 != 2 ? c10 != 3 ? 0 : 6 : 3 : 2 : 1;
        bVar.f36372j *= 6 / i10;
        bVar.f36689d = cVar.c(3);
        bVar.f36690e = cVar.c(1);
        bVar.f36687b = cVar.c(5);
        cVar.c(5);
        if (1 == cVar.c(1)) {
            cVar.c(8);
        }
        if (bVar.f36689d == 0) {
            cVar.c(5);
            if (1 == cVar.c(1)) {
                cVar.c(8);
            }
        }
        if (1 == bVar.f36376n && 1 == cVar.c(1)) {
            bVar.f36377o = cVar.c(16);
        }
        if (1 == cVar.c(1)) {
            if (bVar.f36689d > 2) {
                cVar.c(2);
            }
            int i11 = bVar.f36689d;
            if (1 == (i11 & 1) && i11 > 2) {
                cVar.c(3);
                cVar.c(3);
            }
            if ((bVar.f36689d & 4) > 0) {
                cVar.c(3);
                cVar.c(3);
            }
            if (1 == bVar.f36690e && 1 == cVar.c(1)) {
                cVar.c(5);
            }
            if (bVar.f36376n == 0) {
                if (1 == cVar.c(1)) {
                    cVar.c(6);
                }
                if (bVar.f36689d == 0 && 1 == cVar.c(1)) {
                    cVar.c(6);
                }
                if (1 == cVar.c(1)) {
                    cVar.c(6);
                }
                int c12 = cVar.c(2);
                if (1 == c12) {
                    cVar.c(5);
                } else if (2 == c12) {
                    cVar.c(12);
                } else if (3 == c12) {
                    int c13 = cVar.c(5);
                    if (1 == cVar.c(1)) {
                        cVar.c(5);
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            if (1 == cVar.c(1)) {
                                cVar.c(4);
                            }
                            if (1 == cVar.c(1)) {
                                cVar.c(4);
                            }
                        }
                    }
                    if (1 == cVar.c(1)) {
                        cVar.c(5);
                        if (1 == cVar.c(1)) {
                            cVar.c(7);
                            if (1 == cVar.c(1)) {
                                cVar.c(8);
                            }
                        }
                    }
                    for (int i12 = 0; i12 < c13 + 2; i12++) {
                        cVar.c(8);
                    }
                    cVar.a();
                }
                if (bVar.f36689d < 2) {
                    if (1 == cVar.c(1)) {
                        cVar.c(14);
                    }
                    if (bVar.f36689d == 0 && 1 == cVar.c(1)) {
                        cVar.c(14);
                    }
                    if (1 == cVar.c(1)) {
                        if (c10 == 0) {
                            cVar.c(5);
                        } else {
                            for (int i13 = 0; i13 < i10; i13++) {
                                if (1 == cVar.c(1)) {
                                    cVar.c(5);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (1 == cVar.c(1)) {
            bVar.f36688c = cVar.c(3);
        }
        int i14 = bVar.f36686a;
        if (i14 == 0) {
            bVar.f36375m = 48000;
        } else if (i14 == 1) {
            bVar.f36375m = StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE;
        } else if (i14 == 2) {
            bVar.f36375m = 32000;
        } else if (i14 == 3) {
            if (i4 == 0) {
                bVar.f36375m = 24000;
            } else if (i4 == 1) {
                bVar.f36375m = 22050;
            } else if (i4 == 2) {
                bVar.f36375m = com.google.android.exoplayer2.audio.a.f21097g;
            } else if (i4 == 3) {
                bVar.f36375m = 0;
            }
        }
        int i15 = bVar.f36375m;
        if (i15 == 0) {
            return null;
        }
        int i16 = bVar.f36372j;
        bVar.f36374l = (int) ((i15 / 1536.0d) * i16 * 8.0d);
        this.f36362d.S(C + i16);
        return bVar;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36368j;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36363e;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36369k;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36362d.close();
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

    public String toString() {
        return "EC3TrackImpl{bitrate=" + this.f36365g + ", bitStreamInfos=" + this.f36367i + '}';
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36364f;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return null;
    }
}
