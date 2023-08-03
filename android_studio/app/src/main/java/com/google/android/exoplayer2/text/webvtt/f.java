package com.google.android.exoplayer2.text.webvtt;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import com.qennnsad.aknkaksd.data.bean.ThirdLoginPlatform;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: WebvttCueParser.java */
/* loaded from: classes2.dex */
public final class f {
    private static final int A = 2;
    static final float B = 0.5f;
    private static final String C = "WebvttCueParser";
    private static final Map<String, Integer> D;
    private static final Map<String, Integer> E;

    /* renamed from: a  reason: collision with root package name */
    private static final int f25873a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static final int f25874b = 2;

    /* renamed from: c  reason: collision with root package name */
    private static final int f25875c = 3;

    /* renamed from: d  reason: collision with root package name */
    private static final int f25876d = 4;

    /* renamed from: e  reason: collision with root package name */
    private static final int f25877e = 5;

    /* renamed from: f  reason: collision with root package name */
    public static final Pattern f25878f = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f25879g = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: h  reason: collision with root package name */
    private static final char f25880h = '<';

    /* renamed from: i  reason: collision with root package name */
    private static final char f25881i = '>';

    /* renamed from: j  reason: collision with root package name */
    private static final char f25882j = '/';

    /* renamed from: k  reason: collision with root package name */
    private static final char f25883k = '&';

    /* renamed from: l  reason: collision with root package name */
    private static final char f25884l = ';';

    /* renamed from: m  reason: collision with root package name */
    private static final char f25885m = ' ';

    /* renamed from: n  reason: collision with root package name */
    private static final String f25886n = "lt";

    /* renamed from: o  reason: collision with root package name */
    private static final String f25887o = "gt";

    /* renamed from: p  reason: collision with root package name */
    private static final String f25888p = "amp";

    /* renamed from: q  reason: collision with root package name */
    private static final String f25889q = "nbsp";

    /* renamed from: r  reason: collision with root package name */
    private static final String f25890r = "b";

    /* renamed from: s  reason: collision with root package name */
    private static final String f25891s = "c";

    /* renamed from: t  reason: collision with root package name */
    private static final String f25892t = "i";

    /* renamed from: u  reason: collision with root package name */
    private static final String f25893u = "lang";

    /* renamed from: v  reason: collision with root package name */
    private static final String f25894v = "ruby";

    /* renamed from: w  reason: collision with root package name */
    private static final String f25895w = "rt";

    /* renamed from: x  reason: collision with root package name */
    private static final String f25896x = "u";

    /* renamed from: y  reason: collision with root package name */
    private static final String f25897y = "v";

    /* renamed from: z  reason: collision with root package name */
    private static final int f25898z = 1;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator<b> f25899c = g.f25919a;

        /* renamed from: a  reason: collision with root package name */
        private final c f25900a;

        /* renamed from: b  reason: collision with root package name */
        private final int f25901b;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(b bVar, b bVar2) {
            return Integer.compare(bVar.f25900a.f25903b, bVar2.f25900a.f25903b);
        }

        private b(c cVar, int i4) {
            this.f25900a = cVar;
            this.f25901b = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f25902a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25903b;

        /* renamed from: c  reason: collision with root package name */
        public final String f25904c;

        /* renamed from: d  reason: collision with root package name */
        public final Set<String> f25905d;

        private c(String str, int i4, String str2, Set<String> set) {
            this.f25903b = i4;
            this.f25902a = str;
            this.f25904c = str2;
            this.f25905d = set;
        }

        public static c a(String str, int i4) {
            String str2;
            String trim = str.trim();
            com.google.android.exoplayer2.util.a.a(!trim.isEmpty());
            int indexOf = trim.indexOf(" ");
            if (indexOf == -1) {
                str2 = "";
            } else {
                String trim2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
                str2 = trim2;
            }
            String[] l12 = z0.l1(trim, "\\.");
            String str3 = l12[0];
            HashSet hashSet = new HashSet();
            for (int i10 = 1; i10 < l12.length; i10++) {
                hashSet.add(l12[i10]);
            }
            return new c(str3, i4, str2, hashSet);
        }

        public static c b() {
            return new c("", 0, "", Collections.emptySet());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes2.dex */
    public static final class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        public final int f25906a;

        /* renamed from: b  reason: collision with root package name */
        public final com.google.android.exoplayer2.text.webvtt.d f25907b;

        public d(int i4, com.google.android.exoplayer2.text.webvtt.d dVar) {
            this.f25906a = i4;
            this.f25907b = dVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            return Integer.compare(this.f25906a, dVar.f25906a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f25910c;

        /* renamed from: a  reason: collision with root package name */
        public long f25908a = 0;

        /* renamed from: b  reason: collision with root package name */
        public long f25909b = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f25911d = 2;

        /* renamed from: e  reason: collision with root package name */
        public float f25912e = -3.4028235E38f;

        /* renamed from: f  reason: collision with root package name */
        public int f25913f = 1;

        /* renamed from: g  reason: collision with root package name */
        public int f25914g = 0;

        /* renamed from: h  reason: collision with root package name */
        public float f25915h = -3.4028235E38f;

        /* renamed from: i  reason: collision with root package name */
        public int f25916i = Integer.MIN_VALUE;

        /* renamed from: j  reason: collision with root package name */
        public float f25917j = 1.0f;

        /* renamed from: k  reason: collision with root package name */
        public int f25918k = Integer.MIN_VALUE;

        private static float b(float f10, int i4) {
            int i10 = (f10 > (-3.4028235E38f) ? 1 : (f10 == (-3.4028235E38f) ? 0 : -1));
            if (i10 == 0 || i4 != 0 || (f10 >= 0.0f && f10 <= 1.0f)) {
                return i10 != 0 ? f10 : i4 == 0 ? 1.0f : -3.4028235E38f;
            }
            return 1.0f;
        }

        @Nullable
        private static Layout.Alignment c(int i4) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                StringBuilder sb = new StringBuilder(34);
                                sb.append("Unknown textAlignment: ");
                                sb.append(i4);
                                w.n(f.C, sb.toString());
                                return null;
                            }
                        }
                    }
                    return Layout.Alignment.ALIGN_OPPOSITE;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        private static float d(int i4, float f10) {
            if (i4 != 0) {
                if (i4 == 1) {
                    return f10 <= 0.5f ? f10 * 2.0f : (1.0f - f10) * 2.0f;
                } else if (i4 == 2) {
                    return f10;
                } else {
                    throw new IllegalStateException(String.valueOf(i4));
                }
            }
            return 1.0f - f10;
        }

        private static float e(int i4) {
            if (i4 != 4) {
                return i4 != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        private static int f(int i4) {
            if (i4 != 1) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        return i4 != 5 ? 1 : 2;
                    }
                    return 0;
                }
                return 2;
            }
            return 0;
        }

        public com.google.android.exoplayer2.text.webvtt.e a() {
            return new com.google.android.exoplayer2.text.webvtt.e(g().a(), this.f25908a, this.f25909b);
        }

        public a.c g() {
            float f10 = this.f25915h;
            if (f10 == -3.4028235E38f) {
                f10 = e(this.f25911d);
            }
            int i4 = this.f25916i;
            if (i4 == Integer.MIN_VALUE) {
                i4 = f(this.f25911d);
            }
            a.c D = new a.c().B(c(this.f25911d)).t(b(this.f25912e, this.f25913f), this.f25913f).u(this.f25914g).w(f10).x(i4).z(Math.min(this.f25917j, d(i4, f10))).D(this.f25918k);
            CharSequence charSequence = this.f25910c;
            if (charSequence != null) {
                D.A(charSequence);
            }
            return D;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        D = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        E = Collections.unmodifiableMap(hashMap2);
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i4, int i10) {
        for (String str : set) {
            Map<String, Integer> map = D;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str).intValue()), i4, i10, 33);
            } else {
                Map<String, Integer> map2 = E;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str).intValue()), i4, i10, 33);
                }
            }
        }
    }

    private static void b(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 3309:
                if (str.equals(f25887o)) {
                    c10 = 0;
                    break;
                }
                break;
            case 3464:
                if (str.equals(f25886n)) {
                    c10 = 1;
                    break;
                }
                break;
            case 96708:
                if (str.equals(f25888p)) {
                    c10 = 2;
                    break;
                }
                break;
            case 3374865:
                if (str.equals(f25889q)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                spannableStringBuilder.append('>');
                return;
            case 1:
                spannableStringBuilder.append('<');
                return;
            case 2:
                spannableStringBuilder.append('&');
                return;
            case 3:
                spannableStringBuilder.append(f25885m);
                return;
            default:
                StringBuilder sb = new StringBuilder(str.length() + 33);
                sb.append("ignoring unsupported entity: '&");
                sb.append(str);
                sb.append(";'");
                w.n(C, sb.toString());
                return;
        }
    }

    private static void c(SpannableStringBuilder spannableStringBuilder, @Nullable String str, c cVar, List<b> list, List<com.google.android.exoplayer2.text.webvtt.d> list2) {
        int i4 = i(list2, str, cVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, b.f25899c);
        int i10 = cVar.f25903b;
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            if (f25895w.equals(((b) arrayList.get(i12)).f25900a.f25902a)) {
                b bVar = (b) arrayList.get(i12);
                int g4 = g(i(list2, str, bVar.f25900a), i4, 1);
                int i13 = bVar.f25900a.f25903b - i11;
                int i14 = bVar.f25901b - i11;
                CharSequence subSequence = spannableStringBuilder.subSequence(i13, i14);
                spannableStringBuilder.delete(i13, i14);
                spannableStringBuilder.setSpan(new com.google.android.exoplayer2.text.span.c(subSequence.toString(), g4), i10, i13, 33);
                i11 += subSequence.length();
                i10 = i13;
            }
        }
    }

    private static void d(@Nullable String str, c cVar, List<b> list, SpannableStringBuilder spannableStringBuilder, List<com.google.android.exoplayer2.text.webvtt.d> list2) {
        int i4 = cVar.f25903b;
        int length = spannableStringBuilder.length();
        String str2 = cVar.f25902a;
        str2.hashCode();
        char c10 = 65535;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c10 = 0;
                    break;
                }
                break;
            case 98:
                if (str2.equals(f25890r)) {
                    c10 = 1;
                    break;
                }
                break;
            case 99:
                if (str2.equals(f25891s)) {
                    c10 = 2;
                    break;
                }
                break;
            case 105:
                if (str2.equals("i")) {
                    c10 = 3;
                    break;
                }
                break;
            case 117:
                if (str2.equals(f25896x)) {
                    c10 = 4;
                    break;
                }
                break;
            case 118:
                if (str2.equals(f25897y)) {
                    c10 = 5;
                    break;
                }
                break;
            case 3314158:
                if (str2.equals(f25893u)) {
                    c10 = 6;
                    break;
                }
                break;
            case 3511770:
                if (str2.equals("ruby")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 5:
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i4, length, 33);
                break;
            case 2:
                a(spannableStringBuilder, cVar.f25905d, i4, length);
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i4, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, length, 33);
                break;
            case 7:
                c(spannableStringBuilder, str, cVar, list, list2);
                break;
            default:
                return;
        }
        List<d> h4 = h(list2, str, cVar);
        for (int i10 = 0; i10 < h4.size(); i10++) {
            e(spannableStringBuilder, h4.get(i10).f25907b, i4, length);
        }
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, com.google.android.exoplayer2.text.webvtt.d dVar, int i4, int i10) {
        if (dVar == null) {
            return;
        }
        if (dVar.i() != -1) {
            com.google.android.exoplayer2.text.span.d.a(spannableStringBuilder, new StyleSpan(dVar.i()), i4, i10, 33);
        }
        if (dVar.l()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i4, i10, 33);
        }
        if (dVar.m()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i4, i10, 33);
        }
        if (dVar.k()) {
            com.google.android.exoplayer2.text.span.d.a(spannableStringBuilder, new ForegroundColorSpan(dVar.c()), i4, i10, 33);
        }
        if (dVar.j()) {
            com.google.android.exoplayer2.text.span.d.a(spannableStringBuilder, new BackgroundColorSpan(dVar.a()), i4, i10, 33);
        }
        if (dVar.d() != null) {
            com.google.android.exoplayer2.text.span.d.a(spannableStringBuilder, new TypefaceSpan(dVar.d()), i4, i10, 33);
        }
        int f10 = dVar.f();
        if (f10 == 1) {
            com.google.android.exoplayer2.text.span.d.a(spannableStringBuilder, new AbsoluteSizeSpan((int) dVar.e(), true), i4, i10, 33);
        } else if (f10 == 2) {
            com.google.android.exoplayer2.text.span.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.e()), i4, i10, 33);
        } else if (f10 == 3) {
            com.google.android.exoplayer2.text.span.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.e() / 100.0f), i4, i10, 33);
        }
        if (dVar.b()) {
            spannableStringBuilder.setSpan(new com.google.android.exoplayer2.text.span.a(), i4, i10, 33);
        }
    }

    private static int f(String str, int i4) {
        int indexOf = str.indexOf(62, i4);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    private static int g(int i4, int i10, int i11) {
        if (i4 != -1) {
            return i4;
        }
        if (i10 != -1) {
            return i10;
        }
        if (i11 != -1) {
            return i11;
        }
        throw new IllegalArgumentException();
    }

    private static List<d> h(List<com.google.android.exoplayer2.text.webvtt.d> list, @Nullable String str, c cVar) {
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < list.size(); i4++) {
            com.google.android.exoplayer2.text.webvtt.d dVar = list.get(i4);
            int h4 = dVar.h(str, cVar.f25902a, cVar.f25905d, cVar.f25904c);
            if (h4 > 0) {
                arrayList.add(new d(h4, dVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static int i(List<com.google.android.exoplayer2.text.webvtt.d> list, @Nullable String str, c cVar) {
        List<d> h4 = h(list, str, cVar);
        for (int i4 = 0; i4 < h4.size(); i4++) {
            com.google.android.exoplayer2.text.webvtt.d dVar = h4.get(i4).f25907b;
            if (dVar.g() != -1) {
                return dVar.g();
            }
        }
        return -1;
    }

    private static String j(String str) {
        String trim = str.trim();
        com.google.android.exoplayer2.util.a.a(!trim.isEmpty());
        return z0.m1(trim, "[ \\.]")[0];
    }

    private static boolean k(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 98:
                if (str.equals(f25890r)) {
                    c10 = 0;
                    break;
                }
                break;
            case 99:
                if (str.equals(f25891s)) {
                    c10 = 1;
                    break;
                }
                break;
            case 105:
                if (str.equals("i")) {
                    c10 = 2;
                    break;
                }
                break;
            case 117:
                if (str.equals(f25896x)) {
                    c10 = 3;
                    break;
                }
                break;
            case 118:
                if (str.equals(f25897y)) {
                    c10 = 4;
                    break;
                }
                break;
            case 3650:
                if (str.equals(f25895w)) {
                    c10 = 5;
                    break;
                }
                break;
            case 3314158:
                if (str.equals(f25893u)) {
                    c10 = 6;
                    break;
                }
                break;
            case 3511770:
                if (str.equals("ruby")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.exoplayer2.text.a l(CharSequence charSequence) {
        e eVar = new e();
        eVar.f25910c = charSequence;
        return eVar.g().a();
    }

    @Nullable
    public static com.google.android.exoplayer2.text.webvtt.e m(h0 h0Var, List<com.google.android.exoplayer2.text.webvtt.d> list) {
        String q9 = h0Var.q();
        if (q9 == null) {
            return null;
        }
        Pattern pattern = f25878f;
        Matcher matcher = pattern.matcher(q9);
        if (matcher.matches()) {
            return n(null, matcher, h0Var, list);
        }
        String q10 = h0Var.q();
        if (q10 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(q10);
        if (matcher2.matches()) {
            return n(q9.trim(), matcher2, h0Var, list);
        }
        return null;
    }

    @Nullable
    private static com.google.android.exoplayer2.text.webvtt.e n(@Nullable String str, Matcher matcher, h0 h0Var, List<com.google.android.exoplayer2.text.webvtt.d> list) {
        e eVar = new e();
        try {
            eVar.f25908a = i.d((String) com.google.android.exoplayer2.util.a.g(matcher.group(1)));
            eVar.f25909b = i.d((String) com.google.android.exoplayer2.util.a.g(matcher.group(2)));
            p((String) com.google.android.exoplayer2.util.a.g(matcher.group(3)), eVar);
            StringBuilder sb = new StringBuilder();
            String q9 = h0Var.q();
            while (!TextUtils.isEmpty(q9)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(q9.trim());
                q9 = h0Var.q();
            }
            eVar.f25910c = q(str, sb.toString(), list);
            return eVar.a();
        } catch (NumberFormatException unused) {
            String valueOf = String.valueOf(matcher.group());
            w.n(C, valueOf.length() != 0 ? "Skipping cue with bad header: ".concat(valueOf) : new String("Skipping cue with bad header: "));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a.c o(String str) {
        e eVar = new e();
        p(str, eVar);
        return eVar.g();
    }

    private static void p(String str, e eVar) {
        Matcher matcher = f25879g.matcher(str);
        while (matcher.find()) {
            String str2 = (String) com.google.android.exoplayer2.util.a.g(matcher.group(1));
            String str3 = (String) com.google.android.exoplayer2.util.a.g(matcher.group(2));
            try {
                if (ThirdLoginPlatform.PLATFORM_LINE.equals(str2)) {
                    s(str3, eVar);
                } else if ("align".equals(str2)) {
                    eVar.f25911d = v(str3);
                } else if ("position".equals(str2)) {
                    u(str3, eVar);
                } else if (com.qennnsad.aknkaksd.data.repository.f.f47745b.equals(str2)) {
                    eVar.f25917j = i.c(str3);
                } else if ("vertical".equals(str2)) {
                    eVar.f25918k = w(str3);
                } else {
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 21 + String.valueOf(str3).length());
                    sb.append("Unknown cue setting ");
                    sb.append(str2);
                    sb.append(":");
                    sb.append(str3);
                    w.n(C, sb.toString());
                }
            } catch (NumberFormatException unused) {
                String valueOf = String.valueOf(matcher.group());
                w.n(C, valueOf.length() != 0 ? "Skipping bad cue setting: ".concat(valueOf) : new String("Skipping bad cue setting: "));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpannedString q(@Nullable String str, String str2, List<com.google.android.exoplayer2.text.webvtt.d> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (i4 < str2.length()) {
            char charAt = str2.charAt(i4);
            if (charAt == '&') {
                i4++;
                int indexOf = str2.indexOf(59, i4);
                int indexOf2 = str2.indexOf(32, i4);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    b(str2.substring(i4, indexOf), spannableStringBuilder);
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i4 = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i4++;
            } else {
                int i10 = i4 + 1;
                if (i10 < str2.length()) {
                    boolean z9 = str2.charAt(i10) == '/';
                    i10 = f(str2, i10);
                    int i11 = i10 - 2;
                    boolean z10 = str2.charAt(i11) == '/';
                    int i12 = i4 + (z9 ? 2 : 1);
                    if (!z10) {
                        i11 = i10 - 1;
                    }
                    String substring = str2.substring(i12, i11);
                    if (!substring.trim().isEmpty()) {
                        String j4 = j(substring);
                        if (k(j4)) {
                            if (z9) {
                                while (!arrayDeque.isEmpty()) {
                                    c cVar = (c) arrayDeque.pop();
                                    d(str, cVar, arrayList, spannableStringBuilder, list);
                                    if (!arrayDeque.isEmpty()) {
                                        arrayList.add(new b(cVar, spannableStringBuilder.length()));
                                    } else {
                                        arrayList.clear();
                                    }
                                    if (cVar.f25902a.equals(j4)) {
                                        break;
                                    }
                                }
                            } else if (!z10) {
                                arrayDeque.push(c.a(substring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i4 = i10;
            }
        }
        while (!arrayDeque.isEmpty()) {
            d(str, (c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        d(str, c.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    private static int r(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25721m0)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25727p0)) {
                    c10 = 2;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25725o0)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 0;
            default:
                w.n(C, str.length() != 0 ? "Invalid anchor value: ".concat(str) : new String("Invalid anchor value: "));
                return Integer.MIN_VALUE;
        }
    }

    private static void s(String str, e eVar) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            eVar.f25914g = r(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        if (str.endsWith("%")) {
            eVar.f25912e = i.c(str);
            eVar.f25913f = 0;
            return;
        }
        eVar.f25912e = Integer.parseInt(str);
        eVar.f25913f = 1;
    }

    private static int t(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1842484672:
                if (str.equals("line-left")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25721m0)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1276788989:
                if (str.equals("line-right")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 3;
                    break;
                }
                break;
            case 100571:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25727p0)) {
                    c10 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25725o0)) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 5:
                return 0;
            case 1:
            case 3:
                return 1;
            case 2:
            case 4:
                return 2;
            default:
                w.n(C, str.length() != 0 ? "Invalid anchor value: ".concat(str) : new String("Invalid anchor value: "));
                return Integer.MIN_VALUE;
        }
    }

    private static void u(String str, e eVar) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            eVar.f25916i = t(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        eVar.f25915h = i.c(str);
    }

    private static int v(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25721m0)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25727p0)) {
                    c10 = 2;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25720l0)) {
                    c10 = 3;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25723n0)) {
                    c10 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25725o0)) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 1;
            default:
                w.n(C, str.length() != 0 ? "Invalid alignment value: ".concat(str) : new String("Invalid alignment value: "));
                return 2;
        }
    }

    private static int w(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        w.n(C, str.length() != 0 ? "Invalid 'vertical' value: ".concat(str) : new String("Invalid 'vertical' value: "));
        return Integer.MIN_VALUE;
    }
}
