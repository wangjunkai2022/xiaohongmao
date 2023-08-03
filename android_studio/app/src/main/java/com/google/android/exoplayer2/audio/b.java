package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.z0;
import com.ksyun.media.streamer.kit.StreamerConstants;
import com.qennnsad.aknkaksd.util.a1;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import okio.Utf8;

/* compiled from: Ac3Util.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f21118a = "ec+3";

    /* renamed from: b  reason: collision with root package name */
    public static final int f21119b = 80000;

    /* renamed from: c  reason: collision with root package name */
    public static final int f21120c = 768000;

    /* renamed from: d  reason: collision with root package name */
    public static final int f21121d = 3062500;

    /* renamed from: e  reason: collision with root package name */
    public static final int f21122e = 16;

    /* renamed from: f  reason: collision with root package name */
    public static final int f21123f = 10;

    /* renamed from: g  reason: collision with root package name */
    private static final int f21124g = 256;

    /* renamed from: h  reason: collision with root package name */
    private static final int f21125h = 1536;

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f21126i = {1, 2, 3, 6};

    /* renamed from: j  reason: collision with root package name */
    private static final int[] f21127j = {48000, StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE, 32000};

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f21128k = {24000, 22050, com.google.android.exoplayer2.audio.a.f21097g};

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f21129l = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f21130m = {32, 40, 48, 56, 64, 80, 96, 112, 128, a1.f54532a, 192, 224, 256, 320, com.facebook.imagepipeline.memory.c.f12563b, 448, 512, 576, 640};

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f21131n = {69, 87, 104, 121, 139, 174, com.facebook.imageutils.c.f13394i, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* compiled from: Ac3Util.java */
    /* renamed from: com.google.android.exoplayer2.audio.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0155b {

        /* renamed from: g  reason: collision with root package name */
        public static final int f21132g = -1;

        /* renamed from: h  reason: collision with root package name */
        public static final int f21133h = 0;

        /* renamed from: i  reason: collision with root package name */
        public static final int f21134i = 1;

        /* renamed from: j  reason: collision with root package name */
        public static final int f21135j = 2;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final String f21136a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21137b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21138c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21139d;

        /* renamed from: e  reason: collision with root package name */
        public final int f21140e;

        /* renamed from: f  reason: collision with root package name */
        public final int f21141f;

        /* compiled from: Ac3Util.java */
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* renamed from: com.google.android.exoplayer2.audio.b$b$a */
        /* loaded from: classes2.dex */
        public @interface a {
        }

        private C0155b(@Nullable String str, int i4, int i10, int i11, int i12, int i13) {
            this.f21136a = str;
            this.f21137b = i4;
            this.f21139d = i10;
            this.f21138c = i11;
            this.f21140e = i12;
            this.f21141f = i13;
        }
    }

    private b() {
    }

    public static int a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i4 = position; i4 <= limit; i4++) {
            if ((z0.P(byteBuffer, i4 + 4) & (-2)) == -126718022) {
                return i4 - position;
            }
        }
        return -1;
    }

    private static int b(int i4, int i10) {
        int i11 = i10 / 2;
        if (i4 >= 0) {
            int[] iArr = f21127j;
            if (i4 >= iArr.length || i10 < 0) {
                return -1;
            }
            int[] iArr2 = f21131n;
            if (i11 >= iArr2.length) {
                return -1;
            }
            int i12 = iArr[i4];
            if (i12 == 44100) {
                return (iArr2[i11] + (i10 % 2)) * 2;
            }
            int i13 = f21130m[i11];
            return i12 == 32000 ? i13 * 6 : i13 * 4;
        }
        return -1;
    }

    public static Format c(com.google.android.exoplayer2.util.h0 h0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        int i4 = f21127j[(h0Var.G() & 192) >> 6];
        int G = h0Var.G();
        int i10 = f21129l[(G & 56) >> 3];
        if ((G & 4) != 0) {
            i10++;
        }
        return new Format.b().S(str).e0(com.google.android.exoplayer2.util.a0.L).H(i10).f0(i4).L(drmInitData).V(str2).E();
    }

    public static int d(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f21126i[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return f21125h;
    }

    public static C0155b e(com.google.android.exoplayer2.util.g0 g0Var) {
        String str;
        int i4;
        int i10;
        int i11;
        int i12;
        int i13;
        int h4;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int e4 = g0Var.e();
        g0Var.s(40);
        boolean z9 = g0Var.h(5) > 10;
        g0Var.q(e4);
        int i19 = -1;
        if (z9) {
            g0Var.s(16);
            int h10 = g0Var.h(2);
            if (h10 == 0) {
                i19 = 0;
            } else if (h10 == 1) {
                i19 = 1;
            } else if (h10 == 2) {
                i19 = 2;
            }
            g0Var.s(3);
            int h11 = (g0Var.h(11) + 1) * 2;
            int h12 = g0Var.h(2);
            if (h12 == 3) {
                i15 = f21128k[g0Var.h(2)];
                h4 = 3;
                i14 = 6;
            } else {
                h4 = g0Var.h(2);
                i14 = f21126i[h4];
                i15 = f21127j[h12];
            }
            int i20 = i14 * 256;
            int h13 = g0Var.h(3);
            boolean g4 = g0Var.g();
            int i21 = f21129l[h13] + (g4 ? 1 : 0);
            g0Var.s(10);
            if (g0Var.g()) {
                g0Var.s(8);
            }
            if (h13 == 0) {
                g0Var.s(5);
                if (g0Var.g()) {
                    g0Var.s(8);
                }
            }
            if (i19 == 1 && g0Var.g()) {
                g0Var.s(16);
            }
            if (g0Var.g()) {
                if (h13 > 2) {
                    g0Var.s(2);
                }
                if ((h13 & 1) == 0 || h13 <= 2) {
                    i17 = 6;
                } else {
                    i17 = 6;
                    g0Var.s(6);
                }
                if ((h13 & 4) != 0) {
                    g0Var.s(i17);
                }
                if (g4 && g0Var.g()) {
                    g0Var.s(5);
                }
                if (i19 == 0) {
                    if (g0Var.g()) {
                        i18 = 6;
                        g0Var.s(6);
                    } else {
                        i18 = 6;
                    }
                    if (h13 == 0 && g0Var.g()) {
                        g0Var.s(i18);
                    }
                    if (g0Var.g()) {
                        g0Var.s(i18);
                    }
                    int h14 = g0Var.h(2);
                    if (h14 == 1) {
                        g0Var.s(5);
                    } else if (h14 == 2) {
                        g0Var.s(12);
                    } else if (h14 == 3) {
                        int h15 = g0Var.h(5);
                        if (g0Var.g()) {
                            g0Var.s(5);
                            if (g0Var.g()) {
                                g0Var.s(4);
                            }
                            if (g0Var.g()) {
                                g0Var.s(4);
                            }
                            if (g0Var.g()) {
                                g0Var.s(4);
                            }
                            if (g0Var.g()) {
                                g0Var.s(4);
                            }
                            if (g0Var.g()) {
                                g0Var.s(4);
                            }
                            if (g0Var.g()) {
                                g0Var.s(4);
                            }
                            if (g0Var.g()) {
                                g0Var.s(4);
                            }
                            if (g0Var.g()) {
                                if (g0Var.g()) {
                                    g0Var.s(4);
                                }
                                if (g0Var.g()) {
                                    g0Var.s(4);
                                }
                            }
                        }
                        if (g0Var.g()) {
                            g0Var.s(5);
                            if (g0Var.g()) {
                                g0Var.s(7);
                                if (g0Var.g()) {
                                    g0Var.s(8);
                                }
                            }
                        }
                        g0Var.s((h15 + 2) * 8);
                        g0Var.c();
                    }
                    if (h13 < 2) {
                        if (g0Var.g()) {
                            g0Var.s(14);
                        }
                        if (h13 == 0 && g0Var.g()) {
                            g0Var.s(14);
                        }
                    }
                    if (g0Var.g()) {
                        if (h4 == 0) {
                            g0Var.s(5);
                        } else {
                            for (int i22 = 0; i22 < i14; i22++) {
                                if (g0Var.g()) {
                                    g0Var.s(5);
                                }
                            }
                        }
                    }
                }
            }
            if (g0Var.g()) {
                g0Var.s(5);
                if (h13 == 2) {
                    g0Var.s(4);
                }
                if (h13 >= 6) {
                    g0Var.s(2);
                }
                if (g0Var.g()) {
                    g0Var.s(8);
                }
                if (h13 == 0 && g0Var.g()) {
                    g0Var.s(8);
                }
                if (h12 < 3) {
                    g0Var.r();
                }
            }
            if (i19 == 0 && h4 != 3) {
                g0Var.r();
            }
            if (i19 == 2 && (h4 == 3 || g0Var.g())) {
                i16 = 6;
                g0Var.s(6);
            } else {
                i16 = 6;
            }
            str = (g0Var.g() && g0Var.h(i16) == 1 && g0Var.h(8) == 1) ? com.google.android.exoplayer2.util.a0.N : com.google.android.exoplayer2.util.a0.M;
            i12 = i19;
            i13 = i20;
            i4 = h11;
            i10 = i15;
            i11 = i21;
        } else {
            g0Var.s(32);
            int h16 = g0Var.h(2);
            String str2 = h16 == 3 ? null : com.google.android.exoplayer2.util.a0.L;
            int b10 = b(h16, g0Var.h(6));
            g0Var.s(8);
            int h17 = g0Var.h(3);
            if ((h17 & 1) != 0 && h17 != 1) {
                g0Var.s(2);
            }
            if ((h17 & 4) != 0) {
                g0Var.s(2);
            }
            if (h17 == 2) {
                g0Var.s(2);
            }
            int[] iArr = f21127j;
            str = str2;
            i4 = b10;
            i10 = h16 < iArr.length ? iArr[h16] : -1;
            i11 = f21129l[h17] + (g0Var.g() ? 1 : 0);
            i12 = -1;
            i13 = f21125h;
        }
        return new C0155b(str, i12, i11, i10, i4, i13);
    }

    public static int f(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        return b((bArr[4] & 192) >> 6, bArr[4] & Utf8.REPLACEMENT_BYTE);
    }

    public static Format g(com.google.android.exoplayer2.util.h0 h0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        h0Var.T(2);
        int i4 = f21127j[(h0Var.G() & 192) >> 6];
        int G = h0Var.G();
        int i10 = f21129l[(G & 14) >> 1];
        if ((G & 1) != 0) {
            i10++;
        }
        if (((h0Var.G() & 30) >> 1) > 0 && (2 & h0Var.G()) != 0) {
            i10 += 2;
        }
        return new Format.b().S(str).e0((h0Var.a() <= 0 || (h0Var.G() & 1) == 0) ? com.google.android.exoplayer2.util.a0.M : com.google.android.exoplayer2.util.a0.N).H(i10).f0(i4).L(drmInitData).V(str2).E();
    }

    public static int h(ByteBuffer byteBuffer, int i4) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i4) + ((byteBuffer.get((byteBuffer.position() + i4) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int i(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            return 40 << ((bArr[(bArr[7] & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
        }
        return 0;
    }
}
