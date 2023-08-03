package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* compiled from: AACTrackImpl.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: n  reason: collision with root package name */
    static Map<Integer, String> f36192n;

    /* renamed from: o  reason: collision with root package name */
    public static Map<Integer, Integer> f36193o;

    /* renamed from: d  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f36194d;

    /* renamed from: e  reason: collision with root package name */
    s0 f36195e;

    /* renamed from: f  reason: collision with root package name */
    long[] f36196f;

    /* renamed from: g  reason: collision with root package name */
    b f36197g;

    /* renamed from: h  reason: collision with root package name */
    int f36198h;

    /* renamed from: i  reason: collision with root package name */
    long f36199i;

    /* renamed from: j  reason: collision with root package name */
    long f36200j;

    /* renamed from: k  reason: collision with root package name */
    private com.googlecode.mp4parser.e f36201k;

    /* renamed from: l  reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f36202l;

    /* renamed from: m  reason: collision with root package name */
    private String f36203m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AACTrackImpl.java */
    /* renamed from: com.googlecode.mp4parser.authoring.tracks.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0282a implements com.googlecode.mp4parser.authoring.f {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ long f36205b;

        /* renamed from: c  reason: collision with root package name */
        private final /* synthetic */ long f36206c;

        C0282a(long j4, long j10) {
            this.f36205b = j4;
            this.f36206c = j10;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            try {
                return a.this.f36201k.e0(this.f36205b, this.f36206c);
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            a.this.f36201k.m(this.f36205b, this.f36206c, writableByteChannel);
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f36206c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AACTrackImpl.java */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        int f36207a;

        /* renamed from: b  reason: collision with root package name */
        int f36208b;

        /* renamed from: c  reason: collision with root package name */
        int f36209c;

        /* renamed from: d  reason: collision with root package name */
        int f36210d;

        /* renamed from: e  reason: collision with root package name */
        int f36211e;

        /* renamed from: f  reason: collision with root package name */
        int f36212f;

        /* renamed from: g  reason: collision with root package name */
        int f36213g;

        /* renamed from: h  reason: collision with root package name */
        int f36214h;

        /* renamed from: i  reason: collision with root package name */
        int f36215i;

        /* renamed from: j  reason: collision with root package name */
        int f36216j;

        /* renamed from: k  reason: collision with root package name */
        int f36217k;

        /* renamed from: l  reason: collision with root package name */
        int f36218l;

        /* renamed from: m  reason: collision with root package name */
        int f36219m;

        /* renamed from: n  reason: collision with root package name */
        int f36220n;

        b() {
        }

        int a() {
            return (this.f36210d == 0 ? 2 : 0) + 7;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f36192n = hashMap;
        hashMap.put(1, "AAC Main");
        f36192n.put(2, "AAC LC (Low Complexity)");
        f36192n.put(3, "AAC SSR (Scalable Sample Rate)");
        f36192n.put(4, "AAC LTP (Long Term Prediction)");
        f36192n.put(5, "SBR (Spectral Band Replication)");
        f36192n.put(6, "AAC Scalable");
        f36192n.put(7, "TwinVQ");
        f36192n.put(8, "CELP (Code Excited Linear Prediction)");
        f36192n.put(9, "HXVC (Harmonic Vector eXcitation Coding)");
        f36192n.put(10, "Reserved");
        f36192n.put(11, "Reserved");
        f36192n.put(12, "TTSI (Text-To-Speech Interface)");
        f36192n.put(13, "Main Synthesis");
        f36192n.put(14, "Wavetable Synthesis");
        f36192n.put(15, "General MIDI");
        f36192n.put(16, "Algorithmic Synthesis and Audio Effects");
        f36192n.put(17, "ER (Error Resilient) AAC LC");
        f36192n.put(18, "Reserved");
        f36192n.put(19, "ER AAC LTP");
        f36192n.put(20, "ER AAC Scalable");
        f36192n.put(21, "ER TwinVQ");
        f36192n.put(22, "ER BSAC (Bit-Sliced Arithmetic Coding)");
        f36192n.put(23, "ER AAC LD (Low Delay)");
        f36192n.put(24, "ER CELP");
        f36192n.put(25, "ER HVXC");
        f36192n.put(26, "ER HILN (Harmonic and Individual Lines plus Noise)");
        f36192n.put(27, "ER Parametric");
        f36192n.put(28, "SSC (SinuSoidal Coding)");
        f36192n.put(29, "PS (Parametric Stereo)");
        f36192n.put(30, "MPEG Surround");
        f36192n.put(31, "(Escape value)");
        f36192n.put(32, "Layer-1");
        f36192n.put(33, "Layer-2");
        f36192n.put(34, "Layer-3");
        f36192n.put(35, "DST (Direct Stream Transfer)");
        f36192n.put(36, "ALS (Audio Lossless)");
        f36192n.put(37, "SLS (Scalable LosslesS)");
        f36192n.put(38, "SLS non-core");
        f36192n.put(39, "ER AAC ELD (Enhanced Low Delay)");
        f36192n.put(40, "SMR (Symbolic Music Representation) Simple");
        f36192n.put(41, "SMR Main");
        f36192n.put(42, "USAC (Unified Speech and Audio Coding) (no SBR)");
        f36192n.put(43, "SAOC (Spatial Audio Object Coding)");
        f36192n.put(44, "LD MPEG Surround");
        f36192n.put(45, "USAC");
        HashMap hashMap2 = new HashMap();
        f36193o = hashMap2;
        hashMap2.put(96000, 0);
        f36193o.put(88200, 1);
        f36193o.put(64000, 2);
        f36193o.put(48000, 3);
        f36193o.put(Integer.valueOf((int) StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE), 4);
        f36193o.put(32000, 5);
        f36193o.put(24000, 6);
        f36193o.put(22050, 7);
        f36193o.put(Integer.valueOf((int) com.google.android.exoplayer2.audio.a.f21097g), 8);
        f36193o.put(12000, 9);
        f36193o.put(11025, 10);
        f36193o.put(8000, 11);
        f36193o.put(0, 96000);
        f36193o.put(1, 88200);
        f36193o.put(2, 64000);
        f36193o.put(3, 48000);
        f36193o.put(4, Integer.valueOf((int) StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE));
        f36193o.put(5, 32000);
        f36193o.put(6, 24000);
        f36193o.put(7, 22050);
        f36193o.put(8, Integer.valueOf((int) com.google.android.exoplayer2.audio.a.f21097g));
        f36193o.put(9, 12000);
        f36193o.put(10, 11025);
        f36193o.put(11, 8000);
    }

    public a(com.googlecode.mp4parser.e eVar) throws IOException {
        this(eVar, "eng");
    }

    private b b(com.googlecode.mp4parser.e eVar) throws IOException {
        b bVar = new b();
        ByteBuffer allocate = ByteBuffer.allocate(7);
        while (allocate.position() < 7) {
            if (eVar.read(allocate) == -1) {
                return null;
            }
        }
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c((ByteBuffer) allocate.rewind());
        if (cVar.c(12) == 4095) {
            bVar.f36208b = cVar.c(1);
            bVar.f36209c = cVar.c(2);
            bVar.f36210d = cVar.c(1);
            bVar.f36211e = cVar.c(2) + 1;
            int c10 = cVar.c(4);
            bVar.f36207a = c10;
            bVar.f36212f = f36193o.get(Integer.valueOf(c10)).intValue();
            cVar.c(1);
            bVar.f36213g = cVar.c(3);
            bVar.f36214h = cVar.c(1);
            bVar.f36215i = cVar.c(1);
            bVar.f36216j = cVar.c(1);
            bVar.f36217k = cVar.c(1);
            bVar.f36218l = cVar.c(13);
            bVar.f36219m = cVar.c(11);
            int c11 = cVar.c(2) + 1;
            bVar.f36220n = c11;
            if (c11 == 1) {
                if (bVar.f36210d == 0) {
                    eVar.read(ByteBuffer.allocate(2));
                }
                return bVar;
            }
            throw new IOException("This muxer can only work with 1 AAC frame per ADTS frame");
        }
        throw new IOException("Expected Start Word 0xfff");
    }

    private b d(com.googlecode.mp4parser.e eVar) throws IOException {
        b bVar = null;
        while (true) {
            b b10 = b(eVar);
            if (b10 == null) {
                return bVar;
            }
            if (bVar == null) {
                bVar = b10;
            }
            this.f36202l.add(new C0282a(eVar.C(), b10.f36218l - b10.a()));
            eVar.S((eVar.C() + b10.f36218l) - b10.a());
        }
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36202l;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36194d;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36196f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36201k.close();
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
        return "AACTrackImpl{sampleRate=" + this.f36197g.f36212f + ", channelconfig=" + this.f36197g.f36213g + '}';
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36195e;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return null;
    }

    public a(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        super(eVar.toString());
        this.f36194d = new com.googlecode.mp4parser.authoring.i();
        this.f36203m = str;
        this.f36201k = eVar;
        this.f36202l = new ArrayList();
        b d4 = d(eVar);
        this.f36197g = d4;
        double d10 = d4.f36212f / 1024.0d;
        double size = this.f36202l.size() / d10;
        LinkedList linkedList = new LinkedList();
        Iterator<com.googlecode.mp4parser.authoring.f> it = this.f36202l.iterator();
        long j4 = 0;
        while (true) {
            int i4 = 0;
            if (!it.hasNext()) {
                break;
            }
            int size2 = (int) it.next().getSize();
            j4 += size2;
            linkedList.add(Integer.valueOf(size2));
            while (linkedList.size() > d10) {
                linkedList.pop();
            }
            if (linkedList.size() == ((int) d10)) {
                Iterator it2 = linkedList.iterator();
                while (it2.hasNext()) {
                    i4 += ((Integer) it2.next()).intValue();
                }
                double size3 = ((i4 * 8.0d) / linkedList.size()) * d10;
                if (size3 > this.f36199i) {
                    this.f36199i = (int) size3;
                }
            }
        }
        this.f36200j = (int) ((j4 * 8) / size);
        this.f36198h = 1536;
        this.f36195e = new s0();
        com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.D);
        int i10 = this.f36197g.f36213g;
        if (i10 == 7) {
            cVar.s0(8);
        } else {
            cVar.s0(i10);
        }
        cVar.x0(this.f36197g.f36212f);
        cVar.d(1);
        cVar.y0(16);
        com.googlecode.mp4parser.boxes.mp4.b bVar = new com.googlecode.mp4parser.boxes.mp4.b();
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h hVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h();
        hVar.x(0);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.o oVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.o();
        oVar.j(2);
        hVar.z(oVar);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e eVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e();
        eVar2.v(64);
        eVar2.w(5);
        eVar2.t(this.f36198h);
        eVar2.u(this.f36199i);
        eVar2.s(this.f36200j);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a aVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a();
        aVar.v(2);
        aVar.y(this.f36197g.f36207a);
        aVar.w(this.f36197g.f36213g);
        eVar2.r(aVar);
        hVar.v(eVar2);
        ByteBuffer t9 = hVar.t();
        bVar.B(hVar);
        bVar.y(t9);
        cVar.D(bVar);
        this.f36195e.D(cVar);
        this.f36194d.l(new Date());
        this.f36194d.r(new Date());
        this.f36194d.o(str);
        this.f36194d.u(1.0f);
        this.f36194d.s(this.f36197g.f36212f);
        long[] jArr = new long[this.f36202l.size()];
        this.f36196f = jArr;
        Arrays.fill(jArr, 1024L);
    }
}
