package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: AtomParsers.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f22638a = "AtomParsers";

    /* renamed from: b  reason: collision with root package name */
    private static final int f22639b = 1986618469;

    /* renamed from: c  reason: collision with root package name */
    private static final int f22640c = 1936684398;

    /* renamed from: d  reason: collision with root package name */
    private static final int f22641d = 1952807028;

    /* renamed from: e  reason: collision with root package name */
    private static final int f22642e = 1935832172;

    /* renamed from: f  reason: collision with root package name */
    private static final int f22643f = 1937072756;

    /* renamed from: g  reason: collision with root package name */
    private static final int f22644g = 1668047728;

    /* renamed from: h  reason: collision with root package name */
    private static final int f22645h = 1835365473;

    /* renamed from: i  reason: collision with root package name */
    private static final int f22646i = 1835299937;

    /* renamed from: j  reason: collision with root package name */
    private static final int f22647j = 4;

    /* renamed from: k  reason: collision with root package name */
    private static final byte[] f22648k = z0.u0("OpusHead");

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f22649a;

        /* renamed from: b  reason: collision with root package name */
        public int f22650b;

        /* renamed from: c  reason: collision with root package name */
        public int f22651c;

        /* renamed from: d  reason: collision with root package name */
        public long f22652d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f22653e;

        /* renamed from: f  reason: collision with root package name */
        private final h0 f22654f;

        /* renamed from: g  reason: collision with root package name */
        private final h0 f22655g;

        /* renamed from: h  reason: collision with root package name */
        private int f22656h;

        /* renamed from: i  reason: collision with root package name */
        private int f22657i;

        public a(h0 h0Var, h0 h0Var2, boolean z9) {
            this.f22655g = h0Var;
            this.f22654f = h0Var2;
            this.f22653e = z9;
            h0Var2.S(12);
            this.f22649a = h0Var2.K();
            h0Var.S(12);
            this.f22657i = h0Var.K();
            com.google.android.exoplayer2.util.a.j(h0Var.o() == 1, "first_chunk must be 1");
            this.f22650b = -1;
        }

        public boolean a() {
            int i4 = this.f22650b + 1;
            this.f22650b = i4;
            if (i4 == this.f22649a) {
                return false;
            }
            this.f22652d = this.f22653e ? this.f22654f.L() : this.f22654f.I();
            if (this.f22650b == this.f22656h) {
                this.f22651c = this.f22655g.K();
                this.f22655g.T(4);
                int i10 = this.f22657i - 1;
                this.f22657i = i10;
                this.f22656h = i10 > 0 ? this.f22655g.K() - 1 : -1;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* renamed from: com.google.android.exoplayer2.extractor.mp4.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0166b {
        int a();

        int b();

        int c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: e  reason: collision with root package name */
        public static final int f22658e = 8;

        /* renamed from: a  reason: collision with root package name */
        public final p[] f22659a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public Format f22660b;

        /* renamed from: c  reason: collision with root package name */
        public int f22661c;

        /* renamed from: d  reason: collision with root package name */
        public int f22662d = 0;

        public c(int i4) {
            this.f22659a = new p[i4];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    public static final class d implements InterfaceC0166b {

        /* renamed from: a  reason: collision with root package name */
        private final int f22663a;

        /* renamed from: b  reason: collision with root package name */
        private final int f22664b;

        /* renamed from: c  reason: collision with root package name */
        private final h0 f22665c;

        public d(a.b bVar, Format format) {
            h0 h0Var = bVar.f22637w1;
            this.f22665c = h0Var;
            h0Var.S(12);
            int K = h0Var.K();
            if (a0.I.equals(format.sampleMimeType)) {
                int k02 = z0.k0(format.pcmEncoding, format.channelCount);
                if (K == 0 || K % k02 != 0) {
                    StringBuilder sb = new StringBuilder(88);
                    sb.append("Audio sample size mismatch. stsd sample size: ");
                    sb.append(k02);
                    sb.append(", stsz sample size: ");
                    sb.append(K);
                    w.n(b.f22638a, sb.toString());
                    K = k02;
                }
            }
            this.f22663a = K == 0 ? -1 : K;
            this.f22664b = h0Var.K();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.InterfaceC0166b
        public int a() {
            int i4 = this.f22663a;
            return i4 == -1 ? this.f22665c.K() : i4;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.InterfaceC0166b
        public int b() {
            return this.f22663a;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.InterfaceC0166b
        public int c() {
            return this.f22664b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    public static final class e implements InterfaceC0166b {

        /* renamed from: a  reason: collision with root package name */
        private final h0 f22666a;

        /* renamed from: b  reason: collision with root package name */
        private final int f22667b;

        /* renamed from: c  reason: collision with root package name */
        private final int f22668c;

        /* renamed from: d  reason: collision with root package name */
        private int f22669d;

        /* renamed from: e  reason: collision with root package name */
        private int f22670e;

        public e(a.b bVar) {
            h0 h0Var = bVar.f22637w1;
            this.f22666a = h0Var;
            h0Var.S(12);
            this.f22668c = h0Var.K() & 255;
            this.f22667b = h0Var.K();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.InterfaceC0166b
        public int a() {
            int i4 = this.f22668c;
            if (i4 == 8) {
                return this.f22666a.G();
            }
            if (i4 == 16) {
                return this.f22666a.M();
            }
            int i10 = this.f22669d;
            this.f22669d = i10 + 1;
            if (i10 % 2 == 0) {
                int G = this.f22666a.G();
                this.f22670e = G;
                return (G & com.google.android.exoplayer2.extractor.ts.a0.A) >> 4;
            }
            return this.f22670e & 15;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.InterfaceC0166b
        public int b() {
            return -1;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.InterfaceC0166b
        public int c() {
            return this.f22667b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        private final int f22671a;

        /* renamed from: b  reason: collision with root package name */
        private final long f22672b;

        /* renamed from: c  reason: collision with root package name */
        private final int f22673c;

        public f(int i4, long j4, int i10) {
            this.f22671a = i4;
            this.f22672b = j4;
            this.f22673c = i10;
        }
    }

    private b() {
    }

    public static Pair<Metadata, Metadata> A(a.b bVar) {
        h0 h0Var = bVar.f22637w1;
        h0Var.S(8);
        Metadata metadata = null;
        Metadata metadata2 = null;
        while (h0Var.a() >= 8) {
            int e4 = h0Var.e();
            int o9 = h0Var.o();
            int o10 = h0Var.o();
            if (o10 == 1835365473) {
                h0Var.S(e4);
                metadata = B(h0Var, e4 + o9);
            } else if (o10 == 1936553057) {
                h0Var.S(e4);
                metadata2 = t(h0Var, e4 + o9);
            }
            h0Var.S(e4 + o9);
        }
        return Pair.create(metadata, metadata2);
    }

    @Nullable
    private static Metadata B(h0 h0Var, int i4) {
        h0Var.T(8);
        d(h0Var);
        while (h0Var.e() < i4) {
            int e4 = h0Var.e();
            int o9 = h0Var.o();
            if (h0Var.o() == 1768715124) {
                h0Var.S(e4);
                return k(h0Var, e4 + o9);
            }
            h0Var.S(e4 + o9);
        }
        return null;
    }

    private static void C(h0 h0Var, int i4, int i10, int i11, int i12, int i13, @Nullable DrmInitData drmInitData, c cVar, int i14) throws ParserException {
        DrmInitData drmInitData2;
        List<byte[]> list;
        String str;
        List<byte[]> list2;
        String str2;
        String str3;
        int i15 = i10;
        int i16 = i11;
        DrmInitData drmInitData3 = drmInitData;
        h0Var.S(i15 + 8 + 8);
        h0Var.T(16);
        int M = h0Var.M();
        int M2 = h0Var.M();
        h0Var.T(50);
        int e4 = h0Var.e();
        String str4 = null;
        int i17 = i4;
        if (i17 == 1701733238) {
            Pair<Integer, p> r9 = r(h0Var, i15, i16);
            if (r9 != null) {
                i17 = ((Integer) r9.first).intValue();
                drmInitData3 = drmInitData3 == null ? null : drmInitData3.copyWithSchemeType(((p) r9.second).f22825b);
                cVar.f22659a[i14] = (p) r9.second;
            }
            h0Var.S(e4);
        }
        List<byte[]> list3 = null;
        String str5 = i17 == 1831958048 ? a0.f27463q : i17 == 1211250227 ? a0.f27447i : null;
        float f10 = 1.0f;
        int i18 = -1;
        boolean z9 = false;
        byte[] bArr = null;
        while (true) {
            if (e4 - i15 >= i16) {
                drmInitData2 = drmInitData3;
                list = list3;
                break;
            }
            h0Var.S(e4);
            int e10 = h0Var.e();
            drmInitData2 = drmInitData3;
            int o9 = h0Var.o();
            if (o9 == 0) {
                list = list3;
                if (h0Var.e() - i15 == i16) {
                    break;
                }
            } else {
                list = list3;
            }
            com.google.android.exoplayer2.util.a.j(o9 > 0, "childAtomSize should be positive");
            int o10 = h0Var.o();
            if (o10 == 1635148611) {
                com.google.android.exoplayer2.util.a.i(str5 == null);
                h0Var.S(e10 + 8);
                com.google.android.exoplayer2.video.a b10 = com.google.android.exoplayer2.video.a.b(h0Var);
                list2 = b10.f27852a;
                cVar.f22661c = b10.f27853b;
                if (!z9) {
                    f10 = b10.f27856e;
                }
                str2 = b10.f27857f;
                str3 = "video/avc";
            } else if (o10 == 1752589123) {
                com.google.android.exoplayer2.util.a.i(str5 == null);
                h0Var.S(e10 + 8);
                com.google.android.exoplayer2.video.e a10 = com.google.android.exoplayer2.video.e.a(h0Var);
                list2 = a10.f27909a;
                cVar.f22661c = a10.f27910b;
                str2 = a10.f27911c;
                str3 = a0.f27451k;
            } else {
                if (o10 == 1685480259 || o10 == 1685485123) {
                    com.google.android.exoplayer2.video.c a11 = com.google.android.exoplayer2.video.c.a(h0Var);
                    if (a11 != null) {
                        str4 = a11.f27891c;
                        str5 = a0.f27475w;
                    }
                } else {
                    if (o10 == 1987076931) {
                        com.google.android.exoplayer2.util.a.i(str5 == null);
                        str = i17 == 1987063864 ? a0.f27453l : a0.f27455m;
                    } else if (o10 == 1635135811) {
                        com.google.android.exoplayer2.util.a.i(str5 == null);
                        str = a0.f27457n;
                    } else if (o10 == 1681012275) {
                        com.google.android.exoplayer2.util.a.i(str5 == null);
                        str5 = a0.f27447i;
                    } else {
                        if (o10 == 1702061171) {
                            com.google.android.exoplayer2.util.a.i(str5 == null);
                            Pair<String, byte[]> h4 = h(h0Var, e10);
                            String str6 = (String) h4.first;
                            byte[] bArr2 = (byte[]) h4.second;
                            list3 = bArr2 != null ? ImmutableList.of(bArr2) : list;
                            str5 = str6;
                        } else if (o10 == 1885434736) {
                            f10 = p(h0Var, e10);
                            list3 = list;
                            z9 = true;
                        } else if (o10 == 1937126244) {
                            bArr = q(h0Var, e10, o9);
                        } else if (o10 == 1936995172) {
                            int G = h0Var.G();
                            h0Var.T(3);
                            if (G == 0) {
                                int G2 = h0Var.G();
                                if (G2 == 0) {
                                    list3 = list;
                                    i18 = 0;
                                } else if (G2 == 1) {
                                    list3 = list;
                                    i18 = 1;
                                } else if (G2 == 2) {
                                    list3 = list;
                                    i18 = 2;
                                } else if (G2 == 3) {
                                    list3 = list;
                                    i18 = 3;
                                }
                            }
                        }
                        e4 += o9;
                        i15 = i10;
                        i16 = i11;
                        drmInitData3 = drmInitData2;
                    }
                    str5 = str;
                }
                list3 = list;
                e4 += o9;
                i15 = i10;
                i16 = i11;
                drmInitData3 = drmInitData2;
            }
            list3 = list2;
            str5 = str3;
            str4 = str2;
            e4 += o9;
            i15 = i10;
            i16 = i11;
            drmInitData3 = drmInitData2;
        }
        if (str5 == null) {
            return;
        }
        cVar.f22660b = new Format.b().R(i12).e0(str5).I(str4).j0(M).Q(M2).a0(f10).d0(i13).b0(bArr).h0(i18).T(list).L(drmInitData2).E();
    }

    private static boolean a(long[] jArr, long j4, long j10, long j11) {
        int length = jArr.length - 1;
        return jArr[0] <= j10 && j10 < jArr[z0.t(4, 0, length)] && jArr[z0.t(jArr.length - 4, 0, length)] < j11 && j11 <= j4;
    }

    private static int b(h0 h0Var, int i4, int i10) {
        int e4 = h0Var.e();
        while (e4 - i4 < i10) {
            h0Var.S(e4);
            int o9 = h0Var.o();
            com.google.android.exoplayer2.util.a.j(o9 > 0, "childAtomSize should be positive");
            if (h0Var.o() == 1702061171) {
                return e4;
            }
            e4 += o9;
        }
        return -1;
    }

    private static int c(int i4) {
        if (i4 == f22640c) {
            return 1;
        }
        if (i4 == f22639b) {
            return 2;
        }
        if (i4 == f22641d || i4 == f22642e || i4 == f22643f || i4 == f22644g) {
            return 3;
        }
        return i4 == 1835365473 ? 5 : -1;
    }

    public static void d(h0 h0Var) {
        int e4 = h0Var.e();
        h0Var.T(4);
        if (h0Var.o() != 1751411826) {
            e4 += 4;
        }
        h0Var.S(e4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void e(com.google.android.exoplayer2.util.h0 r20, int r21, int r22, int r23, int r24, java.lang.String r25, boolean r26, @androidx.annotation.Nullable com.google.android.exoplayer2.drm.DrmInitData r27, com.google.android.exoplayer2.extractor.mp4.b.c r28, int r29) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 758
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.b.e(com.google.android.exoplayer2.util.h0, int, int, int, int, java.lang.String, boolean, com.google.android.exoplayer2.drm.DrmInitData, com.google.android.exoplayer2.extractor.mp4.b$c, int):void");
    }

    @Nullable
    static Pair<Integer, p> f(h0 h0Var, int i4, int i10) {
        int i11 = i4 + 8;
        String str = null;
        Integer num = null;
        int i12 = -1;
        int i13 = 0;
        while (i11 - i4 < i10) {
            h0Var.S(i11);
            int o9 = h0Var.o();
            int o10 = h0Var.o();
            if (o10 == 1718775137) {
                num = Integer.valueOf(h0Var.o());
            } else if (o10 == 1935894637) {
                h0Var.T(4);
                str = h0Var.D(4);
            } else if (o10 == 1935894633) {
                i12 = i11;
                i13 = o9;
            }
            i11 += o9;
        }
        if (com.google.android.exoplayer2.i.E1.equals(str) || com.google.android.exoplayer2.i.F1.equals(str) || com.google.android.exoplayer2.i.G1.equals(str) || com.google.android.exoplayer2.i.H1.equals(str)) {
            com.google.android.exoplayer2.util.a.l(num, "frma atom is mandatory");
            com.google.android.exoplayer2.util.a.j(i12 != -1, "schi atom is mandatory");
            return Pair.create(num, (p) com.google.android.exoplayer2.util.a.l(s(h0Var, i12, i13, str), "tenc atom is mandatory"));
        }
        return null;
    }

    @Nullable
    private static Pair<long[], long[]> g(a.C0165a c0165a) {
        a.b h4 = c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.f22605p0);
        if (h4 == null) {
            return null;
        }
        h0 h0Var = h4.f22637w1;
        h0Var.S(8);
        int c10 = com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o());
        int K = h0Var.K();
        long[] jArr = new long[K];
        long[] jArr2 = new long[K];
        for (int i4 = 0; i4 < K; i4++) {
            jArr[i4] = c10 == 1 ? h0Var.L() : h0Var.I();
            jArr2[i4] = c10 == 1 ? h0Var.z() : h0Var.o();
            if (h0Var.C() == 1) {
                h0Var.T(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair<String, byte[]> h(h0 h0Var, int i4) {
        h0Var.S(i4 + 8 + 4);
        h0Var.T(1);
        i(h0Var);
        h0Var.T(2);
        int G = h0Var.G();
        if ((G & 128) != 0) {
            h0Var.T(2);
        }
        if ((G & 64) != 0) {
            h0Var.T(h0Var.M());
        }
        if ((G & 32) != 0) {
            h0Var.T(2);
        }
        h0Var.T(1);
        i(h0Var);
        String h4 = a0.h(h0Var.G());
        if (!a0.D.equals(h4) && !a0.Q.equals(h4) && !a0.R.equals(h4)) {
            h0Var.T(12);
            h0Var.T(1);
            int i10 = i(h0Var);
            byte[] bArr = new byte[i10];
            h0Var.k(bArr, 0, i10);
            return Pair.create(h4, bArr);
        }
        return Pair.create(h4, null);
    }

    private static int i(h0 h0Var) {
        int G = h0Var.G();
        int i4 = G & 127;
        while ((G & 128) == 128) {
            G = h0Var.G();
            i4 = (i4 << 7) | (G & 127);
        }
        return i4;
    }

    private static int j(h0 h0Var) {
        h0Var.S(16);
        return h0Var.o();
    }

    @Nullable
    private static Metadata k(h0 h0Var, int i4) {
        h0Var.T(8);
        ArrayList arrayList = new ArrayList();
        while (h0Var.e() < i4) {
            Metadata.Entry c10 = h.c(h0Var);
            if (c10 != null) {
                arrayList.add(c10);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair<Long, String> l(h0 h0Var) {
        h0Var.S(8);
        int c10 = com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o());
        h0Var.T(c10 == 0 ? 8 : 16);
        long I = h0Var.I();
        h0Var.T(c10 == 0 ? 4 : 8);
        int M = h0Var.M();
        StringBuilder sb = new StringBuilder(3);
        sb.append((char) (((M >> 10) & 31) + 96));
        sb.append((char) (((M >> 5) & 31) + 96));
        sb.append((char) ((M & 31) + 96));
        return Pair.create(Long.valueOf(I), sb.toString());
    }

    @Nullable
    public static Metadata m(a.C0165a c0165a) {
        a.b h4 = c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.f22611r0);
        a.b h10 = c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.f22570d1);
        a.b h11 = c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.f22573e1);
        if (h4 == null || h10 == null || h11 == null || j(h4.f22637w1) != f22646i) {
            return null;
        }
        h0 h0Var = h10.f22637w1;
        h0Var.S(12);
        int o9 = h0Var.o();
        String[] strArr = new String[o9];
        for (int i4 = 0; i4 < o9; i4++) {
            int o10 = h0Var.o();
            h0Var.T(4);
            strArr[i4] = h0Var.D(o10 - 8);
        }
        h0 h0Var2 = h11.f22637w1;
        h0Var2.S(8);
        ArrayList arrayList = new ArrayList();
        while (h0Var2.a() > 8) {
            int e4 = h0Var2.e();
            int o11 = h0Var2.o();
            int o12 = h0Var2.o() - 1;
            if (o12 >= 0 && o12 < o9) {
                MdtaMetadataEntry f10 = h.f(h0Var2, e4 + o11, strArr[o12]);
                if (f10 != null) {
                    arrayList.add(f10);
                }
            } else {
                StringBuilder sb = new StringBuilder(52);
                sb.append("Skipped metadata with unknown key index: ");
                sb.append(o12);
                w.n(f22638a, sb.toString());
            }
            h0Var2.S(e4 + o11);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void n(h0 h0Var, int i4, int i10, int i11, c cVar) {
        h0Var.S(i10 + 8 + 8);
        if (i4 == 1835365492) {
            h0Var.A();
            String A = h0Var.A();
            if (A != null) {
                cVar.f22660b = new Format.b().R(i11).e0(A).E();
            }
        }
    }

    private static long o(h0 h0Var) {
        h0Var.S(8);
        h0Var.T(com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o()) != 0 ? 16 : 8);
        return h0Var.I();
    }

    private static float p(h0 h0Var, int i4) {
        h0Var.S(i4 + 8);
        return h0Var.K() / h0Var.K();
    }

    @Nullable
    private static byte[] q(h0 h0Var, int i4, int i10) {
        int i11 = i4 + 8;
        while (i11 - i4 < i10) {
            h0Var.S(i11);
            int o9 = h0Var.o();
            if (h0Var.o() == 1886547818) {
                return Arrays.copyOfRange(h0Var.d(), i11, o9 + i11);
            }
            i11 += o9;
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, p> r(h0 h0Var, int i4, int i10) {
        Pair<Integer, p> f10;
        int e4 = h0Var.e();
        while (e4 - i4 < i10) {
            h0Var.S(e4);
            int o9 = h0Var.o();
            com.google.android.exoplayer2.util.a.j(o9 > 0, "childAtomSize should be positive");
            if (h0Var.o() == 1936289382 && (f10 = f(h0Var, e4, o9)) != null) {
                return f10;
            }
            e4 += o9;
        }
        return null;
    }

    @Nullable
    private static p s(h0 h0Var, int i4, int i10, String str) {
        int i11;
        int i12;
        int i13 = i4 + 8;
        while (true) {
            byte[] bArr = null;
            if (i13 - i4 >= i10) {
                return null;
            }
            h0Var.S(i13);
            int o9 = h0Var.o();
            if (h0Var.o() == 1952804451) {
                int c10 = com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o());
                h0Var.T(1);
                if (c10 == 0) {
                    h0Var.T(1);
                    i12 = 0;
                    i11 = 0;
                } else {
                    int G = h0Var.G();
                    i11 = G & 15;
                    i12 = (G & com.google.android.exoplayer2.extractor.ts.a0.A) >> 4;
                }
                boolean z9 = h0Var.G() == 1;
                int G2 = h0Var.G();
                byte[] bArr2 = new byte[16];
                h0Var.k(bArr2, 0, 16);
                if (z9 && G2 == 0) {
                    int G3 = h0Var.G();
                    bArr = new byte[G3];
                    h0Var.k(bArr, 0, G3);
                }
                return new p(z9, str, G2, bArr2, i12, i11, bArr);
            }
            i13 += o9;
        }
    }

    @Nullable
    private static Metadata t(h0 h0Var, int i4) {
        h0Var.T(12);
        while (h0Var.e() < i4) {
            int e4 = h0Var.e();
            int o9 = h0Var.o();
            if (h0Var.o() == 1935766900) {
                if (o9 < 14) {
                    return null;
                }
                h0Var.T(5);
                int G = h0Var.G();
                if (G == 12 || G == 13) {
                    float f10 = G == 12 ? 240.0f : 120.0f;
                    h0Var.T(1);
                    return new Metadata(new SmtaMetadataEntry(f10, h0Var.G()));
                }
                return null;
            }
            h0Var.S(e4 + o9);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x043c A[EDGE_INSN: B:208:0x043c->B:170:0x043c ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.extractor.mp4.r u(com.google.android.exoplayer2.extractor.mp4.o r37, com.google.android.exoplayer2.extractor.mp4.a.C0165a r38, com.google.android.exoplayer2.extractor.w r39) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 1329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.b.u(com.google.android.exoplayer2.extractor.mp4.o, com.google.android.exoplayer2.extractor.mp4.a$a, com.google.android.exoplayer2.extractor.w):com.google.android.exoplayer2.extractor.mp4.r");
    }

    private static c v(h0 h0Var, int i4, int i10, String str, @Nullable DrmInitData drmInitData, boolean z9) throws ParserException {
        int i11;
        h0Var.S(12);
        int o9 = h0Var.o();
        c cVar = new c(o9);
        for (int i12 = 0; i12 < o9; i12++) {
            int e4 = h0Var.e();
            int o10 = h0Var.o();
            com.google.android.exoplayer2.util.a.j(o10 > 0, "childAtomSize should be positive");
            int o11 = h0Var.o();
            if (o11 == 1635148593 || o11 == 1635148595 || o11 == 1701733238 || o11 == 1831958048 || o11 == 1836070006 || o11 == 1752589105 || o11 == 1751479857 || o11 == 1932670515 || o11 == 1211250227 || o11 == 1987063864 || o11 == 1987063865 || o11 == 1635135537 || o11 == 1685479798 || o11 == 1685479729 || o11 == 1685481573 || o11 == 1685481521) {
                i11 = e4;
                C(h0Var, o11, i11, o10, i4, i10, drmInitData, cVar, i12);
            } else if (o11 == 1836069985 || o11 == 1701733217 || o11 == 1633889587 || o11 == 1700998451 || o11 == 1633889588 || o11 == 1685353315 || o11 == 1685353317 || o11 == 1685353320 || o11 == 1685353324 || o11 == 1935764850 || o11 == 1935767394 || o11 == 1819304813 || o11 == 1936684916 || o11 == 1953984371 || o11 == 778924082 || o11 == 778924083 || o11 == 1835557169 || o11 == 1835560241 || o11 == 1634492771 || o11 == 1634492791 || o11 == 1970037111 || o11 == 1332770163 || o11 == 1716281667) {
                i11 = e4;
                e(h0Var, o11, e4, o10, i4, str, z9, drmInitData, cVar, i12);
            } else {
                if (o11 == 1414810956 || o11 == 1954034535 || o11 == 2004251764 || o11 == 1937010800 || o11 == 1664495672) {
                    w(h0Var, o11, e4, o10, i4, str, cVar);
                } else if (o11 == 1835365492) {
                    n(h0Var, o11, e4, i4, cVar);
                } else if (o11 == 1667329389) {
                    cVar.f22660b = new Format.b().R(i4).e0(a0.f27480y0).E();
                }
                i11 = e4;
            }
            h0Var.S(i11 + o10);
        }
        return cVar;
    }

    private static void w(h0 h0Var, int i4, int i10, int i11, int i12, String str, c cVar) {
        h0Var.S(i10 + 8 + 8);
        String str2 = a0.f27464q0;
        ImmutableList immutableList = null;
        long j4 = Long.MAX_VALUE;
        if (i4 != 1414810956) {
            if (i4 == 1954034535) {
                int i13 = (i11 - 8) - 8;
                byte[] bArr = new byte[i13];
                h0Var.k(bArr, 0, i13);
                immutableList = ImmutableList.of(bArr);
                str2 = a0.f27466r0;
            } else if (i4 == 2004251764) {
                str2 = a0.f27468s0;
            } else if (i4 == 1937010800) {
                j4 = 0;
            } else if (i4 == 1664495672) {
                cVar.f22662d = 1;
                str2 = a0.f27470t0;
            } else {
                throw new IllegalStateException();
            }
        }
        cVar.f22660b = new Format.b().R(i12).e0(str2).V(str).i0(j4).T(immutableList).E();
    }

    private static f x(h0 h0Var) {
        boolean z9;
        h0Var.S(8);
        int c10 = com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o());
        h0Var.T(c10 == 0 ? 8 : 16);
        int o9 = h0Var.o();
        h0Var.T(4);
        int e4 = h0Var.e();
        int i4 = c10 == 0 ? 4 : 8;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 >= i4) {
                z9 = true;
                break;
            } else if (h0Var.d()[e4 + i11] != -1) {
                z9 = false;
                break;
            } else {
                i11++;
            }
        }
        long j4 = com.google.android.exoplayer2.i.f23649b;
        if (z9) {
            h0Var.T(i4);
        } else {
            long I = c10 == 0 ? h0Var.I() : h0Var.L();
            if (I != 0) {
                j4 = I;
            }
        }
        h0Var.T(16);
        int o10 = h0Var.o();
        int o11 = h0Var.o();
        h0Var.T(4);
        int o12 = h0Var.o();
        int o13 = h0Var.o();
        if (o10 == 0 && o11 == 65536 && o12 == -65536 && o13 == 0) {
            i10 = 90;
        } else if (o10 == 0 && o11 == -65536 && o12 == 65536 && o13 == 0) {
            i10 = com.facebook.imagepipeline.common.e.f12206f;
        } else if (o10 == -65536 && o11 == 0 && o12 == 0 && o13 == -65536) {
            i10 = com.facebook.imagepipeline.common.e.f12205e;
        }
        return new f(o9, j4, i10);
    }

    @Nullable
    private static o y(a.C0165a c0165a, a.b bVar, long j4, @Nullable DrmInitData drmInitData, boolean z9, boolean z10) throws ParserException {
        a.b bVar2;
        long j10;
        long[] jArr;
        long[] jArr2;
        a.C0165a g4;
        Pair<long[], long[]> g10;
        a.C0165a c0165a2 = (a.C0165a) com.google.android.exoplayer2.util.a.g(c0165a.g(com.google.android.exoplayer2.extractor.mp4.a.f22575f0));
        int c10 = c(j(((a.b) com.google.android.exoplayer2.util.a.g(c0165a2.h(com.google.android.exoplayer2.extractor.mp4.a.f22611r0))).f22637w1));
        if (c10 == -1) {
            return null;
        }
        f x9 = x(((a.b) com.google.android.exoplayer2.util.a.g(c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.f22599n0))).f22637w1);
        long j11 = com.google.android.exoplayer2.i.f23649b;
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            bVar2 = bVar;
            j10 = x9.f22672b;
        } else {
            bVar2 = bVar;
            j10 = j4;
        }
        long o9 = o(bVar2.f22637w1);
        if (j10 != com.google.android.exoplayer2.i.f23649b) {
            j11 = z0.f1(j10, 1000000L, o9);
        }
        long j12 = j11;
        Pair<Long, String> l10 = l(((a.b) com.google.android.exoplayer2.util.a.g(c0165a2.h(com.google.android.exoplayer2.extractor.mp4.a.f22608q0))).f22637w1);
        c v9 = v(((a.b) com.google.android.exoplayer2.util.a.g(((a.C0165a) com.google.android.exoplayer2.util.a.g(((a.C0165a) com.google.android.exoplayer2.util.a.g(c0165a2.g(com.google.android.exoplayer2.extractor.mp4.a.f22578g0))).g(com.google.android.exoplayer2.extractor.mp4.a.f22581h0))).h(com.google.android.exoplayer2.extractor.mp4.a.f22614s0))).f22637w1, x9.f22671a, x9.f22673c, (String) l10.second, drmInitData, z10);
        if (z9 || (g4 = c0165a.g(com.google.android.exoplayer2.extractor.mp4.a.f22602o0)) == null || (g10 = g(g4)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            jArr2 = (long[]) g10.second;
            jArr = (long[]) g10.first;
        }
        if (v9.f22660b == null) {
            return null;
        }
        return new o(x9.f22671a, c10, ((Long) l10.first).longValue(), o9, j12, v9.f22660b, v9.f22662d, v9.f22659a, v9.f22661c, jArr, jArr2);
    }

    public static List<r> z(a.C0165a c0165a, com.google.android.exoplayer2.extractor.w wVar, long j4, @Nullable DrmInitData drmInitData, boolean z9, boolean z10, com.google.common.base.q<o, o> qVar) throws ParserException {
        o apply;
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < c0165a.f22636y1.size(); i4++) {
            a.C0165a c0165a2 = c0165a.f22636y1.get(i4);
            if (c0165a2.f22633a == 1953653099 && (apply = qVar.apply(y(c0165a2, (a.b) com.google.android.exoplayer2.util.a.g(c0165a.h(com.google.android.exoplayer2.extractor.mp4.a.f22569d0)), j4, drmInitData, z9, z10))) != null) {
                arrayList.add(u(apply, (a.C0165a) com.google.android.exoplayer2.util.a.g(((a.C0165a) com.google.android.exoplayer2.util.a.g(((a.C0165a) com.google.android.exoplayer2.util.a.g(c0165a2.g(com.google.android.exoplayer2.extractor.mp4.a.f22575f0))).g(com.google.android.exoplayer2.extractor.mp4.a.f22578g0))).g(com.google.android.exoplayer2.extractor.mp4.a.f22581h0)), wVar));
            }
        }
        return arrayList;
    }
}
