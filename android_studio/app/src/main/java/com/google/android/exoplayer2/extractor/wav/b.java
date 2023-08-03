package com.google.android.exoplayer2.extractor.wav;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.o0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: WavExtractor.java */
/* loaded from: classes2.dex */
public final class b implements k {

    /* renamed from: i  reason: collision with root package name */
    private static final int f23494i = 10;

    /* renamed from: j  reason: collision with root package name */
    public static final q f23495j = com.google.android.exoplayer2.extractor.wav.a.f23493b;

    /* renamed from: d  reason: collision with root package name */
    private m f23496d;

    /* renamed from: e  reason: collision with root package name */
    private e0 f23497e;

    /* renamed from: f  reason: collision with root package name */
    private InterfaceC0168b f23498f;

    /* renamed from: g  reason: collision with root package name */
    private int f23499g = -1;

    /* renamed from: h  reason: collision with root package name */
    private long f23500h = -1;

    /* compiled from: WavExtractor.java */
    /* loaded from: classes2.dex */
    private static final class a implements InterfaceC0168b {

        /* renamed from: m  reason: collision with root package name */
        private static final int[] f23501m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: n  reason: collision with root package name */
        private static final int[] f23502n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, h0.I, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: a  reason: collision with root package name */
        private final m f23503a;

        /* renamed from: b  reason: collision with root package name */
        private final e0 f23504b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.wav.c f23505c;

        /* renamed from: d  reason: collision with root package name */
        private final int f23506d;

        /* renamed from: e  reason: collision with root package name */
        private final byte[] f23507e;

        /* renamed from: f  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.h0 f23508f;

        /* renamed from: g  reason: collision with root package name */
        private final int f23509g;

        /* renamed from: h  reason: collision with root package name */
        private final Format f23510h;

        /* renamed from: i  reason: collision with root package name */
        private int f23511i;

        /* renamed from: j  reason: collision with root package name */
        private long f23512j;

        /* renamed from: k  reason: collision with root package name */
        private int f23513k;

        /* renamed from: l  reason: collision with root package name */
        private long f23514l;

        public a(m mVar, e0 e0Var, com.google.android.exoplayer2.extractor.wav.c cVar) throws ParserException {
            this.f23503a = mVar;
            this.f23504b = e0Var;
            this.f23505c = cVar;
            int max = Math.max(1, cVar.f23525c / 10);
            this.f23509g = max;
            com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(cVar.f23529g);
            h0Var.y();
            int y9 = h0Var.y();
            this.f23506d = y9;
            int i4 = cVar.f23524b;
            int i10 = (((cVar.f23527e - (i4 * 4)) * 8) / (cVar.f23528f * i4)) + 1;
            if (y9 == i10) {
                int m9 = z0.m(max, y9);
                this.f23507e = new byte[cVar.f23527e * m9];
                this.f23508f = new com.google.android.exoplayer2.util.h0(m9 * h(y9, i4));
                int i11 = ((cVar.f23525c * cVar.f23527e) * 8) / y9;
                this.f23510h = new Format.b().e0(a0.I).G(i11).Z(i11).W(h(max, i4)).H(cVar.f23524b).f0(cVar.f23525c).Y(2).E();
                return;
            }
            StringBuilder sb = new StringBuilder(56);
            sb.append("Expected frames per block: ");
            sb.append(i10);
            sb.append("; got: ");
            sb.append(y9);
            throw new ParserException(sb.toString());
        }

        private void d(byte[] bArr, int i4, com.google.android.exoplayer2.util.h0 h0Var) {
            for (int i10 = 0; i10 < i4; i10++) {
                for (int i11 = 0; i11 < this.f23505c.f23524b; i11++) {
                    e(bArr, i10, i11, h0Var.d());
                }
            }
            int g4 = g(this.f23506d * i4);
            h0Var.S(0);
            h0Var.R(g4);
        }

        private void e(byte[] bArr, int i4, int i10, byte[] bArr2) {
            com.google.android.exoplayer2.extractor.wav.c cVar = this.f23505c;
            int i11 = cVar.f23527e;
            int i12 = cVar.f23524b;
            int i13 = (i4 * i11) + (i10 * 4);
            int i14 = (i12 * 4) + i13;
            int i15 = (i11 / i12) - 4;
            int i16 = (short) (((bArr[i13 + 1] & 255) << 8) | (bArr[i13] & 255));
            int min = Math.min(bArr[i13 + 2] & 255, 88);
            int i17 = f23502n[min];
            int i18 = ((i4 * this.f23506d * i12) + i10) * 2;
            bArr2[i18] = (byte) (i16 & 255);
            bArr2[i18 + 1] = (byte) (i16 >> 8);
            for (int i19 = 0; i19 < i15 * 2; i19++) {
                int i20 = bArr[((i19 / 8) * i12 * 4) + i14 + ((i19 / 2) % 4)] & 255;
                int i21 = i19 % 2 == 0 ? i20 & 15 : i20 >> 4;
                int i22 = ((((i21 & 7) * 2) + 1) * i17) >> 3;
                if ((i21 & 8) != 0) {
                    i22 = -i22;
                }
                i16 = z0.t(i16 + i22, -32768, 32767);
                i18 += i12 * 2;
                bArr2[i18] = (byte) (i16 & 255);
                bArr2[i18 + 1] = (byte) (i16 >> 8);
                int i23 = min + f23501m[i21];
                int[] iArr = f23502n;
                min = z0.t(i23, 0, iArr.length - 1);
                i17 = iArr[min];
            }
        }

        private int f(int i4) {
            return i4 / (this.f23505c.f23524b * 2);
        }

        private int g(int i4) {
            return h(i4, this.f23505c.f23524b);
        }

        private static int h(int i4, int i10) {
            return i4 * 2 * i10;
        }

        private void i(int i4) {
            long f12 = this.f23512j + z0.f1(this.f23514l, 1000000L, this.f23505c.f23525c);
            int g4 = g(i4);
            this.f23504b.e(f12, 1, g4, this.f23513k - g4, null);
            this.f23514l += i4;
            this.f23513k -= g4;
        }

        @Override // com.google.android.exoplayer2.extractor.wav.b.InterfaceC0168b
        public void a(int i4, long j4) {
            this.f23503a.q(new e(this.f23505c, this.f23506d, i4, j4));
            this.f23504b.d(this.f23510h);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0036 -> B:4:0x001c). Please submit an issue!!! */
        @Override // com.google.android.exoplayer2.extractor.wav.b.InterfaceC0168b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean b(com.google.android.exoplayer2.extractor.l r7, long r8) throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.f23509g
                int r1 = r6.f23513k
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.f23506d
                int r0 = com.google.android.exoplayer2.util.z0.m(r0, r1)
                com.google.android.exoplayer2.extractor.wav.c r1 = r6.f23505c
                int r1 = r1.f23527e
                int r0 = r0 * r1
                r1 = 1
                r2 = 0
                int r4 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
                if (r4 != 0) goto L1e
            L1c:
                r2 = 1
                goto L1f
            L1e:
                r2 = 0
            L1f:
                if (r2 != 0) goto L3f
                int r3 = r6.f23511i
                if (r3 >= r0) goto L3f
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r4 = (int) r3
                byte[] r3 = r6.f23507e
                int r5 = r6.f23511i
                int r3 = r7.read(r3, r5, r4)
                r4 = -1
                if (r3 != r4) goto L39
                goto L1c
            L39:
                int r4 = r6.f23511i
                int r4 = r4 + r3
                r6.f23511i = r4
                goto L1f
            L3f:
                int r7 = r6.f23511i
                com.google.android.exoplayer2.extractor.wav.c r8 = r6.f23505c
                int r8 = r8.f23527e
                int r7 = r7 / r8
                if (r7 <= 0) goto L77
                byte[] r8 = r6.f23507e
                com.google.android.exoplayer2.util.h0 r9 = r6.f23508f
                r6.d(r8, r7, r9)
                int r8 = r6.f23511i
                com.google.android.exoplayer2.extractor.wav.c r9 = r6.f23505c
                int r9 = r9.f23527e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f23511i = r8
                com.google.android.exoplayer2.util.h0 r7 = r6.f23508f
                int r7 = r7.f()
                com.google.android.exoplayer2.extractor.e0 r8 = r6.f23504b
                com.google.android.exoplayer2.util.h0 r9 = r6.f23508f
                r8.c(r9, r7)
                int r8 = r6.f23513k
                int r8 = r8 + r7
                r6.f23513k = r8
                int r7 = r6.f(r8)
                int r8 = r6.f23509g
                if (r7 < r8) goto L77
                r6.i(r8)
            L77:
                if (r2 == 0) goto L84
                int r7 = r6.f23513k
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L84
                r6.i(r7)
            L84:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.wav.b.a.b(com.google.android.exoplayer2.extractor.l, long):boolean");
        }

        @Override // com.google.android.exoplayer2.extractor.wav.b.InterfaceC0168b
        public void c(long j4) {
            this.f23511i = 0;
            this.f23512j = j4;
            this.f23513k = 0;
            this.f23514l = 0L;
        }
    }

    /* compiled from: WavExtractor.java */
    /* renamed from: com.google.android.exoplayer2.extractor.wav.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private interface InterfaceC0168b {
        void a(int i4, long j4) throws ParserException;

        boolean b(l lVar, long j4) throws IOException;

        void c(long j4);
    }

    /* compiled from: WavExtractor.java */
    /* loaded from: classes2.dex */
    private static final class c implements InterfaceC0168b {

        /* renamed from: a  reason: collision with root package name */
        private final m f23515a;

        /* renamed from: b  reason: collision with root package name */
        private final e0 f23516b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.wav.c f23517c;

        /* renamed from: d  reason: collision with root package name */
        private final Format f23518d;

        /* renamed from: e  reason: collision with root package name */
        private final int f23519e;

        /* renamed from: f  reason: collision with root package name */
        private long f23520f;

        /* renamed from: g  reason: collision with root package name */
        private int f23521g;

        /* renamed from: h  reason: collision with root package name */
        private long f23522h;

        public c(m mVar, e0 e0Var, com.google.android.exoplayer2.extractor.wav.c cVar, String str, int i4) throws ParserException {
            this.f23515a = mVar;
            this.f23516b = e0Var;
            this.f23517c = cVar;
            int i10 = (cVar.f23524b * cVar.f23528f) / 8;
            if (cVar.f23527e == i10) {
                int i11 = cVar.f23525c;
                int i12 = i11 * i10 * 8;
                int max = Math.max(i10, (i11 * i10) / 10);
                this.f23519e = max;
                this.f23518d = new Format.b().e0(str).G(i12).Z(i12).W(max).H(cVar.f23524b).f0(cVar.f23525c).Y(i4).E();
                return;
            }
            int i13 = cVar.f23527e;
            StringBuilder sb = new StringBuilder(50);
            sb.append("Expected block size: ");
            sb.append(i10);
            sb.append("; got: ");
            sb.append(i13);
            throw new ParserException(sb.toString());
        }

        @Override // com.google.android.exoplayer2.extractor.wav.b.InterfaceC0168b
        public void a(int i4, long j4) {
            this.f23515a.q(new e(this.f23517c, 1, i4, j4));
            this.f23516b.d(this.f23518d);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.b.InterfaceC0168b
        public boolean b(l lVar, long j4) throws IOException {
            int i4;
            com.google.android.exoplayer2.extractor.wav.c cVar;
            int i10;
            int i11;
            long j10 = j4;
            while (true) {
                i4 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                if (i4 <= 0 || (i10 = this.f23521g) >= (i11 = this.f23519e)) {
                    break;
                }
                int b10 = this.f23516b.b(lVar, (int) Math.min(i11 - i10, j10), true);
                if (b10 == -1) {
                    j10 = 0;
                } else {
                    this.f23521g += b10;
                    j10 -= b10;
                }
            }
            int i12 = this.f23517c.f23527e;
            int i13 = this.f23521g / i12;
            if (i13 > 0) {
                int i14 = i13 * i12;
                int i15 = this.f23521g - i14;
                this.f23516b.e(this.f23520f + z0.f1(this.f23522h, 1000000L, cVar.f23525c), 1, i14, i15, null);
                this.f23522h += i13;
                this.f23521g = i15;
            }
            return i4 <= 0;
        }

        @Override // com.google.android.exoplayer2.extractor.wav.b.InterfaceC0168b
        public void c(long j4) {
            this.f23520f = j4;
            this.f23521g = 0;
            this.f23522h = 0L;
        }
    }

    @EnsuresNonNull({"extractorOutput", "trackOutput"})
    private void f() {
        com.google.android.exoplayer2.util.a.k(this.f23497e);
        z0.k(this.f23496d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] g() {
        return new k[]{new b()};
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        InterfaceC0168b interfaceC0168b = this.f23498f;
        if (interfaceC0168b != null) {
            interfaceC0168b.c(j10);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(l lVar) throws IOException {
        return d.a(lVar) != null;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(l lVar, z zVar) throws IOException {
        f();
        if (this.f23498f == null) {
            com.google.android.exoplayer2.extractor.wav.c a10 = d.a(lVar);
            if (a10 != null) {
                int i4 = a10.f23523a;
                if (i4 == 17) {
                    this.f23498f = new a(this.f23496d, this.f23497e, a10);
                } else if (i4 == 6) {
                    this.f23498f = new c(this.f23496d, this.f23497e, a10, a0.J, -1);
                } else if (i4 == 7) {
                    this.f23498f = new c(this.f23496d, this.f23497e, a10, a0.K, -1);
                } else {
                    int a11 = o0.a(i4, a10.f23528f);
                    if (a11 != 0) {
                        this.f23498f = new c(this.f23496d, this.f23497e, a10, a0.I, a11);
                    } else {
                        int i10 = a10.f23523a;
                        StringBuilder sb = new StringBuilder(40);
                        sb.append("Unsupported WAV format type: ");
                        sb.append(i10);
                        throw new ParserException(sb.toString());
                    }
                }
            } else {
                throw new ParserException("Unsupported or unrecognized wav header.");
            }
        }
        if (this.f23499g == -1) {
            Pair<Long, Long> b10 = d.b(lVar);
            this.f23499g = ((Long) b10.first).intValue();
            long longValue = ((Long) b10.second).longValue();
            this.f23500h = longValue;
            this.f23498f.a(this.f23499g, longValue);
        } else if (lVar.getPosition() == 0) {
            lVar.o(this.f23499g);
        }
        com.google.android.exoplayer2.util.a.i(this.f23500h != -1);
        return this.f23498f.b(lVar, this.f23500h - lVar.getPosition()) ? -1 : 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(m mVar) {
        this.f23496d = mVar;
        this.f23497e = mVar.f(0, 1);
        mVar.t();
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }
}
