package com.google.android.exoplayer2.text.ssa;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import com.google.common.primitives.f;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SsaStyle.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: i  reason: collision with root package name */
    private static final String f25628i = "SsaStyle";

    /* renamed from: j  reason: collision with root package name */
    public static final int f25629j = -1;

    /* renamed from: k  reason: collision with root package name */
    public static final int f25630k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final int f25631l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static final int f25632m = 3;

    /* renamed from: n  reason: collision with root package name */
    public static final int f25633n = 4;

    /* renamed from: o  reason: collision with root package name */
    public static final int f25634o = 5;

    /* renamed from: p  reason: collision with root package name */
    public static final int f25635p = 6;

    /* renamed from: q  reason: collision with root package name */
    public static final int f25636q = 7;

    /* renamed from: r  reason: collision with root package name */
    public static final int f25637r = 8;

    /* renamed from: s  reason: collision with root package name */
    public static final int f25638s = 9;

    /* renamed from: a  reason: collision with root package name */
    public final String f25639a;

    /* renamed from: b  reason: collision with root package name */
    public final int f25640b;
    @Nullable
    @ColorInt

    /* renamed from: c  reason: collision with root package name */
    public final Integer f25641c;

    /* renamed from: d  reason: collision with root package name */
    public final float f25642d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f25643e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f25644f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f25645g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f25646h;

    /* compiled from: SsaStyle.java */
    /* loaded from: classes2.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f25647a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25648b;

        /* renamed from: c  reason: collision with root package name */
        public final int f25649c;

        /* renamed from: d  reason: collision with root package name */
        public final int f25650d;

        /* renamed from: e  reason: collision with root package name */
        public final int f25651e;

        /* renamed from: f  reason: collision with root package name */
        public final int f25652f;

        /* renamed from: g  reason: collision with root package name */
        public final int f25653g;

        /* renamed from: h  reason: collision with root package name */
        public final int f25654h;

        /* renamed from: i  reason: collision with root package name */
        public final int f25655i;

        private a(int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f25647a = i4;
            this.f25648b = i10;
            this.f25649c = i11;
            this.f25650d = i12;
            this.f25651e = i13;
            this.f25652f = i14;
            this.f25653g = i15;
            this.f25654h = i16;
            this.f25655i = i17;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Nullable
        public static a a(String str) {
            char c10;
            String[] split = TextUtils.split(str.substring(7), ",");
            int i4 = -1;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            for (int i17 = 0; i17 < split.length; i17++) {
                String g4 = com.google.common.base.c.g(split[i17].trim());
                g4.hashCode();
                switch (g4.hashCode()) {
                    case -1178781136:
                        if (g4.equals(com.google.android.exoplayer2.text.ttml.d.f25718j0)) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -1026963764:
                        if (g4.equals(com.google.android.exoplayer2.text.ttml.d.f25716h0)) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -192095652:
                        if (g4.equals("strikeout")) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -70925746:
                        if (g4.equals("primarycolour")) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3029637:
                        if (g4.equals(com.google.android.exoplayer2.text.ttml.d.f25719k0)) {
                            c10 = 4;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3373707:
                        if (g4.equals("name")) {
                            c10 = 5;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 366554320:
                        if (g4.equals("fontsize")) {
                            c10 = 6;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1767875043:
                        if (g4.equals("alignment")) {
                            c10 = 7;
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
                        i14 = i17;
                        break;
                    case 1:
                        i15 = i17;
                        break;
                    case 2:
                        i16 = i17;
                        break;
                    case 3:
                        i11 = i17;
                        break;
                    case 4:
                        i13 = i17;
                        break;
                    case 5:
                        i4 = i17;
                        break;
                    case 6:
                        i12 = i17;
                        break;
                    case 7:
                        i10 = i17;
                        break;
                }
            }
            if (i4 != -1) {
                return new a(i4, i10, i11, i12, i13, i14, i15, i16, split.length);
            }
            return null;
        }
    }

    /* compiled from: SsaStyle.java */
    /* loaded from: classes2.dex */
    static final class b {

        /* renamed from: c  reason: collision with root package name */
        private static final String f25656c = "SsaStyle.Overrides";

        /* renamed from: d  reason: collision with root package name */
        private static final Pattern f25657d = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: e  reason: collision with root package name */
        private static final String f25658e = "\\s*\\d+(?:\\.\\d+)?\\s*";

        /* renamed from: f  reason: collision with root package name */
        private static final Pattern f25659f = Pattern.compile(z0.I("\\\\pos\\((%1$s),(%1$s)\\)", f25658e));

        /* renamed from: g  reason: collision with root package name */
        private static final Pattern f25660g = Pattern.compile(z0.I("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", f25658e));

        /* renamed from: h  reason: collision with root package name */
        private static final Pattern f25661h = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: a  reason: collision with root package name */
        public final int f25662a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final PointF f25663b;

        private b(int i4, @Nullable PointF pointF) {
            this.f25662a = i4;
            this.f25663b = pointF;
        }

        private static int a(String str) {
            Matcher matcher = f25661h.matcher(str);
            if (matcher.find()) {
                return c.d((String) com.google.android.exoplayer2.util.a.g(matcher.group(1)));
            }
            return -1;
        }

        public static b b(String str) {
            Matcher matcher = f25657d.matcher(str);
            PointF pointF = null;
            int i4 = -1;
            while (matcher.find()) {
                String str2 = (String) com.google.android.exoplayer2.util.a.g(matcher.group(1));
                try {
                    PointF c10 = c(str2);
                    if (c10 != null) {
                        pointF = c10;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int a10 = a(str2);
                    if (a10 != -1) {
                        i4 = a10;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new b(i4, pointF);
        }

        @Nullable
        private static PointF c(String str) {
            String group;
            String group2;
            Matcher matcher = f25659f.matcher(str);
            Matcher matcher2 = f25660g.matcher(str);
            boolean find = matcher.find();
            boolean find2 = matcher2.find();
            if (find) {
                if (find2) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 82);
                    sb.append("Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='");
                    sb.append(str);
                    sb.append("'");
                    w.i(f25656c, sb.toString());
                }
                group = matcher.group(1);
                group2 = matcher.group(2);
            } else if (!find2) {
                return null;
            } else {
                group = matcher2.group(1);
                group2 = matcher2.group(2);
            }
            return new PointF(Float.parseFloat(((String) com.google.android.exoplayer2.util.a.g(group)).trim()), Float.parseFloat(((String) com.google.android.exoplayer2.util.a.g(group2)).trim()));
        }

        public static String d(String str) {
            return f25657d.matcher(str).replaceAll("");
        }
    }

    /* compiled from: SsaStyle.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.exoplayer2.text.ssa.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public @interface InterfaceC0183c {
    }

    private c(String str, int i4, @Nullable @ColorInt Integer num, float f10, boolean z9, boolean z10, boolean z11, boolean z12) {
        this.f25639a = str;
        this.f25640b = i4;
        this.f25641c = num;
        this.f25642d = f10;
        this.f25643e = z9;
        this.f25644f = z10;
        this.f25645g = z11;
        this.f25646h = z12;
    }

    @Nullable
    public static c b(String str, a aVar) {
        com.google.android.exoplayer2.util.a.a(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        int length = split.length;
        int i4 = aVar.f25655i;
        if (length != i4) {
            w.n(f25628i, z0.I("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i4), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            String trim = split[aVar.f25647a].trim();
            int i10 = aVar.f25648b;
            int d4 = i10 != -1 ? d(split[i10].trim()) : -1;
            int i11 = aVar.f25649c;
            Integer f10 = i11 != -1 ? f(split[i11].trim()) : null;
            int i12 = aVar.f25650d;
            float g4 = i12 != -1 ? g(split[i12].trim()) : -3.4028235E38f;
            int i13 = aVar.f25651e;
            boolean e4 = i13 != -1 ? e(split[i13].trim()) : false;
            int i14 = aVar.f25652f;
            boolean e10 = i14 != -1 ? e(split[i14].trim()) : false;
            int i15 = aVar.f25653g;
            boolean e11 = i15 != -1 ? e(split[i15].trim()) : false;
            int i16 = aVar.f25654h;
            return new c(trim, d4, f10, g4, e4, e10, e11, i16 != -1 ? e(split[i16].trim()) : false);
        } catch (RuntimeException e12) {
            StringBuilder sb = new StringBuilder(str.length() + 36);
            sb.append("Skipping malformed 'Style:' line: '");
            sb.append(str);
            sb.append("'");
            w.o(f25628i, sb.toString(), e12);
            return null;
        }
    }

    private static boolean c(int i4) {
        switch (i4) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (c(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        String valueOf = String.valueOf(str);
        w.n(f25628i, valueOf.length() != 0 ? "Ignoring unknown alignment: ".concat(valueOf) : new String("Ignoring unknown alignment: "));
        return -1;
    }

    private static boolean e(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e4) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
            sb.append("Failed to parse boolean value: '");
            sb.append(str);
            sb.append("'");
            w.o(f25628i, sb.toString(), e4);
            return false;
        }
    }

    @Nullable
    @ColorInt
    public static Integer f(String str) {
        long parseLong;
        try {
            if (str.startsWith("&H")) {
                parseLong = Long.parseLong(str.substring(2), 16);
            } else {
                parseLong = Long.parseLong(str);
            }
            com.google.android.exoplayer2.util.a.a(parseLong <= 4294967295L);
            return Integer.valueOf(Color.argb(f.d(((parseLong >> 24) & 255) ^ 255), f.d(parseLong & 255), f.d((parseLong >> 8) & 255), f.d((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e4) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36);
            sb.append("Failed to parse color expression: '");
            sb.append(str);
            sb.append("'");
            w.o(f25628i, sb.toString(), e4);
            return null;
        }
    }

    private static float g(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e4) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 29);
            sb.append("Failed to parse font size: '");
            sb.append(str);
            sb.append("'");
            w.o(f25628i, sb.toString(), e4);
            return -3.4028235E38f;
        }
    }
}
