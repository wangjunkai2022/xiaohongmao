package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: MimeTypes.java */
/* loaded from: classes2.dex */
public final class a0 {
    public static final String A = "audio/mp4a-latm";
    public static final String A0 = "application/dvbsubs";
    public static final String B = "audio/x-matroska";
    public static final String B0 = "application/x-exif";
    public static final String C = "audio/webm";
    public static final String C0 = "application/x-icy";
    public static final String D = "audio/mpeg";
    public static final String D0 = "application/vnd.dvb.ait";
    public static final String E = "audio/mpeg-L1";
    public static final String E0 = "application/x-rtsp";
    public static final String F = "audio/mpeg-L2";
    public static final String F0 = "image/jpeg";
    public static final String G = "audio/mha1";
    public static final String H = "audio/mhm1";
    public static final String I = "audio/raw";
    public static final String J = "audio/g711-alaw";
    public static final String K = "audio/g711-mlaw";
    public static final String L = "audio/ac3";
    public static final String M = "audio/eac3";
    public static final String N = "audio/eac3-joc";
    public static final String O = "audio/ac4";
    public static final String P = "audio/true-hd";
    public static final String Q = "audio/vnd.dts";
    public static final String R = "audio/vnd.dts.hd";
    public static final String S = "audio/vnd.dts.hd;profile=lbr";
    public static final String T = "audio/vorbis";
    public static final String U = "audio/opus";
    public static final String V = "audio/amr";
    public static final String W = "audio/3gpp";
    public static final String X = "audio/amr-wb";
    public static final String Y = "audio/flac";
    public static final String Z = "audio/alac";

    /* renamed from: a  reason: collision with root package name */
    public static final String f27431a = "video";

    /* renamed from: a0  reason: collision with root package name */
    public static final String f27432a0 = "audio/gsm";

    /* renamed from: b  reason: collision with root package name */
    public static final String f27433b = "audio";

    /* renamed from: b0  reason: collision with root package name */
    public static final String f27434b0 = "audio/ogg";

    /* renamed from: c  reason: collision with root package name */
    public static final String f27435c = "text";

    /* renamed from: c0  reason: collision with root package name */
    public static final String f27436c0 = "audio/wav";

    /* renamed from: d  reason: collision with root package name */
    public static final String f27437d = "image";

    /* renamed from: d0  reason: collision with root package name */
    public static final String f27438d0 = "audio/x-unknown";

    /* renamed from: e  reason: collision with root package name */
    public static final String f27439e = "application";

    /* renamed from: e0  reason: collision with root package name */
    public static final String f27440e0 = "text/vtt";

    /* renamed from: f  reason: collision with root package name */
    public static final String f27441f = "video/mp4";

    /* renamed from: f0  reason: collision with root package name */
    public static final String f27442f0 = "text/x-ssa";

    /* renamed from: g  reason: collision with root package name */
    public static final String f27443g = "video/x-matroska";

    /* renamed from: g0  reason: collision with root package name */
    public static final String f27444g0 = "application/mp4";

    /* renamed from: h  reason: collision with root package name */
    public static final String f27445h = "video/webm";

    /* renamed from: h0  reason: collision with root package name */
    public static final String f27446h0 = "application/webm";

    /* renamed from: i  reason: collision with root package name */
    public static final String f27447i = "video/3gpp";

    /* renamed from: i0  reason: collision with root package name */
    public static final String f27448i0 = "application/x-matroska";

    /* renamed from: j  reason: collision with root package name */
    public static final String f27449j = "video/avc";

    /* renamed from: j0  reason: collision with root package name */
    public static final String f27450j0 = "application/dash+xml";

    /* renamed from: k  reason: collision with root package name */
    public static final String f27451k = "video/hevc";

    /* renamed from: k0  reason: collision with root package name */
    public static final String f27452k0 = "application/x-mpegURL";

    /* renamed from: l  reason: collision with root package name */
    public static final String f27453l = "video/x-vnd.on2.vp8";

    /* renamed from: l0  reason: collision with root package name */
    public static final String f27454l0 = "application/vnd.ms-sstr+xml";

    /* renamed from: m  reason: collision with root package name */
    public static final String f27455m = "video/x-vnd.on2.vp9";

    /* renamed from: m0  reason: collision with root package name */
    public static final String f27456m0 = "application/id3";

    /* renamed from: n  reason: collision with root package name */
    public static final String f27457n = "video/av01";

    /* renamed from: n0  reason: collision with root package name */
    public static final String f27458n0 = "application/cea-608";

    /* renamed from: o  reason: collision with root package name */
    public static final String f27459o = "video/mp2t";

    /* renamed from: o0  reason: collision with root package name */
    public static final String f27460o0 = "application/cea-708";

    /* renamed from: p  reason: collision with root package name */
    public static final String f27461p = "video/mp4v-es";

    /* renamed from: p0  reason: collision with root package name */
    public static final String f27462p0 = "application/x-subrip";

    /* renamed from: q  reason: collision with root package name */
    public static final String f27463q = "video/mpeg";

    /* renamed from: q0  reason: collision with root package name */
    public static final String f27464q0 = "application/ttml+xml";

    /* renamed from: r  reason: collision with root package name */
    public static final String f27465r = "video/mp2p";

    /* renamed from: r0  reason: collision with root package name */
    public static final String f27466r0 = "application/x-quicktime-tx3g";

    /* renamed from: s  reason: collision with root package name */
    public static final String f27467s = "video/mpeg2";

    /* renamed from: s0  reason: collision with root package name */
    public static final String f27468s0 = "application/x-mp4-vtt";

    /* renamed from: t  reason: collision with root package name */
    public static final String f27469t = "video/wvc1";

    /* renamed from: t0  reason: collision with root package name */
    public static final String f27470t0 = "application/x-mp4-cea-608";

    /* renamed from: u  reason: collision with root package name */
    public static final String f27471u = "video/divx";

    /* renamed from: u0  reason: collision with root package name */
    public static final String f27472u0 = "application/x-rawcc";

    /* renamed from: v  reason: collision with root package name */
    public static final String f27473v = "video/x-flv";

    /* renamed from: v0  reason: collision with root package name */
    public static final String f27474v0 = "application/vobsub";

    /* renamed from: w  reason: collision with root package name */
    public static final String f27475w = "video/dolby-vision";

    /* renamed from: w0  reason: collision with root package name */
    public static final String f27476w0 = "application/pgs";

    /* renamed from: x  reason: collision with root package name */
    public static final String f27477x = "video/ogg";

    /* renamed from: x0  reason: collision with root package name */
    public static final String f27478x0 = "application/x-scte35";

    /* renamed from: y  reason: collision with root package name */
    public static final String f27479y = "video/x-unknown";

    /* renamed from: y0  reason: collision with root package name */
    public static final String f27480y0 = "application/x-camera-motion";

    /* renamed from: z  reason: collision with root package name */
    public static final String f27481z = "audio/mp4";

    /* renamed from: z0  reason: collision with root package name */
    public static final String f27482z0 = "application/x-emsg";
    private static final ArrayList<a> G0 = new ArrayList<>();
    private static final Pattern H0 = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MimeTypes.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f27483a;

        /* renamed from: b  reason: collision with root package name */
        public final String f27484b;

        /* renamed from: c  reason: collision with root package name */
        public final int f27485c;

        public a(String str, String str2, int i4) {
            this.f27483a = str;
            this.f27484b = str2;
            this.f27485c = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MimeTypes.java */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f27486a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27487b;

        public b(int i4, int i10) {
            this.f27486a = i4;
            this.f27487b = i10;
        }
    }

    private a0() {
    }

    public static boolean a(@Nullable String str, @Nullable String str2) {
        b i4;
        int d4;
        if (str == null) {
            return false;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(N)) {
                    c10 = 0;
                    break;
                }
                break;
            case -432837260:
                if (str.equals(E)) {
                    c10 = 1;
                    break;
                }
                break;
            case -432837259:
                if (str.equals(F)) {
                    c10 = 2;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c10 = 3;
                    break;
                }
                break;
            case 187078296:
                if (str.equals(L)) {
                    c10 = 4;
                    break;
                }
                break;
            case 187094639:
                if (str.equals(I)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals(M)) {
                    c10 = 6;
                    break;
                }
                break;
            case 1504619009:
                if (str.equals(Y)) {
                    c10 = 7;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals(D)) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1903231877:
                if (str.equals(J)) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1903589369:
                if (str.equals(K)) {
                    c10 = '\n';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
                return true;
            case 3:
                return (str2 == null || (i4 = i(str2)) == null || (d4 = com.google.android.exoplayer2.audio.a.d(i4.f27487b)) == 0 || d4 == 16) ? false : true;
            default:
                return false;
        }
    }

    public static boolean b(@Nullable String str, String str2) {
        return d(str, str2) != null;
    }

    @Nullable
    public static String c(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : z0.n1(str)) {
            String g4 = g(str2);
            if (g4 != null && p(g4)) {
                return g4;
            }
        }
        return null;
    }

    @Nullable
    public static String d(@Nullable String str, @Nullable String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        String[] n12 = z0.n1(str);
        StringBuilder sb = new StringBuilder();
        for (String str3 : n12) {
            if (str2.equals(g(str3))) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str3);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    @Nullable
    private static String e(String str) {
        int size = G0.size();
        for (int i4 = 0; i4 < size; i4++) {
            a aVar = G0.get(i4);
            if (str.startsWith(aVar.f27484b)) {
                return aVar.f27483a;
            }
        }
        return null;
    }

    public static int f(String str, @Nullable String str2) {
        b i4;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(N)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals(Q)) {
                    c10 = 1;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c10 = 2;
                    break;
                }
                break;
            case 187078296:
                if (str.equals(L)) {
                    c10 = 3;
                    break;
                }
                break;
            case 187078297:
                if (str.equals(O)) {
                    c10 = 4;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals(M)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals(D)) {
                    c10 = 6;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals(R)) {
                    c10 = 7;
                    break;
                }
                break;
            case 1556697186:
                if (str.equals(P)) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 18;
            case 1:
                return 7;
            case 2:
                if (str2 == null || (i4 = i(str2)) == null) {
                    return 0;
                }
                return com.google.android.exoplayer2.audio.a.d(i4.f27487b);
            case 3:
                return 5;
            case 4:
                return 17;
            case 5:
                return 6;
            case 6:
                return 9;
            case 7:
                return 8;
            case '\b':
                return 14;
            default:
                return 0;
        }
    }

    @Nullable
    public static String g(@Nullable String str) {
        b i4;
        String str2 = null;
        if (str == null) {
            return null;
        }
        String g4 = com.google.common.base.c.g(str.trim());
        if (g4.startsWith(com.coremedia.iso.boxes.sampleentry.h.f10369y) || g4.startsWith(com.coremedia.iso.boxes.sampleentry.h.f10370z)) {
            return "video/avc";
        }
        if (g4.startsWith(com.coremedia.iso.boxes.sampleentry.h.C) || g4.startsWith(com.coremedia.iso.boxes.sampleentry.h.B)) {
            return f27451k;
        }
        if (g4.startsWith("dvav") || g4.startsWith("dva1") || g4.startsWith("dvhe") || g4.startsWith("dvh1")) {
            return f27475w;
        }
        if (g4.startsWith("av01")) {
            return f27457n;
        }
        if (g4.startsWith("vp9") || g4.startsWith("vp09")) {
            return f27455m;
        }
        if (g4.startsWith("vp8") || g4.startsWith("vp08")) {
            return f27453l;
        }
        if (!g4.startsWith(com.coremedia.iso.boxes.sampleentry.c.D)) {
            return g4.startsWith("mha1") ? G : g4.startsWith("mhm1") ? H : (g4.startsWith(com.coremedia.iso.boxes.sampleentry.c.H) || g4.startsWith(com.googlecode.mp4parser.boxes.a.f36438u)) ? L : (g4.startsWith(com.coremedia.iso.boxes.sampleentry.c.I) || g4.startsWith(com.googlecode.mp4parser.boxes.e.f36673q)) ? M : g4.startsWith(com.google.android.exoplayer2.audio.b.f21118a) ? N : (g4.startsWith("ac-4") || g4.startsWith("dac4")) ? O : (g4.startsWith("dtsc") || g4.startsWith(com.coremedia.iso.boxes.sampleentry.c.M)) ? Q : (g4.startsWith(com.coremedia.iso.boxes.sampleentry.c.L) || g4.startsWith(com.coremedia.iso.boxes.sampleentry.c.K)) ? R : g4.startsWith("opus") ? U : g4.startsWith("vorbis") ? T : g4.startsWith("flac") ? Y : g4.startsWith(com.mp4parser.iso14496.part30.e.f47086r) ? f27464q0 : g4.startsWith(com.mp4parser.iso14496.part30.b.f47078o) ? f27440e0 : g4.contains("cea708") ? f27460o0 : (g4.contains("eia608") || g4.contains("cea608")) ? f27458n0 : e(g4);
        }
        if (g4.startsWith("mp4a.") && (i4 = i(g4)) != null) {
            str2 = h(i4.f27486a);
        }
        return str2 == null ? "audio/mp4a-latm" : str2;
    }

    @Nullable
    public static String h(int i4) {
        if (i4 != 32) {
            if (i4 != 33) {
                if (i4 != 35) {
                    if (i4 != 64) {
                        if (i4 != 163) {
                            if (i4 != 177) {
                                if (i4 != 165) {
                                    if (i4 != 166) {
                                        switch (i4) {
                                            case 96:
                                            case 97:
                                            case 98:
                                            case 99:
                                            case 100:
                                            case 101:
                                                return f27467s;
                                            case 102:
                                            case 103:
                                            case 104:
                                                return "audio/mp4a-latm";
                                            case 105:
                                            case 107:
                                                return D;
                                            case 106:
                                                return f27463q;
                                            default:
                                                switch (i4) {
                                                    case 169:
                                                    case com.google.android.exoplayer2.extractor.ts.h0.K /* 172 */:
                                                        return Q;
                                                    case 170:
                                                    case 171:
                                                        return R;
                                                    case 173:
                                                        return U;
                                                    case 174:
                                                        return O;
                                                    default:
                                                        return null;
                                                }
                                        }
                                    }
                                    return M;
                                }
                                return L;
                            }
                            return f27455m;
                        }
                        return f27469t;
                    }
                    return "audio/mp4a-latm";
                }
                return f27451k;
            }
            return "video/avc";
        }
        return f27461p;
    }

    @Nullable
    @VisibleForTesting
    static b i(String str) {
        Matcher matcher = H0.matcher(str);
        if (matcher.matches()) {
            String str2 = (String) com.google.android.exoplayer2.util.a.g(matcher.group(1));
            String group = matcher.group(2);
            try {
                return new b(Integer.parseInt(str2, 16), group != null ? Integer.parseInt(group) : 0);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    @Nullable
    public static String j(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : z0.n1(str)) {
            String g4 = g(str2);
            if (g4 != null && r(g4)) {
                return g4;
            }
        }
        return null;
    }

    @Nullable
    private static String k(@Nullable String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    public static int l(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (p(str)) {
            return 1;
        }
        if (s(str)) {
            return 2;
        }
        if (r(str)) {
            return 3;
        }
        if (f27456m0.equals(str) || f27482z0.equals(str) || f27478x0.equals(str)) {
            return 5;
        }
        if (f27480y0.equals(str)) {
            return 6;
        }
        return m(str);
    }

    private static int m(String str) {
        int size = G0.size();
        for (int i4 = 0; i4 < size; i4++) {
            a aVar = G0.get(i4);
            if (str.equals(aVar.f27483a)) {
                return aVar.f27485c;
            }
        }
        return -1;
    }

    public static int n(String str) {
        return l(g(str));
    }

    @Nullable
    public static String o(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : z0.n1(str)) {
            String g4 = g(str2);
            if (g4 != null && s(g4)) {
                return g4;
            }
        }
        return null;
    }

    public static boolean p(@Nullable String str) {
        return "audio".equals(k(str));
    }

    public static boolean q(@Nullable String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith(f27445h) || str.startsWith(C) || str.startsWith(f27446h0) || str.startsWith(f27443g) || str.startsWith(B) || str.startsWith(f27448i0);
    }

    public static boolean r(@Nullable String str) {
        return "text".equals(k(str)) || f27458n0.equals(str) || f27460o0.equals(str) || f27470t0.equals(str) || f27462p0.equals(str) || f27464q0.equals(str) || f27466r0.equals(str) || f27468s0.equals(str) || f27472u0.equals(str) || f27474v0.equals(str) || f27476w0.equals(str) || A0.equals(str);
    }

    public static boolean s(@Nullable String str) {
        return "video".equals(k(str));
    }

    public static String t(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1007807498:
                if (str.equals("audio/x-flac")) {
                    c10 = 0;
                    break;
                }
                break;
            case -586683234:
                if (str.equals("audio/x-wav")) {
                    c10 = 1;
                    break;
                }
                break;
            case 187090231:
                if (str.equals("audio/mp3")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return Y;
            case 1:
                return f27436c0;
            case 2:
                return D;
            default:
                return str;
        }
    }

    public static void u(String str, String str2, int i4) {
        a aVar = new a(str, str2, i4);
        int size = G0.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            ArrayList<a> arrayList = G0;
            if (str.equals(arrayList.get(i10).f27483a)) {
                arrayList.remove(i10);
                break;
            }
            i10++;
        }
        G0.add(aVar);
    }
}
