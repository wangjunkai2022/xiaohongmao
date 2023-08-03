package com.google.android.exoplayer2.metadata.id3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.metadata.g;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.g0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: Id3Decoder.java */
/* loaded from: classes2.dex */
public final class b extends g {

    /* renamed from: b  reason: collision with root package name */
    public static final a f24126b = com.google.android.exoplayer2.metadata.id3.a.f24125a;

    /* renamed from: c  reason: collision with root package name */
    private static final String f24127c = "Id3Decoder";

    /* renamed from: d  reason: collision with root package name */
    public static final int f24128d = 4801587;

    /* renamed from: e  reason: collision with root package name */
    public static final int f24129e = 10;

    /* renamed from: f  reason: collision with root package name */
    private static final int f24130f = 128;

    /* renamed from: g  reason: collision with root package name */
    private static final int f24131g = 64;

    /* renamed from: h  reason: collision with root package name */
    private static final int f24132h = 32;

    /* renamed from: i  reason: collision with root package name */
    private static final int f24133i = 8;

    /* renamed from: j  reason: collision with root package name */
    private static final int f24134j = 4;

    /* renamed from: k  reason: collision with root package name */
    private static final int f24135k = 64;

    /* renamed from: l  reason: collision with root package name */
    private static final int f24136l = 2;

    /* renamed from: m  reason: collision with root package name */
    private static final int f24137m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f24138n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f24139o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f24140p = 2;

    /* renamed from: q  reason: collision with root package name */
    private static final int f24141q = 3;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f24142a;

    /* compiled from: Id3Decoder.java */
    /* loaded from: classes2.dex */
    public interface a {
        boolean a(int i4, int i10, int i11, int i12, int i13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Id3Decoder.java */
    /* renamed from: com.google.android.exoplayer2.metadata.id3.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0170b {

        /* renamed from: a  reason: collision with root package name */
        private final int f24143a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f24144b;

        /* renamed from: c  reason: collision with root package name */
        private final int f24145c;

        public C0170b(int i4, boolean z9, int i10) {
            this.f24143a = i4;
            this.f24144b = z9;
            this.f24145c = i10;
        }
    }

    public b() {
        this(null);
    }

    private static int A(h0 h0Var, int i4) {
        byte[] d4 = h0Var.d();
        int e4 = h0Var.e();
        int i10 = e4;
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= e4 + i4) {
                return i4;
            }
            if ((d4[i10] & 255) == 255 && d4[i11] == 0) {
                System.arraycopy(d4, i10 + 2, d4, i11, (i4 - (i10 - e4)) - 2);
                i4--;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        if ((r10 & 1) != 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0086, code lost:
        if ((r10 & 128) != 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean B(com.google.android.exoplayer2.util.h0 r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r18.e()
        L8:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Laf
            r4 = 1
            r5 = r20
            if (r3 < r5) goto Lab
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L22
            int r7 = r18.o()     // Catch: java.lang.Throwable -> Laf
            long r8 = r18.I()     // Catch: java.lang.Throwable -> Laf
            int r10 = r18.M()     // Catch: java.lang.Throwable -> Laf
            goto L2c
        L22:
            int r7 = r18.J()     // Catch: java.lang.Throwable -> Laf
            int r8 = r18.J()     // Catch: java.lang.Throwable -> Laf
            long r8 = (long) r8
            r10 = 0
        L2c:
            r11 = 0
            if (r7 != 0) goto L3a
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3a
            if (r10 != 0) goto L3a
            r1.S(r2)
            return r4
        L3a:
            r7 = 4
            if (r0 != r7) goto L6b
            if (r21 != 0) goto L6b
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r15 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r15 == 0) goto L4b
            r1.S(r2)
            return r6
        L4b:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L6b:
            if (r0 != r7) goto L7b
            r3 = r10 & 64
            if (r3 == 0) goto L73
            r3 = 1
            goto L74
        L73:
            r3 = 0
        L74:
            r7 = r10 & 1
            if (r7 == 0) goto L79
            goto L8b
        L79:
            r4 = 0
            goto L8b
        L7b:
            if (r0 != r3) goto L89
            r3 = r10 & 32
            if (r3 == 0) goto L83
            r3 = 1
            goto L84
        L83:
            r3 = 0
        L84:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L79
            goto L8b
        L89:
            r3 = 0
            goto L79
        L8b:
            if (r4 == 0) goto L8f
            int r3 = r3 + 4
        L8f:
            long r3 = (long) r3
            int r7 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r7 >= 0) goto L98
            r1.S(r2)
            return r6
        L98:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Laf
            long r3 = (long) r3
            int r7 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r7 >= 0) goto La5
            r1.S(r2)
            return r6
        La5:
            int r3 = (int) r8
            r1.T(r3)     // Catch: java.lang.Throwable -> Laf
            goto L8
        Lab:
            r1.S(r2)
            return r4
        Laf:
            r0 = move-exception
            r1.S(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.b.B(com.google.android.exoplayer2.util.h0, int, int, boolean):boolean");
    }

    private static byte[] d(byte[] bArr, int i4, int i10) {
        if (i10 <= i4) {
            return z0.f27748f;
        }
        return Arrays.copyOfRange(bArr, i4, i10);
    }

    private static ApicFrame f(h0 h0Var, int i4, int i10) throws UnsupportedEncodingException {
        int y9;
        String str;
        int G = h0Var.G();
        String v9 = v(G);
        int i11 = i4 - 1;
        byte[] bArr = new byte[i11];
        h0Var.k(bArr, 0, i11);
        if (i10 == 2) {
            String valueOf = String.valueOf(com.google.common.base.c.g(new String(bArr, 0, 3, "ISO-8859-1")));
            str = valueOf.length() != 0 ? "image/".concat(valueOf) : new String("image/");
            if ("image/jpg".equals(str)) {
                str = a0.F0;
            }
            y9 = 2;
        } else {
            y9 = y(bArr, 0);
            String g4 = com.google.common.base.c.g(new String(bArr, 0, y9, "ISO-8859-1"));
            if (g4.indexOf(47) == -1) {
                if (g4.length() != 0) {
                    str = "image/".concat(g4);
                } else {
                    g4 = new String("image/");
                }
            }
            str = g4;
        }
        int i12 = y9 + 2;
        int x9 = x(bArr, i12, G);
        return new ApicFrame(str, new String(bArr, i12, x9 - i12, v9), bArr[y9 + 1] & 255, d(bArr, x9 + u(G), i11));
    }

    private static BinaryFrame g(h0 h0Var, int i4, String str) {
        byte[] bArr = new byte[i4];
        h0Var.k(bArr, 0, i4);
        return new BinaryFrame(str, bArr);
    }

    private static ChapterFrame h(h0 h0Var, int i4, int i10, boolean z9, int i11, @Nullable a aVar) throws UnsupportedEncodingException {
        int e4 = h0Var.e();
        int y9 = y(h0Var.d(), e4);
        String str = new String(h0Var.d(), e4, y9 - e4, "ISO-8859-1");
        h0Var.S(y9 + 1);
        int o9 = h0Var.o();
        int o10 = h0Var.o();
        long I = h0Var.I();
        long j4 = I == 4294967295L ? -1L : I;
        long I2 = h0Var.I();
        long j10 = I2 == 4294967295L ? -1L : I2;
        ArrayList arrayList = new ArrayList();
        int i12 = e4 + i4;
        while (h0Var.e() < i12) {
            Id3Frame k10 = k(i10, h0Var, z9, i11, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new ChapterFrame(str, o9, o10, j4, j10, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    private static ChapterTocFrame i(h0 h0Var, int i4, int i10, boolean z9, int i11, @Nullable a aVar) throws UnsupportedEncodingException {
        int e4 = h0Var.e();
        int y9 = y(h0Var.d(), e4);
        String str = new String(h0Var.d(), e4, y9 - e4, "ISO-8859-1");
        h0Var.S(y9 + 1);
        int G = h0Var.G();
        boolean z10 = (G & 2) != 0;
        boolean z11 = (G & 1) != 0;
        int G2 = h0Var.G();
        String[] strArr = new String[G2];
        for (int i12 = 0; i12 < G2; i12++) {
            int e10 = h0Var.e();
            int y10 = y(h0Var.d(), e10);
            strArr[i12] = new String(h0Var.d(), e10, y10 - e10, "ISO-8859-1");
            h0Var.S(y10 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i13 = e4 + i4;
        while (h0Var.e() < i13) {
            Id3Frame k10 = k(i10, h0Var, z9, i11, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new ChapterTocFrame(str, z10, z11, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    @Nullable
    private static CommentFrame j(h0 h0Var, int i4) throws UnsupportedEncodingException {
        if (i4 < 4) {
            return null;
        }
        int G = h0Var.G();
        String v9 = v(G);
        byte[] bArr = new byte[3];
        h0Var.k(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i10 = i4 - 4;
        byte[] bArr2 = new byte[i10];
        h0Var.k(bArr2, 0, i10);
        int x9 = x(bArr2, 0, G);
        String str2 = new String(bArr2, 0, x9, v9);
        int u9 = x9 + u(G);
        return new CommentFrame(str, str2, p(bArr2, u9, x(bArr2, u9, G), v9));
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x0190, code lost:
        if (r13 == 67) goto L98;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.metadata.id3.Id3Frame k(int r19, com.google.android.exoplayer2.util.h0 r20, boolean r21, int r22, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.id3.b.a r23) {
        /*
            Method dump skipped, instructions count: 568
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.b.k(int, com.google.android.exoplayer2.util.h0, boolean, int, com.google.android.exoplayer2.metadata.id3.b$a):com.google.android.exoplayer2.metadata.id3.Id3Frame");
    }

    private static GeobFrame l(h0 h0Var, int i4) throws UnsupportedEncodingException {
        int G = h0Var.G();
        String v9 = v(G);
        int i10 = i4 - 1;
        byte[] bArr = new byte[i10];
        h0Var.k(bArr, 0, i10);
        int y9 = y(bArr, 0);
        String str = new String(bArr, 0, y9, "ISO-8859-1");
        int i11 = y9 + 1;
        int x9 = x(bArr, i11, G);
        String p9 = p(bArr, i11, x9, v9);
        int u9 = x9 + u(G);
        int x10 = x(bArr, u9, G);
        return new GeobFrame(str, p9, p(bArr, u9, x10, v9), d(bArr, x10 + u(G), i10));
    }

    @Nullable
    private static C0170b m(h0 h0Var) {
        if (h0Var.a() < 10) {
            w.n(f24127c, "Data too short to be an ID3 tag");
            return null;
        }
        int J = h0Var.J();
        boolean z9 = false;
        if (J != 4801587) {
            String valueOf = String.valueOf(String.format("%06X", Integer.valueOf(J)));
            w.n(f24127c, valueOf.length() != 0 ? "Unexpected first three bytes of ID3 tag header: 0x".concat(valueOf) : new String("Unexpected first three bytes of ID3 tag header: 0x"));
            return null;
        }
        int G = h0Var.G();
        h0Var.T(1);
        int G2 = h0Var.G();
        int F = h0Var.F();
        if (G == 2) {
            if ((G2 & 64) != 0) {
                w.n(f24127c, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (G == 3) {
            if ((G2 & 64) != 0) {
                int o9 = h0Var.o();
                h0Var.T(o9);
                F -= o9 + 4;
            }
        } else if (G != 4) {
            StringBuilder sb = new StringBuilder(57);
            sb.append("Skipped ID3 tag with unsupported majorVersion=");
            sb.append(G);
            w.n(f24127c, sb.toString());
            return null;
        } else {
            if ((G2 & 64) != 0) {
                int F2 = h0Var.F();
                h0Var.T(F2 - 4);
                F -= F2;
            }
            if ((G2 & 16) != 0) {
                F -= 10;
            }
        }
        if (G < 4 && (G2 & 128) != 0) {
            z9 = true;
        }
        return new C0170b(G, z9, F);
    }

    private static MlltFrame n(h0 h0Var, int i4) {
        int M = h0Var.M();
        int J = h0Var.J();
        int J2 = h0Var.J();
        int G = h0Var.G();
        int G2 = h0Var.G();
        g0 g0Var = new g0();
        g0Var.n(h0Var);
        int i10 = ((i4 - 10) * 8) / (G + G2);
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int h4 = g0Var.h(G);
            int h10 = g0Var.h(G2);
            iArr[i11] = h4;
            iArr2[i11] = h10;
        }
        return new MlltFrame(M, J, J2, iArr, iArr2);
    }

    private static PrivFrame o(h0 h0Var, int i4) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i4];
        h0Var.k(bArr, 0, i4);
        int y9 = y(bArr, 0);
        return new PrivFrame(new String(bArr, 0, y9, "ISO-8859-1"), d(bArr, y9 + 1, i4));
    }

    private static String p(byte[] bArr, int i4, int i10, String str) throws UnsupportedEncodingException {
        return (i10 <= i4 || i10 > bArr.length) ? "" : new String(bArr, i4, i10 - i4, str);
    }

    @Nullable
    private static TextInformationFrame q(h0 h0Var, int i4, String str) throws UnsupportedEncodingException {
        if (i4 < 1) {
            return null;
        }
        int G = h0Var.G();
        String v9 = v(G);
        int i10 = i4 - 1;
        byte[] bArr = new byte[i10];
        h0Var.k(bArr, 0, i10);
        return new TextInformationFrame(str, null, new String(bArr, 0, x(bArr, 0, G), v9));
    }

    @Nullable
    private static TextInformationFrame r(h0 h0Var, int i4) throws UnsupportedEncodingException {
        if (i4 < 1) {
            return null;
        }
        int G = h0Var.G();
        String v9 = v(G);
        int i10 = i4 - 1;
        byte[] bArr = new byte[i10];
        h0Var.k(bArr, 0, i10);
        int x9 = x(bArr, 0, G);
        String str = new String(bArr, 0, x9, v9);
        int u9 = x9 + u(G);
        return new TextInformationFrame("TXXX", str, p(bArr, u9, x(bArr, u9, G), v9));
    }

    private static UrlLinkFrame s(h0 h0Var, int i4, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i4];
        h0Var.k(bArr, 0, i4);
        return new UrlLinkFrame(str, null, new String(bArr, 0, y(bArr, 0), "ISO-8859-1"));
    }

    @Nullable
    private static UrlLinkFrame t(h0 h0Var, int i4) throws UnsupportedEncodingException {
        if (i4 < 1) {
            return null;
        }
        int G = h0Var.G();
        String v9 = v(G);
        int i10 = i4 - 1;
        byte[] bArr = new byte[i10];
        h0Var.k(bArr, 0, i10);
        int x9 = x(bArr, 0, G);
        String str = new String(bArr, 0, x9, v9);
        int u9 = x9 + u(G);
        return new UrlLinkFrame("WXXX", str, p(bArr, u9, y(bArr, u9), "ISO-8859-1"));
    }

    private static int u(int i4) {
        return (i4 == 0 || i4 == 3) ? 1 : 2;
    }

    private static String v(int i4) {
        return i4 != 1 ? i4 != 2 ? i4 != 3 ? "ISO-8859-1" : "UTF-8" : h9.c.f69066d : "UTF-16";
    }

    private static String w(int i4, int i10, int i11, int i12, int i13) {
        return i4 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
    }

    private static int x(byte[] bArr, int i4, int i10) {
        int y9 = y(bArr, i4);
        if (i10 == 0 || i10 == 3) {
            return y9;
        }
        while (y9 < bArr.length - 1) {
            if (y9 % 2 == 0 && bArr[y9 + 1] == 0) {
                return y9;
            }
            y9 = y(bArr, y9 + 1);
        }
        return bArr.length;
    }

    private static int y(byte[] bArr, int i4) {
        while (i4 < bArr.length) {
            if (bArr[i4] == 0) {
                return i4;
            }
            i4++;
        }
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean z(int i4, int i10, int i11, int i12, int i13) {
        return false;
    }

    @Override // com.google.android.exoplayer2.metadata.g
    @Nullable
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        return e(byteBuffer.array(), byteBuffer.limit());
    }

    @Nullable
    public Metadata e(byte[] bArr, int i4) {
        ArrayList arrayList = new ArrayList();
        h0 h0Var = new h0(bArr, i4);
        C0170b m9 = m(h0Var);
        if (m9 == null) {
            return null;
        }
        int e4 = h0Var.e();
        int i10 = m9.f24143a == 2 ? 6 : 10;
        int i11 = m9.f24145c;
        if (m9.f24144b) {
            i11 = A(h0Var, m9.f24145c);
        }
        h0Var.R(e4 + i11);
        boolean z9 = false;
        if (!B(h0Var, m9.f24143a, i10, false)) {
            if (m9.f24143a != 4 || !B(h0Var, 4, i10, true)) {
                int i12 = m9.f24143a;
                StringBuilder sb = new StringBuilder(56);
                sb.append("Failed to validate ID3 tag with majorVersion=");
                sb.append(i12);
                w.n(f24127c, sb.toString());
                return null;
            }
            z9 = true;
        }
        while (h0Var.a() >= i10) {
            Id3Frame k10 = k(m9.f24143a, h0Var, z9, i10, this.f24142a);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new Metadata(arrayList);
    }

    public b(@Nullable a aVar) {
        this.f24142a = aVar;
    }
}
