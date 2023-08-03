package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.ParserException;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: AacUtil.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f21091a = "AacUtil";

    /* renamed from: b  reason: collision with root package name */
    public static final int f21092b = 1024;

    /* renamed from: c  reason: collision with root package name */
    public static final int f21093c = 1024;

    /* renamed from: d  reason: collision with root package name */
    public static final int f21094d = 2048;

    /* renamed from: e  reason: collision with root package name */
    public static final int f21095e = 512;

    /* renamed from: f  reason: collision with root package name */
    public static final int f21096f = 100000;

    /* renamed from: h  reason: collision with root package name */
    public static final int f21098h = 7000;

    /* renamed from: i  reason: collision with root package name */
    public static final int f21099i = 256000;

    /* renamed from: j  reason: collision with root package name */
    public static final int f21100j = 8000;

    /* renamed from: k  reason: collision with root package name */
    private static final int f21101k = 15;

    /* renamed from: m  reason: collision with root package name */
    private static final int f21103m = -1;

    /* renamed from: o  reason: collision with root package name */
    private static final String f21105o = "mp4a.40.";

    /* renamed from: p  reason: collision with root package name */
    public static final int f21106p = 2;

    /* renamed from: q  reason: collision with root package name */
    public static final int f21107q = 5;

    /* renamed from: r  reason: collision with root package name */
    public static final int f21108r = 22;

    /* renamed from: s  reason: collision with root package name */
    public static final int f21109s = 23;

    /* renamed from: t  reason: collision with root package name */
    public static final int f21110t = 29;

    /* renamed from: u  reason: collision with root package name */
    private static final int f21111u = 31;

    /* renamed from: v  reason: collision with root package name */
    public static final int f21112v = 42;

    /* renamed from: g  reason: collision with root package name */
    public static final int f21097g = 16000;

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f21102l = {96000, 88200, 64000, 48000, StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE, 32000, 24000, 22050, f21097g, 12000, 11025, 8000, 7350};

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f21104n = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* compiled from: AacUtil.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: AacUtil.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f21113a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21114b;

        /* renamed from: c  reason: collision with root package name */
        public final String f21115c;

        private c(int i4, int i10, String str) {
            this.f21113a = i4;
            this.f21114b = i10;
            this.f21115c = str;
        }
    }

    private a() {
    }

    public static byte[] a(int i4, int i10) {
        int i11 = 0;
        int i12 = 0;
        int i13 = -1;
        while (true) {
            int[] iArr = f21102l;
            if (i12 >= iArr.length) {
                break;
            }
            if (i4 == iArr[i12]) {
                i13 = i12;
            }
            i12++;
        }
        int i14 = -1;
        while (true) {
            int[] iArr2 = f21104n;
            if (i11 >= iArr2.length) {
                break;
            }
            if (i10 == iArr2[i11]) {
                i14 = i11;
            }
            i11++;
        }
        if (i4 != -1 && i14 != -1) {
            return b(2, i13, i14);
        }
        StringBuilder sb = new StringBuilder(67);
        sb.append("Invalid sample rate or number of channels: ");
        sb.append(i4);
        sb.append(", ");
        sb.append(i10);
        throw new IllegalArgumentException(sb.toString());
    }

    public static byte[] b(int i4, int i10, int i11) {
        return new byte[]{(byte) (((i4 << 3) & 248) | ((i10 >> 1) & 7)), (byte) (((i10 << 7) & 128) | ((i11 << 3) & 120))};
    }

    private static int c(com.google.android.exoplayer2.util.g0 g0Var) {
        int h4 = g0Var.h(5);
        return h4 == 31 ? g0Var.h(6) + 32 : h4;
    }

    public static int d(int i4) {
        if (i4 != 2) {
            if (i4 != 5) {
                if (i4 != 29) {
                    if (i4 != 42) {
                        if (i4 != 22) {
                            return i4 != 23 ? 0 : 15;
                        }
                        return 1073741824;
                    }
                    return 16;
                }
                return 12;
            }
            return 11;
        }
        return 10;
    }

    private static int e(com.google.android.exoplayer2.util.g0 g0Var) throws ParserException {
        int h4 = g0Var.h(4);
        if (h4 == 15) {
            return g0Var.h(24);
        }
        if (h4 < 13) {
            return f21102l[h4];
        }
        throw new ParserException();
    }

    public static c f(com.google.android.exoplayer2.util.g0 g0Var, boolean z9) throws ParserException {
        int c10 = c(g0Var);
        int e4 = e(g0Var);
        int h4 = g0Var.h(4);
        StringBuilder sb = new StringBuilder(19);
        sb.append(f21105o);
        sb.append(c10);
        String sb2 = sb.toString();
        if (c10 == 5 || c10 == 29) {
            e4 = e(g0Var);
            c10 = c(g0Var);
            if (c10 == 22) {
                h4 = g0Var.h(4);
            }
        }
        if (z9) {
            if (c10 != 1 && c10 != 2 && c10 != 3 && c10 != 4 && c10 != 6 && c10 != 7 && c10 != 17) {
                switch (c10) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        StringBuilder sb3 = new StringBuilder(42);
                        sb3.append("Unsupported audio object type: ");
                        sb3.append(c10);
                        throw new ParserException(sb3.toString());
                }
            }
            h(g0Var, c10, h4);
            switch (c10) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int h10 = g0Var.h(2);
                    if (h10 == 2 || h10 == 3) {
                        StringBuilder sb4 = new StringBuilder(33);
                        sb4.append("Unsupported epConfig: ");
                        sb4.append(h10);
                        throw new ParserException(sb4.toString());
                    }
            }
        }
        int i4 = f21104n[h4];
        if (i4 != -1) {
            return new c(e4, i4, sb2);
        }
        throw new ParserException();
    }

    public static c g(byte[] bArr) throws ParserException {
        return f(new com.google.android.exoplayer2.util.g0(bArr), false);
    }

    private static void h(com.google.android.exoplayer2.util.g0 g0Var, int i4, int i10) {
        if (g0Var.g()) {
            com.google.android.exoplayer2.util.w.n(f21091a, "Unexpected frameLengthFlag = 1");
        }
        if (g0Var.g()) {
            g0Var.s(14);
        }
        boolean g4 = g0Var.g();
        if (i10 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i4 == 6 || i4 == 20) {
            g0Var.s(3);
        }
        if (g4) {
            if (i4 == 22) {
                g0Var.s(16);
            }
            if (i4 == 17 || i4 == 19 || i4 == 20 || i4 == 23) {
                g0Var.s(3);
            }
            g0Var.s(1);
        }
    }
}
