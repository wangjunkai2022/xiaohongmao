package com.google.android.exoplayer2.text.subrip;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.x;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: SubripDecoder.java */
/* loaded from: classes2.dex */
public final class a extends com.google.android.exoplayer2.text.c {
    private static final String A = "{\\an3}";
    private static final String B = "{\\an4}";
    private static final String C = "{\\an5}";
    private static final String D = "{\\an6}";
    private static final String E = "{\\an7}";
    private static final String F = "{\\an8}";
    private static final String G = "{\\an9}";

    /* renamed from: q  reason: collision with root package name */
    private static final float f25666q = 0.08f;

    /* renamed from: r  reason: collision with root package name */
    private static final float f25667r = 0.92f;

    /* renamed from: s  reason: collision with root package name */
    private static final float f25668s = 0.5f;

    /* renamed from: t  reason: collision with root package name */
    private static final String f25669t = "SubripDecoder";

    /* renamed from: u  reason: collision with root package name */
    private static final String f25670u = "(?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?";

    /* renamed from: v  reason: collision with root package name */
    private static final Pattern f25671v = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: w  reason: collision with root package name */
    private static final Pattern f25672w = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: x  reason: collision with root package name */
    private static final String f25673x = "\\{\\\\an[1-9]\\}";

    /* renamed from: y  reason: collision with root package name */
    private static final String f25674y = "{\\an1}";

    /* renamed from: z  reason: collision with root package name */
    private static final String f25675z = "{\\an2}";

    /* renamed from: o  reason: collision with root package name */
    private final StringBuilder f25676o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList<String> f25677p;

    public a() {
        super(f25669t);
        this.f25676o = new StringBuilder();
        this.f25677p = new ArrayList<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private com.google.android.exoplayer2.text.a B(Spanned spanned, @Nullable String str) {
        char c10;
        char c11;
        a.c A2 = new a.c().A(spanned);
        if (str == null) {
            return A2.a();
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals(f25674y)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -685620679:
                if (str.equals(f25675z)) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -685620648:
                if (str.equals(A)) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -685620617:
                if (str.equals(B)) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -685620586:
                if (str.equals(C)) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case -685620555:
                if (str.equals(D)) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -685620524:
                if (str.equals(E)) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -685620493:
                if (str.equals(F)) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -685620462:
                if (str.equals(G)) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 == 0 || c10 == 1 || c10 == 2) {
            A2.x(0);
        } else if (c10 != 3 && c10 != 4 && c10 != 5) {
            A2.x(1);
        } else {
            A2.x(2);
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals(f25674y)) {
                    c11 = 0;
                    break;
                }
                c11 = 65535;
                break;
            case -685620679:
                if (str.equals(f25675z)) {
                    c11 = 1;
                    break;
                }
                c11 = 65535;
                break;
            case -685620648:
                if (str.equals(A)) {
                    c11 = 2;
                    break;
                }
                c11 = 65535;
                break;
            case -685620617:
                if (str.equals(B)) {
                    c11 = 6;
                    break;
                }
                c11 = 65535;
                break;
            case -685620586:
                if (str.equals(C)) {
                    c11 = 7;
                    break;
                }
                c11 = 65535;
                break;
            case -685620555:
                if (str.equals(D)) {
                    c11 = '\b';
                    break;
                }
                c11 = 65535;
                break;
            case -685620524:
                if (str.equals(E)) {
                    c11 = 3;
                    break;
                }
                c11 = 65535;
                break;
            case -685620493:
                if (str.equals(F)) {
                    c11 = 4;
                    break;
                }
                c11 = 65535;
                break;
            case -685620462:
                if (str.equals(G)) {
                    c11 = 5;
                    break;
                }
                c11 = 65535;
                break;
            default:
                c11 = 65535;
                break;
        }
        if (c11 == 0 || c11 == 1 || c11 == 2) {
            A2.u(2);
        } else if (c11 != 3 && c11 != 4 && c11 != 5) {
            A2.u(1);
        } else {
            A2.u(0);
        }
        return A2.w(C(A2.i())).t(C(A2.f()), 0).a();
    }

    static float C(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 == 2) {
                    return f25667r;
                }
                throw new IllegalArgumentException();
            }
            return 0.5f;
        }
        return 0.08f;
    }

    private static long D(Matcher matcher, int i4) {
        String group = matcher.group(i4 + 1);
        long parseLong = (group != null ? Long.parseLong(group) * 60 * 60 * 1000 : 0L) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.g(matcher.group(i4 + 2))) * 60 * 1000) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.g(matcher.group(i4 + 3))) * 1000);
        String group2 = matcher.group(i4 + 4);
        if (group2 != null) {
            parseLong += Long.parseLong(group2);
        }
        return parseLong * 1000;
    }

    private String E(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = f25672w.matcher(trim);
        int i4 = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i4;
            int length = group.length();
            sb.replace(start, start + length, "");
            i4 += length;
        }
        return sb.toString();
    }

    @Override // com.google.android.exoplayer2.text.c
    protected e z(byte[] bArr, int i4, boolean z9) {
        ArrayList arrayList = new ArrayList();
        x xVar = new x();
        h0 h0Var = new h0(bArr, i4);
        while (true) {
            String q9 = h0Var.q();
            int i10 = 0;
            if (q9 == null) {
                break;
            } else if (q9.length() != 0) {
                try {
                    Integer.parseInt(q9);
                    String q10 = h0Var.q();
                    if (q10 == null) {
                        w.n(f25669t, "Unexpected end");
                        break;
                    }
                    Matcher matcher = f25671v.matcher(q10);
                    if (matcher.matches()) {
                        xVar.a(D(matcher, 1));
                        xVar.a(D(matcher, 6));
                        this.f25676o.setLength(0);
                        this.f25677p.clear();
                        for (String q11 = h0Var.q(); !TextUtils.isEmpty(q11); q11 = h0Var.q()) {
                            if (this.f25676o.length() > 0) {
                                this.f25676o.append("<br>");
                            }
                            this.f25676o.append(E(q11, this.f25677p));
                        }
                        Spanned fromHtml = Html.fromHtml(this.f25676o.toString());
                        String str = null;
                        while (true) {
                            if (i10 >= this.f25677p.size()) {
                                break;
                            }
                            String str2 = this.f25677p.get(i10);
                            if (str2.matches(f25673x)) {
                                str = str2;
                                break;
                            }
                            i10++;
                        }
                        arrayList.add(B(fromHtml, str));
                        arrayList.add(com.google.android.exoplayer2.text.a.f25304r);
                    } else {
                        w.n(f25669t, q10.length() != 0 ? "Skipping invalid timing: ".concat(q10) : new String("Skipping invalid timing: "));
                    }
                } catch (NumberFormatException unused) {
                    w.n(f25669t, q9.length() != 0 ? "Skipping invalid index: ".concat(q9) : new String("Skipping invalid index: "));
                }
            }
        }
        return new b((com.google.android.exoplayer2.text.a[]) arrayList.toArray(new com.google.android.exoplayer2.text.a[0]), xVar.d());
    }
}
