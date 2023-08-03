package com.google.android.exoplayer2.text.ttml;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TtmlNode.java */
/* loaded from: classes2.dex */
public final class d {
    public static final String A = "data";
    public static final String A0 = "filled";
    public static final String B = "information";
    public static final String B0 = "open";
    public static final String C = "";
    public static final String D = "id";
    public static final String E = "origin";
    public static final String F = "extent";
    public static final String G = "displayAlign";
    public static final String H = "backgroundColor";
    public static final String I = "fontStyle";
    public static final String J = "fontSize";
    public static final String K = "fontFamily";
    public static final String L = "fontWeight";
    public static final String M = "color";
    public static final String N = "ruby";
    public static final String O = "rubyPosition";
    public static final String P = "textDecoration";
    public static final String Q = "textAlign";
    public static final String R = "textCombine";
    public static final String S = "textEmphasis";
    public static final String T = "writingMode";
    public static final String U = "shear";
    public static final String V = "multiRowAlign";
    public static final String W = "container";
    public static final String X = "base";
    public static final String Y = "baseContainer";
    public static final String Z = "text";

    /* renamed from: a0  reason: collision with root package name */
    public static final String f25709a0 = "textContainer";

    /* renamed from: b0  reason: collision with root package name */
    public static final String f25710b0 = "delimiter";

    /* renamed from: c0  reason: collision with root package name */
    public static final String f25711c0 = "before";

    /* renamed from: d0  reason: collision with root package name */
    public static final String f25712d0 = "after";

    /* renamed from: e0  reason: collision with root package name */
    public static final String f25713e0 = "outside";

    /* renamed from: f0  reason: collision with root package name */
    public static final String f25714f0 = "linethrough";

    /* renamed from: g0  reason: collision with root package name */
    public static final String f25715g0 = "nolinethrough";

    /* renamed from: h0  reason: collision with root package name */
    public static final String f25716h0 = "underline";

    /* renamed from: i0  reason: collision with root package name */
    public static final String f25717i0 = "nounderline";

    /* renamed from: j0  reason: collision with root package name */
    public static final String f25718j0 = "italic";

    /* renamed from: k0  reason: collision with root package name */
    public static final String f25719k0 = "bold";

    /* renamed from: l0  reason: collision with root package name */
    public static final String f25720l0 = "left";

    /* renamed from: m0  reason: collision with root package name */
    public static final String f25721m0 = "center";

    /* renamed from: n  reason: collision with root package name */
    public static final String f25722n = "tt";

    /* renamed from: n0  reason: collision with root package name */
    public static final String f25723n0 = "right";

    /* renamed from: o  reason: collision with root package name */
    public static final String f25724o = "head";

    /* renamed from: o0  reason: collision with root package name */
    public static final String f25725o0 = "start";

    /* renamed from: p  reason: collision with root package name */
    public static final String f25726p = "body";

    /* renamed from: p0  reason: collision with root package name */
    public static final String f25727p0 = "end";

    /* renamed from: q  reason: collision with root package name */
    public static final String f25728q = "div";

    /* renamed from: q0  reason: collision with root package name */
    public static final String f25729q0 = "none";

    /* renamed from: r  reason: collision with root package name */
    public static final String f25730r = "p";

    /* renamed from: r0  reason: collision with root package name */
    public static final String f25731r0 = "all";

    /* renamed from: s  reason: collision with root package name */
    public static final String f25732s = "span";

    /* renamed from: s0  reason: collision with root package name */
    public static final String f25733s0 = "tb";

    /* renamed from: t  reason: collision with root package name */
    public static final String f25734t = "br";

    /* renamed from: t0  reason: collision with root package name */
    public static final String f25735t0 = "tblr";

    /* renamed from: u  reason: collision with root package name */
    public static final String f25736u = "style";

    /* renamed from: u0  reason: collision with root package name */
    public static final String f25737u0 = "tbrl";

    /* renamed from: v  reason: collision with root package name */
    public static final String f25738v = "styling";

    /* renamed from: v0  reason: collision with root package name */
    public static final String f25739v0 = "none";

    /* renamed from: w  reason: collision with root package name */
    public static final String f25740w = "layout";

    /* renamed from: w0  reason: collision with root package name */
    public static final String f25741w0 = "auto";

    /* renamed from: x  reason: collision with root package name */
    public static final String f25742x = "region";

    /* renamed from: x0  reason: collision with root package name */
    public static final String f25743x0 = "dot";

    /* renamed from: y  reason: collision with root package name */
    public static final String f25744y = "metadata";

    /* renamed from: y0  reason: collision with root package name */
    public static final String f25745y0 = "sesame";

    /* renamed from: z  reason: collision with root package name */
    public static final String f25746z = "image";

    /* renamed from: z0  reason: collision with root package name */
    public static final String f25747z0 = "circle";
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f25748a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f25749b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f25750c;

    /* renamed from: d  reason: collision with root package name */
    public final long f25751d;

    /* renamed from: e  reason: collision with root package name */
    public final long f25752e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final g f25753f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String[] f25754g;

    /* renamed from: h  reason: collision with root package name */
    public final String f25755h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f25756i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final d f25757j;

    /* renamed from: k  reason: collision with root package name */
    private final HashMap<String, Integer> f25758k;

    /* renamed from: l  reason: collision with root package name */
    private final HashMap<String, Integer> f25759l;

    /* renamed from: m  reason: collision with root package name */
    private List<d> f25760m;

    private d(@Nullable String str, @Nullable String str2, long j4, long j10, @Nullable g gVar, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable d dVar) {
        this.f25748a = str;
        this.f25749b = str2;
        this.f25756i = str4;
        this.f25753f = gVar;
        this.f25754g = strArr;
        this.f25750c = str2 != null;
        this.f25751d = j4;
        this.f25752e = j10;
        this.f25755h = (String) com.google.android.exoplayer2.util.a.g(str3);
        this.f25757j = dVar;
        this.f25758k = new HashMap<>();
        this.f25759l = new HashMap<>();
    }

    private void b(Map<String, g> map, a.c cVar, int i4, int i10, int i11) {
        g f10 = f.f(this.f25753f, this.f25754g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) cVar.k();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            cVar.A(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (f10 != null) {
            f.a(spannableStringBuilder2, i4, i10, f10, this.f25757j, map, i11);
            if ("p".equals(this.f25748a)) {
                if (f10.k() != Float.MAX_VALUE) {
                    cVar.y((f10.k() * (-90.0f)) / 100.0f);
                }
                if (f10.m() != null) {
                    cVar.B(f10.m());
                }
                if (f10.h() != null) {
                    cVar.v(f10.h());
                }
            }
        }
    }

    public static d c(@Nullable String str, long j4, long j10, @Nullable g gVar, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable d dVar) {
        return new d(str, null, j4, j10, gVar, strArr, str2, str3, dVar);
    }

    public static d d(String str) {
        return new d(null, f.b(str), com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b, null, null, "", null, null);
    }

    private static void e(SpannableStringBuilder spannableStringBuilder) {
        a[] aVarArr;
        for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), "");
        }
        for (int i4 = 0; i4 < spannableStringBuilder.length(); i4++) {
            if (spannableStringBuilder.charAt(i4) == ' ') {
                int i10 = i4 + 1;
                int i11 = i10;
                while (i11 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i11) == ' ') {
                    i11++;
                }
                int i12 = i11 - i10;
                if (i12 > 0) {
                    spannableStringBuilder.delete(i4, i12 + i4);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i13 = 0; i13 < spannableStringBuilder.length() - 1; i13++) {
            if (spannableStringBuilder.charAt(i13) == '\n') {
                int i14 = i13 + 1;
                if (spannableStringBuilder.charAt(i14) == ' ') {
                    spannableStringBuilder.delete(i14, i13 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i15 = 0; i15 < spannableStringBuilder.length() - 1; i15++) {
            if (spannableStringBuilder.charAt(i15) == ' ') {
                int i16 = i15 + 1;
                if (spannableStringBuilder.charAt(i16) == '\n') {
                    spannableStringBuilder.delete(i15, i16);
                }
            }
        }
        if (spannableStringBuilder.length() <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
            return;
        }
        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
    }

    private void i(TreeSet<Long> treeSet, boolean z9) {
        boolean equals = "p".equals(this.f25748a);
        boolean equals2 = f25728q.equals(this.f25748a);
        if (z9 || equals || (equals2 && this.f25756i != null)) {
            long j4 = this.f25751d;
            if (j4 != com.google.android.exoplayer2.i.f23649b) {
                treeSet.add(Long.valueOf(j4));
            }
            long j10 = this.f25752e;
            if (j10 != com.google.android.exoplayer2.i.f23649b) {
                treeSet.add(Long.valueOf(j10));
            }
        }
        if (this.f25760m == null) {
            return;
        }
        for (int i4 = 0; i4 < this.f25760m.size(); i4++) {
            this.f25760m.get(i4).i(treeSet, z9 || equals);
        }
    }

    private static SpannableStringBuilder k(String str, Map<String, a.c> map) {
        if (!map.containsKey(str)) {
            a.c cVar = new a.c();
            cVar.A(new SpannableStringBuilder());
            map.put(str, cVar);
        }
        return (SpannableStringBuilder) com.google.android.exoplayer2.util.a.g(map.get(str).k());
    }

    private void n(long j4, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f25755h)) {
            str = this.f25755h;
        }
        if (m(j4) && f25728q.equals(this.f25748a) && this.f25756i != null) {
            list.add(new Pair<>(str, this.f25756i));
            return;
        }
        for (int i4 = 0; i4 < g(); i4++) {
            f(i4).n(j4, str, list);
        }
    }

    private void o(long j4, Map<String, g> map, Map<String, e> map2, String str, Map<String, a.c> map3) {
        int i4;
        if (m(j4)) {
            String str2 = "".equals(this.f25755h) ? str : this.f25755h;
            Iterator<Map.Entry<String, Integer>> it = this.f25759l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int intValue = this.f25758k.containsKey(key) ? this.f25758k.get(key).intValue() : 0;
                int intValue2 = next.getValue().intValue();
                if (intValue != intValue2) {
                    b(map, (a.c) com.google.android.exoplayer2.util.a.g(map3.get(key)), intValue, intValue2, ((e) com.google.android.exoplayer2.util.a.g(map2.get(str2))).f25770j);
                }
            }
            for (i4 = 0; i4 < g(); i4++) {
                f(i4).o(j4, map, map2, str2, map3);
            }
        }
    }

    private void p(long j4, boolean z9, String str, Map<String, a.c> map) {
        this.f25758k.clear();
        this.f25759l.clear();
        if (f25744y.equals(this.f25748a)) {
            return;
        }
        if (!"".equals(this.f25755h)) {
            str = this.f25755h;
        }
        if (this.f25750c && z9) {
            k(str, map).append((CharSequence) com.google.android.exoplayer2.util.a.g(this.f25749b));
        } else if (f25734t.equals(this.f25748a) && z9) {
            k(str, map).append('\n');
        } else if (m(j4)) {
            for (Map.Entry<String, a.c> entry : map.entrySet()) {
                this.f25758k.put(entry.getKey(), Integer.valueOf(((CharSequence) com.google.android.exoplayer2.util.a.g(entry.getValue().k())).length()));
            }
            boolean equals = "p".equals(this.f25748a);
            for (int i4 = 0; i4 < g(); i4++) {
                f(i4).p(j4, z9 || equals, str, map);
            }
            if (equals) {
                f.c(k(str, map));
            }
            for (Map.Entry<String, a.c> entry2 : map.entrySet()) {
                this.f25759l.put(entry2.getKey(), Integer.valueOf(((CharSequence) com.google.android.exoplayer2.util.a.g(entry2.getValue().k())).length()));
            }
        }
    }

    public void a(d dVar) {
        if (this.f25760m == null) {
            this.f25760m = new ArrayList();
        }
        this.f25760m.add(dVar);
    }

    public d f(int i4) {
        List<d> list = this.f25760m;
        if (list != null) {
            return list.get(i4);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List<d> list = this.f25760m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<com.google.android.exoplayer2.text.a> h(long j4, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        n(j4, this.f25755h, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j4, false, this.f25755h, treeMap);
        o(j4, map, map2, this.f25755h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                e eVar = (e) com.google.android.exoplayer2.util.a.g(map2.get(pair.first));
                arrayList2.add(new a.c().r(decodeByteArray).w(eVar.f25762b).x(0).t(eVar.f25763c, 0).u(eVar.f25765e).z(eVar.f25766f).s(eVar.f25767g).D(eVar.f25770j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) com.google.android.exoplayer2.util.a.g(map2.get(entry.getKey()));
            a.c cVar = (a.c) entry.getValue();
            e((SpannableStringBuilder) com.google.android.exoplayer2.util.a.g(cVar.k()));
            cVar.t(eVar2.f25763c, eVar2.f25764d);
            cVar.u(eVar2.f25765e);
            cVar.w(eVar2.f25762b);
            cVar.z(eVar2.f25766f);
            cVar.C(eVar2.f25769i, eVar2.f25768h);
            cVar.D(eVar2.f25770j);
            arrayList2.add(cVar.a());
        }
        return arrayList2;
    }

    public long[] j() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i4 = 0;
        i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i4] = it.next().longValue();
            i4++;
        }
        return jArr;
    }

    @Nullable
    public String[] l() {
        return this.f25754g;
    }

    public boolean m(long j4) {
        long j10 = this.f25751d;
        return (j10 == com.google.android.exoplayer2.i.f23649b && this.f25752e == com.google.android.exoplayer2.i.f23649b) || (j10 <= j4 && this.f25752e == com.google.android.exoplayer2.i.f23649b) || ((j10 == com.google.android.exoplayer2.i.f23649b && j4 < this.f25752e) || (j10 <= j4 && j4 < this.f25752e));
    }
}
