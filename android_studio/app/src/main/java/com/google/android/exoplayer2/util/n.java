package com.google.android.exoplayer2.util;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Map;

/* compiled from: FileTypes.java */
/* loaded from: classes2.dex */
public final class n {
    private static final String A = ".webm";
    private static final String B = ".og";
    private static final String C = ".opus";
    private static final String D = ".mp3";
    private static final String E = ".mp4";
    private static final String F = ".m4";
    private static final String G = ".mp4";
    private static final String H = ".cmf";
    private static final String I = ".ps";
    private static final String J = ".mpeg";
    private static final String K = ".mpg";
    private static final String L = ".m2p";
    private static final String M = ".ts";
    private static final String N = ".ts";
    private static final String O = ".wav";
    private static final String P = ".wave";
    private static final String Q = ".vtt";
    private static final String R = ".webvtt";
    private static final String S = ".jpg";
    private static final String T = ".jpeg";

    /* renamed from: a  reason: collision with root package name */
    public static final int f27589a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f27590b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f27591c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f27592d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f27593e = 3;

    /* renamed from: f  reason: collision with root package name */
    public static final int f27594f = 4;

    /* renamed from: g  reason: collision with root package name */
    public static final int f27595g = 5;

    /* renamed from: h  reason: collision with root package name */
    public static final int f27596h = 6;

    /* renamed from: i  reason: collision with root package name */
    public static final int f27597i = 7;

    /* renamed from: j  reason: collision with root package name */
    public static final int f27598j = 8;

    /* renamed from: k  reason: collision with root package name */
    public static final int f27599k = 9;

    /* renamed from: l  reason: collision with root package name */
    public static final int f27600l = 10;

    /* renamed from: m  reason: collision with root package name */
    public static final int f27601m = 11;

    /* renamed from: n  reason: collision with root package name */
    public static final int f27602n = 12;

    /* renamed from: o  reason: collision with root package name */
    public static final int f27603o = 13;

    /* renamed from: p  reason: collision with root package name */
    public static final int f27604p = 14;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    static final String f27605q = "Content-Type";

    /* renamed from: r  reason: collision with root package name */
    private static final String f27606r = ".ac3";

    /* renamed from: s  reason: collision with root package name */
    private static final String f27607s = ".ec3";

    /* renamed from: t  reason: collision with root package name */
    private static final String f27608t = ".ac4";

    /* renamed from: u  reason: collision with root package name */
    private static final String f27609u = ".adts";

    /* renamed from: v  reason: collision with root package name */
    private static final String f27610v = ".aac";

    /* renamed from: w  reason: collision with root package name */
    private static final String f27611w = ".amr";

    /* renamed from: x  reason: collision with root package name */
    private static final String f27612x = ".flac";

    /* renamed from: y  reason: collision with root package name */
    private static final String f27613y = ".flv";

    /* renamed from: z  reason: collision with root package name */
    private static final String f27614z = ".mk";

    /* compiled from: FileTypes.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    private n() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(@Nullable String str) {
        char c10;
        if (str == null) {
            return -1;
        }
        String t9 = a0.t(str);
        t9.hashCode();
        switch (t9.hashCode()) {
            case -2123537834:
                if (t9.equals(a0.N)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1662384011:
                if (t9.equals(a0.f27465r)) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1662384007:
                if (t9.equals(a0.f27459o)) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1662095187:
                if (t9.equals(a0.f27445h)) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -1606874997:
                if (t9.equals(a0.X)) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -1487394660:
                if (t9.equals(a0.F0)) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case -1248337486:
                if (t9.equals(a0.f27444g0)) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -1004728940:
                if (t9.equals(a0.f27440e0)) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case -387023398:
                if (t9.equals(a0.B)) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -43467528:
                if (t9.equals(a0.f27446h0)) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case 13915911:
                if (t9.equals(a0.f27473v)) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case 187078296:
                if (t9.equals(a0.L)) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case 187078297:
                if (t9.equals(a0.O)) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            case 187078669:
                if (t9.equals(a0.V)) {
                    c10 = '\r';
                    break;
                }
                c10 = 65535;
                break;
            case 187090232:
                if (t9.equals(a0.f27481z)) {
                    c10 = 14;
                    break;
                }
                c10 = 65535;
                break;
            case 187091926:
                if (t9.equals(a0.f27434b0)) {
                    c10 = 15;
                    break;
                }
                c10 = 65535;
                break;
            case 187099443:
                if (t9.equals(a0.f27436c0)) {
                    c10 = 16;
                    break;
                }
                c10 = 65535;
                break;
            case 1331848029:
                if (t9.equals(a0.f27441f)) {
                    c10 = 17;
                    break;
                }
                c10 = 65535;
                break;
            case 1503095341:
                if (t9.equals(a0.W)) {
                    c10 = 18;
                    break;
                }
                c10 = 65535;
                break;
            case 1504578661:
                if (t9.equals(a0.M)) {
                    c10 = 19;
                    break;
                }
                c10 = 65535;
                break;
            case 1504619009:
                if (t9.equals(a0.Y)) {
                    c10 = 20;
                    break;
                }
                c10 = 65535;
                break;
            case 1504831518:
                if (t9.equals(a0.D)) {
                    c10 = 21;
                    break;
                }
                c10 = 65535;
                break;
            case 1505118770:
                if (t9.equals(a0.C)) {
                    c10 = 22;
                    break;
                }
                c10 = 65535;
                break;
            case 2039520277:
                if (t9.equals(a0.f27443g)) {
                    c10 = 23;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
            case 11:
            case 19:
                return 0;
            case 1:
                return 10;
            case 2:
                return 11;
            case 3:
            case '\b':
            case '\t':
            case 22:
            case 23:
                return 6;
            case 4:
            case '\r':
            case 18:
                return 3;
            case 5:
                return 14;
            case 6:
            case 14:
            case 17:
                return 8;
            case 7:
                return 13;
            case '\n':
                return 5;
            case '\f':
                return 1;
            case 15:
                return 9;
            case 16:
                return 12;
            case 20:
                return 4;
            case 21:
                return 7;
            default:
                return -1;
        }
    }

    public static int b(Map<String, List<String>> map) {
        List<String> list = map.get("Content-Type");
        return a((list == null || list.isEmpty()) ? null : list.get(0));
    }

    public static int c(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (lastPathSegment.endsWith(f27606r) || lastPathSegment.endsWith(f27607s)) {
            return 0;
        }
        if (lastPathSegment.endsWith(f27608t)) {
            return 1;
        }
        if (lastPathSegment.endsWith(f27609u) || lastPathSegment.endsWith(f27610v)) {
            return 2;
        }
        if (lastPathSegment.endsWith(f27611w)) {
            return 3;
        }
        if (lastPathSegment.endsWith(f27612x)) {
            return 4;
        }
        if (lastPathSegment.endsWith(f27613y)) {
            return 5;
        }
        if (lastPathSegment.startsWith(f27614z, lastPathSegment.length() - 4) || lastPathSegment.endsWith(A)) {
            return 6;
        }
        if (lastPathSegment.endsWith(D)) {
            return 7;
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(F, lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(H, lastPathSegment.length() - 5)) {
            return 8;
        }
        if (lastPathSegment.startsWith(B, lastPathSegment.length() - 4) || lastPathSegment.endsWith(C)) {
            return 9;
        }
        if (lastPathSegment.endsWith(I) || lastPathSegment.endsWith(J) || lastPathSegment.endsWith(K) || lastPathSegment.endsWith(L)) {
            return 10;
        }
        if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            return 11;
        }
        if (lastPathSegment.endsWith(O) || lastPathSegment.endsWith(P)) {
            return 12;
        }
        if (lastPathSegment.endsWith(Q) || lastPathSegment.endsWith(R)) {
            return 13;
        }
        return (lastPathSegment.endsWith(S) || lastPathSegment.endsWith(T)) ? 14 : -1;
    }
}
