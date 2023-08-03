package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.ksyun.media.streamer.kit.StreamerConstants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* compiled from: AudioSpecificConfig.java */
@g(objectTypeIndication = 64, tags = {5})
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b {
    public static Map<Integer, Integer> W = new HashMap();
    public static Map<Integer, String> X = new HashMap();
    public int A;
    public int B;
    public boolean C;
    public boolean D;
    public boolean E;
    public int F;
    public boolean G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public boolean V;

    /* renamed from: e  reason: collision with root package name */
    byte[] f36739e;

    /* renamed from: f  reason: collision with root package name */
    public C0289a f36740f;

    /* renamed from: g  reason: collision with root package name */
    public int f36741g;

    /* renamed from: h  reason: collision with root package name */
    public int f36742h;

    /* renamed from: i  reason: collision with root package name */
    public int f36743i;

    /* renamed from: j  reason: collision with root package name */
    public int f36744j;

    /* renamed from: k  reason: collision with root package name */
    public int f36745k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f36746l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f36747m;

    /* renamed from: n  reason: collision with root package name */
    public int f36748n;

    /* renamed from: o  reason: collision with root package name */
    public int f36749o;

    /* renamed from: p  reason: collision with root package name */
    public int f36750p;

    /* renamed from: q  reason: collision with root package name */
    public int f36751q;

    /* renamed from: r  reason: collision with root package name */
    public int f36752r;

    /* renamed from: s  reason: collision with root package name */
    public int f36753s;

    /* renamed from: t  reason: collision with root package name */
    public int f36754t;

    /* renamed from: u  reason: collision with root package name */
    public int f36755u;

    /* renamed from: v  reason: collision with root package name */
    public int f36756v;

    /* renamed from: w  reason: collision with root package name */
    public int f36757w;

    /* renamed from: x  reason: collision with root package name */
    public int f36758x;

    /* renamed from: y  reason: collision with root package name */
    public int f36759y;

    /* renamed from: z  reason: collision with root package name */
    public int f36760z;

    /* compiled from: AudioSpecificConfig.java */
    /* renamed from: com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0289a {

        /* renamed from: i  reason: collision with root package name */
        private static final int f36761i = 0;

        /* renamed from: a  reason: collision with root package name */
        public boolean f36762a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f36763b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f36764c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f36765d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f36766e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f36767f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f36768g;

        public C0289a(int i4, c cVar) {
            int i10;
            this.f36762a = cVar.d();
            this.f36763b = cVar.d();
            this.f36764c = cVar.d();
            this.f36765d = cVar.d();
            boolean d4 = cVar.d();
            this.f36766e = d4;
            if (d4) {
                this.f36767f = cVar.d();
                this.f36768g = cVar.d();
                a(i4, cVar);
            }
            while (cVar.c(4) != 0) {
                int c10 = cVar.c(4);
                if (c10 == 15) {
                    i10 = cVar.c(8);
                    c10 += i10;
                } else {
                    i10 = 0;
                }
                if (i10 == 255) {
                    c10 += cVar.c(16);
                }
                for (int i11 = 0; i11 < c10; i11++) {
                    cVar.c(8);
                }
            }
        }

        public void a(int i4, c cVar) {
            int i10;
            switch (i4) {
                case 1:
                case 2:
                    i10 = 1;
                    break;
                case 3:
                    i10 = 2;
                    break;
                case 4:
                case 5:
                case 6:
                    i10 = 3;
                    break;
                case 7:
                    i10 = 4;
                    break;
                default:
                    i10 = 0;
                    break;
            }
            for (int i11 = 0; i11 < i10; i11++) {
                new b(cVar);
            }
        }
    }

    /* compiled from: AudioSpecificConfig.java */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f36770a;

        /* renamed from: b  reason: collision with root package name */
        public int f36771b;

        /* renamed from: c  reason: collision with root package name */
        public int f36772c;

        /* renamed from: d  reason: collision with root package name */
        public int f36773d;

        /* renamed from: e  reason: collision with root package name */
        public int f36774e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f36775f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f36776g;

        /* renamed from: h  reason: collision with root package name */
        public int f36777h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f36778i;

        /* renamed from: j  reason: collision with root package name */
        public int f36779j;

        /* renamed from: k  reason: collision with root package name */
        public int f36780k;

        /* renamed from: l  reason: collision with root package name */
        public int f36781l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f36782m;

        /* renamed from: n  reason: collision with root package name */
        public boolean f36783n;

        public b(c cVar) {
            this.f36770a = cVar.d();
            this.f36771b = cVar.c(4);
            this.f36772c = cVar.c(4);
            this.f36773d = cVar.c(3);
            this.f36774e = cVar.c(2);
            this.f36775f = cVar.d();
            this.f36776g = cVar.d();
            if (this.f36775f) {
                this.f36777h = cVar.c(2);
                this.f36778i = cVar.d();
                this.f36779j = cVar.c(2);
            }
            if (this.f36776g) {
                this.f36780k = cVar.c(2);
                this.f36781l = cVar.c(2);
                this.f36782m = cVar.d();
            }
            this.f36783n = cVar.d();
        }
    }

    static {
        W.put(0, 96000);
        W.put(1, 88200);
        W.put(2, 64000);
        W.put(3, 48000);
        W.put(4, Integer.valueOf((int) StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE));
        W.put(5, 32000);
        W.put(6, 24000);
        W.put(7, 22050);
        W.put(8, Integer.valueOf((int) com.google.android.exoplayer2.audio.a.f21097g));
        W.put(9, 12000);
        W.put(10, 11025);
        W.put(11, 8000);
        X.put(1, "AAC main");
        X.put(2, "AAC LC");
        X.put(3, "AAC SSR");
        X.put(4, "AAC LTP");
        X.put(5, "SBR");
        X.put(6, "AAC Scalable");
        X.put(7, "TwinVQ");
        X.put(8, "CELP");
        X.put(9, "HVXC");
        X.put(10, "(reserved)");
        X.put(11, "(reserved)");
        X.put(12, "TTSI");
        X.put(13, "Main synthetic");
        X.put(14, "Wavetable synthesis");
        X.put(15, "General MIDI");
        X.put(16, "Algorithmic Synthesis and Audio FX");
        X.put(17, "ER AAC LC");
        X.put(18, "(reserved)");
        X.put(19, "ER AAC LTP");
        X.put(20, "ER AAC Scalable");
        X.put(21, "ER TwinVQ");
        X.put(22, "ER BSAC");
        X.put(23, "ER AAC LD");
        X.put(24, "ER CELP");
        X.put(25, "ER HVXC");
        X.put(26, "ER HILN");
        X.put(27, "ER Parametric");
        X.put(28, "SSC");
        X.put(29, "PS");
        X.put(30, "MPEG Surround");
        X.put(31, "(escape)");
        X.put(32, "Layer-1");
        X.put(33, "Layer-2");
        X.put(34, "Layer-3");
        X.put(35, "DST");
        X.put(36, "ALS");
        X.put(37, "SLS");
        X.put(38, "SLS non-core");
        X.put(39, "ER AAC ELD");
        X.put(40, "SMR Simple");
        X.put(41, "SMR Main");
    }

    private int g() {
        return 0;
    }

    private int i(c cVar) throws IOException {
        int c10 = cVar.c(5);
        return c10 == 31 ? cVar.c(6) + 32 : c10;
    }

    private void n(int i4, int i10, int i11, c cVar) throws IOException {
        this.K = cVar.c(1);
        this.L = cVar.c(2);
        int c10 = cVar.c(1);
        this.M = c10;
        if (c10 == 1) {
            this.N = cVar.c(1);
        }
    }

    private void o(int i4, int i10, int i11, c cVar) throws IOException {
        this.f36756v = cVar.c(1);
        int c10 = cVar.c(1);
        this.f36757w = c10;
        if (c10 == 1) {
            this.f36758x = cVar.c(14);
        }
        this.f36759y = cVar.c(1);
        if (i10 != 0) {
            if (i11 == 6 || i11 == 20) {
                this.f36760z = cVar.c(3);
            }
            if (this.f36759y == 1) {
                if (i11 == 22) {
                    this.A = cVar.c(5);
                    this.B = cVar.c(11);
                }
                if (i11 == 17 || i11 == 19 || i11 == 20 || i11 == 23) {
                    this.C = cVar.d();
                    this.D = cVar.d();
                    this.E = cVar.d();
                }
                this.F = cVar.c(1);
            }
            this.G = true;
            return;
        }
        throw new UnsupportedOperationException("can't parse program_config_element yet");
    }

    private void p(int i4, int i10, int i11, c cVar) throws IOException {
        this.O = cVar.c(1);
        this.P = cVar.c(8);
        this.Q = cVar.c(4);
        this.R = cVar.c(12);
        this.S = cVar.c(2);
    }

    private void q(int i4, int i10, int i11, c cVar) throws IOException {
        int c10 = cVar.c(1);
        this.T = c10;
        if (c10 == 1) {
            this.U = cVar.c(2);
        }
    }

    private void r(int i4, int i10, int i11, c cVar) throws IOException {
        int c10 = cVar.c(2);
        this.I = c10;
        if (c10 != 1) {
            n(i4, i10, i11, cVar);
        }
        if (this.I != 0) {
            p(i4, i10, i11, cVar);
        }
        this.J = cVar.c(1);
        this.V = true;
    }

    private void s(int i4, int i10, int i11, c cVar) throws IOException {
        int c10 = cVar.c(1);
        this.H = c10;
        if (c10 == 1) {
            r(i4, i10, i11, cVar);
        } else {
            q(i4, i10, i11, cVar);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.D == aVar.D && this.C == aVar.C && this.E == aVar.E && this.f36741g == aVar.f36741g && this.f36744j == aVar.f36744j && this.f36758x == aVar.f36758x && this.f36757w == aVar.f36757w && this.f36754t == aVar.f36754t && this.f36753s == aVar.f36753s && this.M == aVar.M && this.f36745k == aVar.f36745k && this.f36750p == aVar.f36750p && this.f36759y == aVar.f36759y && this.F == aVar.F && this.f36749o == aVar.f36749o && this.f36748n == aVar.f36748n && this.f36752r == aVar.f36752r && this.f36756v == aVar.f36756v && this.G == aVar.G && this.S == aVar.S && this.T == aVar.T && this.U == aVar.U && this.R == aVar.R && this.P == aVar.P && this.O == aVar.O && this.Q == aVar.Q && this.L == aVar.L && this.K == aVar.K && this.H == aVar.H && this.f36760z == aVar.f36760z && this.B == aVar.B && this.A == aVar.A && this.J == aVar.J && this.I == aVar.I && this.V == aVar.V && this.f36747m == aVar.f36747m && this.f36751q == aVar.f36751q && this.f36743i == aVar.f36743i && this.f36742h == aVar.f36742h && this.f36746l == aVar.f36746l && this.f36755u == aVar.f36755u && this.N == aVar.N && Arrays.equals(this.f36739e, aVar.f36739e);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        ByteBuffer slice = byteBuffer.slice();
        slice.limit(this.f36787b);
        byteBuffer.position(byteBuffer.position() + this.f36787b);
        byte[] bArr = new byte[this.f36787b];
        this.f36739e = bArr;
        slice.get(bArr);
        slice.rewind();
        c cVar = new c(slice);
        this.f36741g = i(cVar);
        int c10 = cVar.c(4);
        this.f36742h = c10;
        if (c10 == 15) {
            this.f36743i = cVar.c(24);
        }
        this.f36744j = cVar.c(4);
        int i4 = this.f36741g;
        if (i4 != 5 && i4 != 29) {
            this.f36745k = 0;
        } else {
            this.f36745k = 5;
            this.f36746l = true;
            if (i4 == 29) {
                this.f36747m = true;
            }
            int c11 = cVar.c(4);
            this.f36748n = c11;
            if (c11 == 15) {
                this.f36749o = cVar.c(24);
            }
            int i10 = i(cVar);
            this.f36741g = i10;
            if (i10 == 22) {
                this.f36750p = cVar.c(4);
            }
        }
        int i11 = this.f36741g;
        switch (i11) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                o(this.f36742h, this.f36744j, i11, cVar);
                break;
            case 8:
                throw new UnsupportedOperationException("can't parse CelpSpecificConfig yet");
            case 9:
                throw new UnsupportedOperationException("can't parse HvxcSpecificConfig yet");
            case 12:
                throw new UnsupportedOperationException("can't parse TTSSpecificConfig yet");
            case 13:
            case 14:
            case 15:
            case 16:
                throw new UnsupportedOperationException("can't parse StructuredAudioSpecificConfig yet");
            case 24:
                throw new UnsupportedOperationException("can't parse ErrorResilientCelpSpecificConfig yet");
            case 25:
                throw new UnsupportedOperationException("can't parse ErrorResilientHvxcSpecificConfig yet");
            case 26:
            case 27:
                s(this.f36742h, this.f36744j, i11, cVar);
                break;
            case 28:
                throw new UnsupportedOperationException("can't parse SSCSpecificConfig yet");
            case 30:
                this.f36751q = cVar.c(1);
                throw new UnsupportedOperationException("can't parse SpatialSpecificConfig yet");
            case 32:
            case 33:
            case 34:
                throw new UnsupportedOperationException("can't parse MPEG_1_2_SpecificConfig yet");
            case 35:
                throw new UnsupportedOperationException("can't parse DSTSpecificConfig yet");
            case 36:
                this.f36752r = cVar.c(5);
                throw new UnsupportedOperationException("can't parse ALSSpecificConfig yet");
            case 37:
            case 38:
                throw new UnsupportedOperationException("can't parse SLSSpecificConfig yet");
            case 39:
                this.f36740f = new C0289a(this.f36744j, cVar);
                break;
            case 40:
            case 41:
                throw new UnsupportedOperationException("can't parse SymbolicMusicSpecificConfig yet");
        }
        int i12 = this.f36741g;
        if (i12 != 17 && i12 != 39) {
            switch (i12) {
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    if (this.f36745k != 5 || cVar.e() < 16) {
                        return;
                    }
                    int c12 = cVar.c(11);
                    this.f36755u = c12;
                    if (c12 == 695) {
                        int i13 = i(cVar);
                        this.f36745k = i13;
                        if (i13 == 5) {
                            boolean d4 = cVar.d();
                            this.f36746l = d4;
                            if (d4) {
                                int c13 = cVar.c(4);
                                this.f36748n = c13;
                                if (c13 == 15) {
                                    this.f36749o = cVar.c(24);
                                }
                                if (cVar.e() >= 12) {
                                    int c14 = cVar.c(11);
                                    this.f36755u = c14;
                                    if (c14 == 1352) {
                                        this.f36747m = cVar.d();
                                    }
                                }
                            }
                        }
                        if (this.f36745k == 22) {
                            boolean d10 = cVar.d();
                            this.f36746l = d10;
                            if (d10) {
                                int c15 = cVar.c(4);
                                this.f36748n = c15;
                                if (c15 == 15) {
                                    this.f36749o = cVar.c(24);
                                }
                            }
                            this.f36750p = cVar.c(4);
                            return;
                        }
                        return;
                    }
                    return;
            }
        }
        int c16 = cVar.c(2);
        this.f36753s = c16;
        if (c16 != 2 && c16 != 3) {
            if (c16 == 3) {
                int c17 = cVar.c(1);
                this.f36754t = c17;
                if (c17 == 0) {
                    throw new RuntimeException("not implemented");
                }
            }
            if (this.f36745k != 5) {
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("can't parse ErrorProtectionSpecificConfig yet");
    }

    public int h() {
        return this.f36741g;
    }

    public int hashCode() {
        byte[] bArr = this.f36739e;
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((bArr != null ? Arrays.hashCode(bArr) : 0) * 31) + this.f36741g) * 31) + this.f36742h) * 31) + this.f36743i) * 31) + this.f36744j) * 31) + this.f36745k) * 31) + (this.f36746l ? 1 : 0)) * 31) + (this.f36747m ? 1 : 0)) * 31) + this.f36748n) * 31) + this.f36749o) * 31) + this.f36750p) * 31) + this.f36751q) * 31) + this.f36752r) * 31) + this.f36753s) * 31) + this.f36754t) * 31) + this.f36755u) * 31) + this.f36756v) * 31) + this.f36757w) * 31) + this.f36758x) * 31) + this.f36759y) * 31) + this.f36760z) * 31) + this.A) * 31) + this.B) * 31) + (this.C ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + this.F) * 31) + (this.G ? 1 : 0)) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.K) * 31) + this.L) * 31) + this.M) * 31) + this.N) * 31) + this.O) * 31) + this.P) * 31) + this.Q) * 31) + this.R) * 31) + this.S) * 31) + this.T) * 31) + this.U) * 31) + (this.V ? 1 : 0);
    }

    public int j() {
        return this.f36744j;
    }

    public byte[] k() {
        return this.f36739e;
    }

    public int l() {
        return this.f36745k;
    }

    public int m() {
        int i4 = this.f36742h;
        return i4 == 15 ? this.f36743i : W.get(Integer.valueOf(i4)).intValue();
    }

    public ByteBuffer t() {
        ByteBuffer allocate = ByteBuffer.allocate(u());
        com.coremedia.iso.i.m(allocate, 5);
        com.coremedia.iso.i.m(allocate, u() - 2);
        d dVar = new d(allocate);
        dVar.a(this.f36741g, 5);
        dVar.a(this.f36742h, 4);
        if (this.f36742h != 15) {
            dVar.a(this.f36744j, 4);
            return allocate;
        }
        throw new UnsupportedOperationException("can't serialize that yet");
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AudioSpecificConfig");
        sb.append("{configBytes=");
        sb.append(com.coremedia.iso.e.b(this.f36739e));
        sb.append(", audioObjectType=");
        sb.append(this.f36741g);
        sb.append(" (");
        sb.append(X.get(Integer.valueOf(this.f36741g)));
        sb.append(")");
        sb.append(", samplingFrequencyIndex=");
        sb.append(this.f36742h);
        sb.append(" (");
        sb.append(W.get(Integer.valueOf(this.f36742h)));
        sb.append(")");
        sb.append(", samplingFrequency=");
        sb.append(this.f36743i);
        sb.append(", channelConfiguration=");
        sb.append(this.f36744j);
        if (this.f36745k > 0) {
            sb.append(", extensionAudioObjectType=");
            sb.append(this.f36745k);
            sb.append(" (");
            sb.append(X.get(Integer.valueOf(this.f36745k)));
            sb.append(")");
            sb.append(", sbrPresentFlag=");
            sb.append(this.f36746l);
            sb.append(", psPresentFlag=");
            sb.append(this.f36747m);
            sb.append(", extensionSamplingFrequencyIndex=");
            sb.append(this.f36748n);
            sb.append(" (");
            sb.append(W.get(Integer.valueOf(this.f36748n)));
            sb.append(")");
            sb.append(", extensionSamplingFrequency=");
            sb.append(this.f36749o);
            sb.append(", extensionChannelConfiguration=");
            sb.append(this.f36750p);
        }
        sb.append(", syncExtensionType=");
        sb.append(this.f36755u);
        if (this.G) {
            sb.append(", frameLengthFlag=");
            sb.append(this.f36756v);
            sb.append(", dependsOnCoreCoder=");
            sb.append(this.f36757w);
            sb.append(", coreCoderDelay=");
            sb.append(this.f36758x);
            sb.append(", extensionFlag=");
            sb.append(this.f36759y);
            sb.append(", layerNr=");
            sb.append(this.f36760z);
            sb.append(", numOfSubFrame=");
            sb.append(this.A);
            sb.append(", layer_length=");
            sb.append(this.B);
            sb.append(", aacSectionDataResilienceFlag=");
            sb.append(this.C);
            sb.append(", aacScalefactorDataResilienceFlag=");
            sb.append(this.D);
            sb.append(", aacSpectralDataResilienceFlag=");
            sb.append(this.E);
            sb.append(", extensionFlag3=");
            sb.append(this.F);
        }
        if (this.V) {
            sb.append(", isBaseLayer=");
            sb.append(this.H);
            sb.append(", paraMode=");
            sb.append(this.I);
            sb.append(", paraExtensionFlag=");
            sb.append(this.J);
            sb.append(", hvxcVarMode=");
            sb.append(this.K);
            sb.append(", hvxcRateMode=");
            sb.append(this.L);
            sb.append(", erHvxcExtensionFlag=");
            sb.append(this.M);
            sb.append(", var_ScalableFlag=");
            sb.append(this.N);
            sb.append(", hilnQuantMode=");
            sb.append(this.O);
            sb.append(", hilnMaxNumLine=");
            sb.append(this.P);
            sb.append(", hilnSampleRateCode=");
            sb.append(this.Q);
            sb.append(", hilnFrameLength=");
            sb.append(this.R);
            sb.append(", hilnContMode=");
            sb.append(this.S);
            sb.append(", hilnEnhaLayer=");
            sb.append(this.T);
            sb.append(", hilnEnhaQuantMode=");
            sb.append(this.U);
        }
        sb.append('}');
        return sb.toString();
    }

    public int u() {
        if (this.f36741g == 2) {
            return g() + 4;
        }
        throw new UnsupportedOperationException("can't serialize that yet");
    }

    public void v(int i4) {
        this.f36741g = i4;
    }

    public void w(int i4) {
        this.f36744j = i4;
    }

    public void x(int i4) {
        this.f36743i = i4;
    }

    public void y(int i4) {
        this.f36742h = i4;
    }
}
