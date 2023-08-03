package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.ksyun.media.streamer.kit.StreamerConstants;

/* compiled from: MpegAudioUtil.java */
/* loaded from: classes2.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f21225a = 4096;

    /* renamed from: j  reason: collision with root package name */
    private static final int f21234j = 384;

    /* renamed from: k  reason: collision with root package name */
    private static final int f21235k = 1152;

    /* renamed from: l  reason: collision with root package name */
    private static final int f21236l = 1152;

    /* renamed from: m  reason: collision with root package name */
    private static final int f21237m = 576;

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f21227c = {com.google.android.exoplayer2.util.a0.E, com.google.android.exoplayer2.util.a0.F, com.google.android.exoplayer2.util.a0.D};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f21228d = {StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE, 48000, 32000};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f21229e = {32000, 64000, 96000, 128000, 160000, c0.f21169a, 224000, com.google.android.exoplayer2.audio.a.f21099i, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f21230f = {32000, 48000, 56000, 64000, b.f21119b, 96000, 112000, 128000, 144000, 160000, 176000, c0.f21169a, 224000, com.google.android.exoplayer2.audio.a.f21099i};

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f21231g = {32000, 48000, 56000, 64000, b.f21119b, 96000, 112000, 128000, 160000, c0.f21169a, 224000, com.google.android.exoplayer2.audio.a.f21099i, 320000, 384000};

    /* renamed from: b  reason: collision with root package name */
    public static final int f21226b = 40000;

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f21232h = {32000, f21226b, 48000, 56000, 64000, b.f21119b, 96000, 112000, 128000, 160000, c0.f21169a, 224000, com.google.android.exoplayer2.audio.a.f21099i, 320000};

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f21233i = {8000, com.google.android.exoplayer2.audio.a.f21097g, 24000, 32000, f21226b, 48000, 56000, 64000, b.f21119b, 96000, 112000, 128000, 144000, 160000};

    /* compiled from: MpegAudioUtil.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f21238a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public String f21239b;

        /* renamed from: c  reason: collision with root package name */
        public int f21240c;

        /* renamed from: d  reason: collision with root package name */
        public int f21241d;

        /* renamed from: e  reason: collision with root package name */
        public int f21242e;

        /* renamed from: f  reason: collision with root package name */
        public int f21243f;

        /* renamed from: g  reason: collision with root package name */
        public int f21244g;

        public boolean a(int i4) {
            int i10;
            int i11;
            int i12;
            int i13;
            if (!g0.l(i4) || (i10 = (i4 >>> 19) & 3) == 1 || (i11 = (i4 >>> 17) & 3) == 0 || (i12 = (i4 >>> 12) & 15) == 0 || i12 == 15 || (i13 = (i4 >>> 10) & 3) == 3) {
                return false;
            }
            this.f21238a = i10;
            this.f21239b = g0.f21227c[3 - i11];
            int i14 = g0.f21228d[i13];
            this.f21241d = i14;
            if (i10 == 2) {
                this.f21241d = i14 / 2;
            } else if (i10 == 0) {
                this.f21241d = i14 / 4;
            }
            int i15 = (i4 >>> 9) & 1;
            this.f21244g = g0.k(i10, i11);
            if (i11 == 3) {
                int i16 = i10 == 3 ? g0.f21229e[i12 - 1] : g0.f21230f[i12 - 1];
                this.f21243f = i16;
                this.f21240c = (((i16 * 12) / this.f21241d) + i15) * 4;
            } else {
                if (i10 == 3) {
                    int i17 = i11 == 2 ? g0.f21231g[i12 - 1] : g0.f21232h[i12 - 1];
                    this.f21243f = i17;
                    this.f21240c = ((i17 * 144) / this.f21241d) + i15;
                } else {
                    int i18 = g0.f21233i[i12 - 1];
                    this.f21243f = i18;
                    this.f21240c = (((i11 == 1 ? 72 : 144) * i18) / this.f21241d) + i15;
                }
            }
            this.f21242e = ((i4 >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }
    }

    private g0() {
    }

    public static int j(int i4) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        if (!l(i4) || (i10 = (i4 >>> 19) & 3) == 1 || (i11 = (i4 >>> 17) & 3) == 0 || (i12 = (i4 >>> 12) & 15) == 0 || i12 == 15 || (i13 = (i4 >>> 10) & 3) == 3) {
            return -1;
        }
        int i15 = f21228d[i13];
        if (i10 == 2) {
            i15 /= 2;
        } else if (i10 == 0) {
            i15 /= 4;
        }
        int i16 = (i4 >>> 9) & 1;
        if (i11 == 3) {
            return ((((i10 == 3 ? f21229e[i12 - 1] : f21230f[i12 - 1]) * 12) / i15) + i16) * 4;
        }
        if (i10 == 3) {
            i14 = i11 == 2 ? f21231g[i12 - 1] : f21232h[i12 - 1];
        } else {
            i14 = f21233i[i12 - 1];
        }
        if (i10 == 3) {
            return ((i14 * 144) / i15) + i16;
        }
        return (((i11 == 1 ? 72 : 144) * i14) / i15) + i16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(int i4, int i10) {
        if (i10 == 1) {
            if (i4 == 3) {
                return 1152;
            }
            return f21237m;
        } else if (i10 != 2) {
            if (i10 == 3) {
                return 384;
            }
            throw new IllegalArgumentException();
        } else {
            return 1152;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(int i4) {
        return (i4 & (-2097152)) == -2097152;
    }

    public static int m(int i4) {
        int i10;
        int i11;
        if (!l(i4) || (i10 = (i4 >>> 19) & 3) == 1 || (i11 = (i4 >>> 17) & 3) == 0) {
            return -1;
        }
        int i12 = (i4 >>> 12) & 15;
        int i13 = (i4 >>> 10) & 3;
        if (i12 == 0 || i12 == 15 || i13 == 3) {
            return -1;
        }
        return k(i10, i11);
    }
}
