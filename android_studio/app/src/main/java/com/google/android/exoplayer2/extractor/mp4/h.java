package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.ksyun.media.streamer.logstats.StatsConstant;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetadataUtil.java */
/* loaded from: classes2.dex */
public final class h {
    private static final int A = 1885823344;
    private static final int B = 1936683886;
    private static final int C = 1953919848;
    private static final int D = 757935405;
    private static final int E = 3;
    @VisibleForTesting
    static final String[] F = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", StatsConstant.ENCODE_SCENCE_GAME, "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", com.google.common.net.b.B0, "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};
    private static final int G = 169;
    private static final int H = 253;

    /* renamed from: a  reason: collision with root package name */
    private static final String f22725a = "MetadataUtil";

    /* renamed from: b  reason: collision with root package name */
    private static final int f22726b = 7233901;

    /* renamed from: c  reason: collision with root package name */
    private static final int f22727c = 7631467;

    /* renamed from: d  reason: collision with root package name */
    private static final int f22728d = 6516084;

    /* renamed from: e  reason: collision with root package name */
    private static final int f22729e = 6578553;

    /* renamed from: f  reason: collision with root package name */
    private static final int f22730f = 4280916;

    /* renamed from: g  reason: collision with root package name */
    private static final int f22731g = 7630703;

    /* renamed from: h  reason: collision with root package name */
    private static final int f22732h = 6384738;

    /* renamed from: i  reason: collision with root package name */
    private static final int f22733i = 6516589;

    /* renamed from: j  reason: collision with root package name */
    private static final int f22734j = 7828084;

    /* renamed from: k  reason: collision with root package name */
    private static final int f22735k = 7108978;

    /* renamed from: l  reason: collision with root package name */
    private static final int f22736l = 6776174;

    /* renamed from: m  reason: collision with root package name */
    private static final int f22737m = 1668249202;

    /* renamed from: n  reason: collision with root package name */
    private static final int f22738n = 1735291493;

    /* renamed from: o  reason: collision with root package name */
    private static final int f22739o = 6779504;

    /* renamed from: p  reason: collision with root package name */
    private static final int f22740p = 1684632427;

    /* renamed from: q  reason: collision with root package name */
    private static final int f22741q = 1953655662;

    /* renamed from: r  reason: collision with root package name */
    private static final int f22742r = 1953329263;

    /* renamed from: s  reason: collision with root package name */
    private static final int f22743s = 1668311404;

    /* renamed from: t  reason: collision with root package name */
    private static final int f22744t = 1631670868;

    /* renamed from: u  reason: collision with root package name */
    private static final int f22745u = 1936682605;

    /* renamed from: v  reason: collision with root package name */
    private static final int f22746v = 1936679276;

    /* renamed from: w  reason: collision with root package name */
    private static final int f22747w = 1936679282;

    /* renamed from: x  reason: collision with root package name */
    private static final int f22748x = 1936679265;

    /* renamed from: y  reason: collision with root package name */
    private static final int f22749y = 1936679791;

    /* renamed from: z  reason: collision with root package name */
    private static final int f22750z = 1920233063;

    private h() {
    }

    @Nullable
    private static CommentFrame a(int i4, h0 h0Var) {
        int o9 = h0Var.o();
        if (h0Var.o() == 1684108385) {
            h0Var.T(8);
            String B2 = h0Var.B(o9 - 16);
            return new CommentFrame("und", B2, B2);
        }
        String valueOf = String.valueOf(a.a(i4));
        w.n(f22725a, valueOf.length() != 0 ? "Failed to parse comment attribute: ".concat(valueOf) : new String("Failed to parse comment attribute: "));
        return null;
    }

    @Nullable
    private static ApicFrame b(h0 h0Var) {
        int o9 = h0Var.o();
        if (h0Var.o() == 1684108385) {
            int b10 = a.b(h0Var.o());
            String str = b10 == 13 ? a0.F0 : b10 == 14 ? "image/png" : null;
            if (str == null) {
                StringBuilder sb = new StringBuilder(41);
                sb.append("Unrecognized cover art flags: ");
                sb.append(b10);
                w.n(f22725a, sb.toString());
                return null;
            }
            h0Var.T(4);
            int i4 = o9 - 16;
            byte[] bArr = new byte[i4];
            h0Var.k(bArr, 0, i4);
            return new ApicFrame(str, null, 3, bArr);
        }
        w.n(f22725a, "Failed to parse cover art attribute");
        return null;
    }

    @Nullable
    public static Metadata.Entry c(h0 h0Var) {
        int e4 = h0Var.e() + h0Var.o();
        int o9 = h0Var.o();
        int i4 = (o9 >> 24) & 255;
        try {
            if (i4 == G || i4 == H) {
                int i10 = 16777215 & o9;
                if (i10 == f22728d) {
                    return a(o9, h0Var);
                }
                if (i10 == f22726b || i10 == f22727c) {
                    return h(o9, "TIT2", h0Var);
                }
                if (i10 == f22733i || i10 == f22734j) {
                    return h(o9, "TCOM", h0Var);
                }
                if (i10 == f22729e) {
                    return h(o9, "TDRC", h0Var);
                }
                if (i10 == f22730f) {
                    return h(o9, "TPE1", h0Var);
                }
                if (i10 == f22731g) {
                    return h(o9, "TSSE", h0Var);
                }
                if (i10 == f22732h) {
                    return h(o9, "TALB", h0Var);
                }
                if (i10 == f22735k) {
                    return h(o9, "USLT", h0Var);
                }
                if (i10 == f22736l) {
                    return h(o9, "TCON", h0Var);
                }
                if (i10 == f22739o) {
                    return h(o9, "TIT1", h0Var);
                }
            } else if (o9 == f22738n) {
                return g(h0Var);
            } else {
                if (o9 == f22740p) {
                    return d(o9, "TPOS", h0Var);
                }
                if (o9 == f22741q) {
                    return d(o9, "TRCK", h0Var);
                }
                if (o9 == f22742r) {
                    return i(o9, "TBPM", h0Var, true, false);
                }
                if (o9 == f22743s) {
                    return i(o9, "TCMP", h0Var, true, true);
                }
                if (o9 == f22737m) {
                    return b(h0Var);
                }
                if (o9 == f22744t) {
                    return h(o9, "TPE2", h0Var);
                }
                if (o9 == f22745u) {
                    return h(o9, "TSOT", h0Var);
                }
                if (o9 == f22746v) {
                    return h(o9, "TSO2", h0Var);
                }
                if (o9 == f22747w) {
                    return h(o9, "TSOA", h0Var);
                }
                if (o9 == f22748x) {
                    return h(o9, "TSOP", h0Var);
                }
                if (o9 == f22749y) {
                    return h(o9, "TSOC", h0Var);
                }
                if (o9 == f22750z) {
                    return i(o9, "ITUNESADVISORY", h0Var, false, false);
                }
                if (o9 == A) {
                    return i(o9, "ITUNESGAPLESS", h0Var, false, true);
                }
                if (o9 == B) {
                    return h(o9, "TVSHOWSORT", h0Var);
                }
                if (o9 == C) {
                    return h(o9, "TVSHOW", h0Var);
                }
                if (o9 == D) {
                    return e(h0Var, e4);
                }
            }
            String valueOf = String.valueOf(a.a(o9));
            w.b(f22725a, valueOf.length() != 0 ? "Skipped unknown metadata entry: ".concat(valueOf) : new String("Skipped unknown metadata entry: "));
            return null;
        } finally {
            h0Var.S(e4);
        }
    }

    @Nullable
    private static TextInformationFrame d(int i4, String str, h0 h0Var) {
        int o9 = h0Var.o();
        if (h0Var.o() == 1684108385 && o9 >= 22) {
            h0Var.T(10);
            int M = h0Var.M();
            if (M > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(M);
                String sb2 = sb.toString();
                int M2 = h0Var.M();
                if (M2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(valueOf.length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(M2);
                    sb2 = sb3.toString();
                }
                return new TextInformationFrame(str, null, sb2);
            }
        }
        String valueOf2 = String.valueOf(a.a(i4));
        w.n(f22725a, valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    @Nullable
    private static Id3Frame e(h0 h0Var, int i4) {
        String str = null;
        String str2 = null;
        int i10 = -1;
        int i11 = -1;
        while (h0Var.e() < i4) {
            int e4 = h0Var.e();
            int o9 = h0Var.o();
            int o10 = h0Var.o();
            h0Var.T(4);
            if (o10 == 1835360622) {
                str = h0Var.B(o9 - 12);
            } else if (o10 == 1851878757) {
                str2 = h0Var.B(o9 - 12);
            } else {
                if (o10 == 1684108385) {
                    i10 = e4;
                    i11 = o9;
                }
                h0Var.T(o9 - 12);
            }
        }
        if (str == null || str2 == null || i10 == -1) {
            return null;
        }
        h0Var.S(i10);
        h0Var.T(16);
        return new InternalFrame(str, str2, h0Var.B(i11 - 16));
    }

    @Nullable
    public static MdtaMetadataEntry f(h0 h0Var, int i4, String str) {
        while (true) {
            int e4 = h0Var.e();
            if (e4 >= i4) {
                return null;
            }
            int o9 = h0Var.o();
            if (h0Var.o() == 1684108385) {
                int o10 = h0Var.o();
                int o11 = h0Var.o();
                int i10 = o9 - 16;
                byte[] bArr = new byte[i10];
                h0Var.k(bArr, 0, i10);
                return new MdtaMetadataEntry(str, bArr, o11, o10);
            }
            h0Var.S(e4 + o9);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.metadata.id3.TextInformationFrame g(com.google.android.exoplayer2.util.h0 r3) {
        /*
            int r3 = j(r3)
            r0 = 0
            if (r3 <= 0) goto L11
            java.lang.String[] r1 = com.google.android.exoplayer2.extractor.mp4.h.F
            int r2 = r1.length
            if (r3 > r2) goto L11
            int r3 = r3 + (-1)
            r3 = r1[r3]
            goto L12
        L11:
            r3 = r0
        L12:
            if (r3 == 0) goto L1c
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r1 = new com.google.android.exoplayer2.metadata.id3.TextInformationFrame
            java.lang.String r2 = "TCON"
            r1.<init>(r2, r0, r3)
            return r1
        L1c:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            com.google.android.exoplayer2.util.w.n(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.h.g(com.google.android.exoplayer2.util.h0):com.google.android.exoplayer2.metadata.id3.TextInformationFrame");
    }

    @Nullable
    private static TextInformationFrame h(int i4, String str, h0 h0Var) {
        int o9 = h0Var.o();
        if (h0Var.o() == 1684108385) {
            h0Var.T(8);
            return new TextInformationFrame(str, null, h0Var.B(o9 - 16));
        }
        String valueOf = String.valueOf(a.a(i4));
        w.n(f22725a, valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    @Nullable
    private static Id3Frame i(int i4, String str, h0 h0Var, boolean z9, boolean z10) {
        int j4 = j(h0Var);
        if (z10) {
            j4 = Math.min(1, j4);
        }
        if (j4 >= 0) {
            if (z9) {
                return new TextInformationFrame(str, null, Integer.toString(j4));
            }
            return new CommentFrame("und", str, Integer.toString(j4));
        }
        String valueOf = String.valueOf(a.a(i4));
        w.n(f22725a, valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    private static int j(h0 h0Var) {
        h0Var.T(4);
        if (h0Var.o() == 1684108385) {
            h0Var.T(8);
            return h0Var.G();
        }
        w.n(f22725a, "Failed to parse uint8 attribute value");
        return -1;
    }

    public static void k(int i4, com.google.android.exoplayer2.extractor.w wVar, Format.b bVar) {
        if (i4 == 1 && wVar.a()) {
            bVar.M(wVar.f23491a).N(wVar.f23492b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
        if (r6 != null) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void l(int r5, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.Metadata r6, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.Metadata r7, com.google.android.exoplayer2.Format.b r8, com.google.android.exoplayer2.metadata.Metadata... r9) {
        /*
            com.google.android.exoplayer2.metadata.Metadata r0 = new com.google.android.exoplayer2.metadata.Metadata
            r1 = 0
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r2 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r1]
            r0.<init>(r2)
            r2 = 1
            if (r5 != r2) goto Le
            if (r6 == 0) goto L3c
            goto L3d
        Le:
            r6 = 2
            if (r5 != r6) goto L3c
            if (r7 == 0) goto L3c
            r5 = 0
        L14:
            int r6 = r7.length()
            if (r5 >= r6) goto L3c
            com.google.android.exoplayer2.metadata.Metadata$Entry r6 = r7.get(r5)
            boolean r3 = r6 instanceof com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry r6 = (com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry) r6
            java.lang.String r3 = r6.key
            java.lang.String r4 = "com.android.capture.fps"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.Metadata r5 = new com.google.android.exoplayer2.metadata.Metadata
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r7 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r2]
            r7[r1] = r6
            r5.<init>(r7)
            r6 = r5
            goto L3d
        L39:
            int r5 = r5 + 1
            goto L14
        L3c:
            r6 = r0
        L3d:
            int r5 = r9.length
        L3e:
            if (r1 >= r5) goto L49
            r7 = r9[r1]
            com.google.android.exoplayer2.metadata.Metadata r6 = r6.copyWithAppendedEntriesFrom(r7)
            int r1 = r1 + 1
            goto L3e
        L49:
            int r5 = r6.length()
            if (r5 <= 0) goto L52
            r8.X(r6)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.h.l(int, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.Format$b, com.google.android.exoplayer2.metadata.Metadata[]):void");
    }
}
