package com.google.android.exoplayer2.text.webvtt;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: CssParser.java */
/* loaded from: classes2.dex */
final class a {

    /* renamed from: c  reason: collision with root package name */
    private static final String f25817c = "CssParser";

    /* renamed from: d  reason: collision with root package name */
    private static final String f25818d = "{";

    /* renamed from: e  reason: collision with root package name */
    private static final String f25819e = "}";

    /* renamed from: f  reason: collision with root package name */
    private static final String f25820f = "color";

    /* renamed from: g  reason: collision with root package name */
    private static final String f25821g = "background-color";

    /* renamed from: h  reason: collision with root package name */
    private static final String f25822h = "font-family";

    /* renamed from: i  reason: collision with root package name */
    private static final String f25823i = "font-weight";

    /* renamed from: j  reason: collision with root package name */
    private static final String f25824j = "ruby-position";

    /* renamed from: k  reason: collision with root package name */
    private static final String f25825k = "over";

    /* renamed from: l  reason: collision with root package name */
    private static final String f25826l = "under";

    /* renamed from: m  reason: collision with root package name */
    private static final String f25827m = "text-combine-upright";

    /* renamed from: n  reason: collision with root package name */
    private static final String f25828n = "all";

    /* renamed from: o  reason: collision with root package name */
    private static final String f25829o = "digits";

    /* renamed from: p  reason: collision with root package name */
    private static final String f25830p = "text-decoration";

    /* renamed from: q  reason: collision with root package name */
    private static final String f25831q = "bold";

    /* renamed from: r  reason: collision with root package name */
    private static final String f25832r = "underline";

    /* renamed from: s  reason: collision with root package name */
    private static final String f25833s = "font-style";

    /* renamed from: t  reason: collision with root package name */
    private static final String f25834t = "italic";

    /* renamed from: u  reason: collision with root package name */
    private static final Pattern f25835u = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: a  reason: collision with root package name */
    private final h0 f25836a = new h0();

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f25837b = new StringBuilder();

    private void a(d dVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int indexOf = str.indexOf(91);
        if (indexOf != -1) {
            Matcher matcher = f25835u.matcher(str.substring(indexOf));
            if (matcher.matches()) {
                dVar.A((String) com.google.android.exoplayer2.util.a.g(matcher.group(1)));
            }
            str = str.substring(0, indexOf);
        }
        String[] l12 = z0.l1(str, "\\.");
        String str2 = l12[0];
        int indexOf2 = str2.indexOf(35);
        if (indexOf2 != -1) {
            dVar.z(str2.substring(0, indexOf2));
            dVar.y(str2.substring(indexOf2 + 1));
        } else {
            dVar.z(str2);
        }
        if (l12.length > 1) {
            dVar.x((String[]) z0.U0(l12, 1, l12.length));
        }
    }

    private static boolean b(h0 h0Var) {
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        byte[] d4 = h0Var.d();
        if (e4 + 2 > f10) {
            return false;
        }
        int i4 = e4 + 1;
        if (d4[e4] != 47) {
            return false;
        }
        int i10 = i4 + 1;
        if (d4[i4] != 42) {
            return false;
        }
        while (true) {
            int i11 = i10 + 1;
            if (i11 < f10) {
                if (((char) d4[i10]) == '*' && ((char) d4[i11]) == '/') {
                    i10 = i11 + 1;
                    f10 = i10;
                } else {
                    i10 = i11;
                }
            } else {
                h0Var.T(f10 - h0Var.e());
                return true;
            }
        }
    }

    private static boolean c(h0 h0Var) {
        char j4 = j(h0Var, h0Var.e());
        if (j4 == '\t' || j4 == '\n' || j4 == '\f' || j4 == '\r' || j4 == ' ') {
            h0Var.T(1);
            return true;
        }
        return false;
    }

    private static String e(h0 h0Var, StringBuilder sb) {
        boolean z9 = false;
        sb.setLength(0);
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        while (e4 < f10 && !z9) {
            char c10 = (char) h0Var.d()[e4];
            if ((c10 < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && !((c10 >= '0' && c10 <= '9') || c10 == '#' || c10 == '-' || c10 == '.' || c10 == '_'))) {
                z9 = true;
            } else {
                e4++;
                sb.append(c10);
            }
        }
        h0Var.T(e4 - h0Var.e());
        return sb.toString();
    }

    @Nullable
    static String f(h0 h0Var, StringBuilder sb) {
        m(h0Var);
        if (h0Var.a() == 0) {
            return null;
        }
        String e4 = e(h0Var, sb);
        if ("".equals(e4)) {
            StringBuilder sb2 = new StringBuilder(1);
            sb2.append((char) h0Var.G());
            return sb2.toString();
        }
        return e4;
    }

    @Nullable
    private static String g(h0 h0Var, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z9 = false;
        while (!z9) {
            int e4 = h0Var.e();
            String f10 = f(h0Var, sb);
            if (f10 == null) {
                return null;
            }
            if (!"}".equals(f10) && !com.alipay.sdk.util.i.f6965b.equals(f10)) {
                sb2.append(f10);
            } else {
                h0Var.S(e4);
                z9 = true;
            }
        }
        return sb2.toString();
    }

    @Nullable
    private static String h(h0 h0Var, StringBuilder sb) {
        m(h0Var);
        if (h0Var.a() >= 5 && "::cue".equals(h0Var.D(5))) {
            int e4 = h0Var.e();
            String f10 = f(h0Var, sb);
            if (f10 == null) {
                return null;
            }
            if (f25818d.equals(f10)) {
                h0Var.S(e4);
                return "";
            }
            String k10 = "(".equals(f10) ? k(h0Var) : null;
            if (")".equals(f(h0Var, sb))) {
                return k10;
            }
            return null;
        }
        return null;
    }

    private static void i(h0 h0Var, d dVar, StringBuilder sb) {
        m(h0Var);
        String e4 = e(h0Var, sb);
        if (!"".equals(e4) && ":".equals(f(h0Var, sb))) {
            m(h0Var);
            String g4 = g(h0Var, sb);
            if (g4 == null || "".equals(g4)) {
                return;
            }
            int e10 = h0Var.e();
            String f10 = f(h0Var, sb);
            if (!com.alipay.sdk.util.i.f6965b.equals(f10)) {
                if (!"}".equals(f10)) {
                    return;
                }
                h0Var.S(e10);
            }
            if ("color".equals(e4)) {
                dVar.q(com.google.android.exoplayer2.util.f.b(g4));
            } else if (f25821g.equals(e4)) {
                dVar.n(com.google.android.exoplayer2.util.f.b(g4));
            } else {
                boolean z9 = true;
                if (f25824j.equals(e4)) {
                    if (f25825k.equals(g4)) {
                        dVar.w(1);
                    } else if (f25826l.equals(g4)) {
                        dVar.w(2);
                    }
                } else if (f25827m.equals(e4)) {
                    if (!"all".equals(g4) && !g4.startsWith(f25829o)) {
                        z9 = false;
                    }
                    dVar.p(z9);
                } else if (f25830p.equals(e4)) {
                    if ("underline".equals(g4)) {
                        dVar.B(true);
                    }
                } else if (f25822h.equals(e4)) {
                    dVar.r(g4);
                } else if (f25823i.equals(e4)) {
                    if ("bold".equals(g4)) {
                        dVar.o(true);
                    }
                } else if (f25833s.equals(e4) && "italic".equals(g4)) {
                    dVar.u(true);
                }
            }
        }
    }

    private static char j(h0 h0Var, int i4) {
        return (char) h0Var.d()[i4];
    }

    private static String k(h0 h0Var) {
        int e4 = h0Var.e();
        int f10 = h0Var.f();
        boolean z9 = false;
        while (e4 < f10 && !z9) {
            int i4 = e4 + 1;
            z9 = ((char) h0Var.d()[e4]) == ')';
            e4 = i4;
        }
        return h0Var.D((e4 - 1) - h0Var.e()).trim();
    }

    static void l(h0 h0Var) {
        do {
        } while (!TextUtils.isEmpty(h0Var.q()));
    }

    static void m(h0 h0Var) {
        while (true) {
            for (boolean z9 = true; h0Var.a() > 0 && z9; z9 = false) {
                if (!c(h0Var) && !b(h0Var)) {
                }
            }
            return;
        }
    }

    public List<d> d(h0 h0Var) {
        this.f25837b.setLength(0);
        int e4 = h0Var.e();
        l(h0Var);
        this.f25836a.Q(h0Var.d(), h0Var.e());
        this.f25836a.S(e4);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String h4 = h(this.f25836a, this.f25837b);
            if (h4 == null || !f25818d.equals(f(this.f25836a, this.f25837b))) {
                return arrayList;
            }
            d dVar = new d();
            a(dVar, h4);
            String str = null;
            boolean z9 = false;
            while (!z9) {
                int e10 = this.f25836a.e();
                String f10 = f(this.f25836a, this.f25837b);
                boolean z10 = f10 == null || "}".equals(f10);
                if (!z10) {
                    this.f25836a.S(e10);
                    i(this.f25836a, dVar, this.f25837b);
                }
                str = f10;
                z9 = z10;
            }
            if ("}".equals(str)) {
                arrayList.add(dVar);
            }
        }
    }
}
