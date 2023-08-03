package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.s0;
import com.google.android.exoplayer2.audio.c0;
import com.google.android.exoplayer2.audio.g0;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: MP3TrackImpl.java */
/* loaded from: classes2.dex */
public class p extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: l  reason: collision with root package name */
    private static final int f36378l = 3;

    /* renamed from: m  reason: collision with root package name */
    private static final int f36379m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f36380n = {StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE, 48000, 32000};

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f36381o = {0, 32000, g0.f21226b, 48000, 56000, 64000, com.google.android.exoplayer2.audio.b.f21119b, 96000, 112000, 128000, 160000, c0.f21169a, 224000, com.google.android.exoplayer2.audio.a.f21099i, 320000};

    /* renamed from: p  reason: collision with root package name */
    private static final int f36382p = 1152;

    /* renamed from: q  reason: collision with root package name */
    private static final int f36383q = 107;

    /* renamed from: r  reason: collision with root package name */
    private static final int f36384r = 5;

    /* renamed from: d  reason: collision with root package name */
    private final com.googlecode.mp4parser.e f36385d;

    /* renamed from: e  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f36386e;

    /* renamed from: f  reason: collision with root package name */
    s0 f36387f;

    /* renamed from: g  reason: collision with root package name */
    a f36388g;

    /* renamed from: h  reason: collision with root package name */
    long f36389h;

    /* renamed from: i  reason: collision with root package name */
    long f36390i;

    /* renamed from: j  reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f36391j;

    /* renamed from: k  reason: collision with root package name */
    private long[] f36392k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MP3TrackImpl.java */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        int f36393a;

        /* renamed from: b  reason: collision with root package name */
        int f36394b;

        /* renamed from: c  reason: collision with root package name */
        int f36395c;

        /* renamed from: d  reason: collision with root package name */
        int f36396d;

        /* renamed from: e  reason: collision with root package name */
        int f36397e;

        /* renamed from: f  reason: collision with root package name */
        int f36398f;

        /* renamed from: g  reason: collision with root package name */
        int f36399g;

        /* renamed from: h  reason: collision with root package name */
        int f36400h;

        /* renamed from: i  reason: collision with root package name */
        int f36401i;

        /* renamed from: j  reason: collision with root package name */
        int f36402j;

        a() {
        }

        int a() {
            return ((this.f36397e * 144) / this.f36399g) + this.f36400h;
        }
    }

    public p(com.googlecode.mp4parser.e eVar) throws IOException {
        this(eVar, "eng");
    }

    private a a(com.googlecode.mp4parser.e eVar) throws IOException {
        a aVar = new a();
        ByteBuffer allocate = ByteBuffer.allocate(4);
        while (allocate.position() < 4) {
            if (eVar.read(allocate) == -1) {
                return null;
            }
        }
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c((ByteBuffer) allocate.rewind());
        if (cVar.c(11) == 2047) {
            int c10 = cVar.c(2);
            aVar.f36393a = c10;
            if (c10 == 3) {
                int c11 = cVar.c(2);
                aVar.f36394b = c11;
                if (c11 == 1) {
                    aVar.f36395c = cVar.c(1);
                    int c12 = cVar.c(4);
                    aVar.f36396d = c12;
                    int i4 = f36381o[c12];
                    aVar.f36397e = i4;
                    if (i4 != 0) {
                        int c13 = cVar.c(2);
                        aVar.f36398f = c13;
                        int i10 = f36380n[c13];
                        aVar.f36399g = i10;
                        if (i10 != 0) {
                            aVar.f36400h = cVar.c(1);
                            cVar.c(1);
                            int c14 = cVar.c(2);
                            aVar.f36401i = c14;
                            aVar.f36402j = c14 == 3 ? 1 : 2;
                            return aVar;
                        }
                        throw new IOException("Unexpected (reserved) sample rate frequency");
                    }
                    throw new IOException("Unexpected (free/bad) bit rate");
                }
                throw new IOException("Expected Layer III");
            }
            throw new IOException("Expected MPEG Version 1 (ISO/IEC 11172-3)");
        }
        throw new IOException("Expected Start Word 0x7ff");
    }

    private a b(com.googlecode.mp4parser.e eVar) throws IOException {
        a aVar = null;
        while (true) {
            long C = eVar.C();
            a a10 = a(eVar);
            if (a10 == null) {
                return aVar;
            }
            if (aVar == null) {
                aVar = a10;
            }
            eVar.S(C);
            ByteBuffer allocate = ByteBuffer.allocate(a10.a());
            eVar.read(allocate);
            allocate.rewind();
            this.f36391j.add(new com.googlecode.mp4parser.authoring.g(allocate));
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36391j;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36386e;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36392k;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36385d.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "soun";
    }

    public String toString() {
        return "MP3TrackImpl";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36387f;
    }

    public p(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        super(eVar.toString());
        this.f36386e = new com.googlecode.mp4parser.authoring.i();
        this.f36385d = eVar;
        this.f36391j = new LinkedList();
        a b10 = b(eVar);
        this.f36388g = b10;
        double d4 = b10.f36399g / 1152.0d;
        double size = this.f36391j.size() / d4;
        LinkedList linkedList = new LinkedList();
        Iterator<com.googlecode.mp4parser.authoring.f> it = this.f36391j.iterator();
        long j4 = 0;
        while (true) {
            int i4 = 0;
            if (!it.hasNext()) {
                this.f36390i = (int) ((j4 * 8) / size);
                this.f36387f = new s0();
                com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.D);
                cVar.s0(this.f36388g.f36402j);
                cVar.x0(this.f36388g.f36399g);
                cVar.d(1);
                cVar.y0(16);
                com.googlecode.mp4parser.boxes.mp4.b bVar = new com.googlecode.mp4parser.boxes.mp4.b();
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h hVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h();
                hVar.x(0);
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.o oVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.o();
                oVar.j(2);
                hVar.z(oVar);
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e eVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e();
                eVar2.v(107);
                eVar2.w(5);
                eVar2.u(this.f36389h);
                eVar2.s(this.f36390i);
                hVar.v(eVar2);
                bVar.y(hVar.t());
                cVar.D(bVar);
                this.f36387f.D(cVar);
                this.f36386e.l(new Date());
                this.f36386e.r(new Date());
                this.f36386e.o(str);
                this.f36386e.u(1.0f);
                this.f36386e.s(this.f36388g.f36399g);
                long[] jArr = new long[this.f36391j.size()];
                this.f36392k = jArr;
                Arrays.fill(jArr, 1152L);
                return;
            }
            int size2 = (int) it.next().getSize();
            j4 += size2;
            linkedList.add(Integer.valueOf(size2));
            while (linkedList.size() > d4) {
                linkedList.pop();
            }
            if (linkedList.size() == ((int) d4)) {
                Iterator it2 = linkedList.iterator();
                while (it2.hasNext()) {
                    i4 += ((Integer) it2.next()).intValue();
                }
                double size3 = ((i4 * 8.0d) / linkedList.size()) * d4;
                if (size3 > this.f36389h) {
                    this.f36389h = (int) size3;
                }
            }
        }
    }
}
