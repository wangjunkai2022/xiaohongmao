package com.hbb20;

import android.content.Context;
import android.util.SparseArray;
import com.hbb20.CountryCodePicker;
import java.util.HashMap;
import java.util.Map;

/* compiled from: CCPCountryGroup.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: d  reason: collision with root package name */
    private static SparseArray<c> f37098d;

    /* renamed from: a  reason: collision with root package name */
    String f37099a;

    /* renamed from: b  reason: collision with root package name */
    int f37100b;

    /* renamed from: c  reason: collision with root package name */
    private HashMap<String, String> f37101c;

    private c(String defaultNameCode, int areaCodeLength, HashMap<String, String> nameCodeToAreaCodesMap) {
        this.f37099a = defaultNameCode;
        this.f37100b = areaCodeLength;
        this.f37101c = nameCodeToAreaCodesMap;
    }

    private static void a() {
        HashMap hashMap = new HashMap();
        hashMap.put("ag", "268");
        hashMap.put("ai", "264");
        hashMap.put("as", "684");
        hashMap.put("bb", "246");
        hashMap.put("bm", "441");
        hashMap.put("bs", "242");
        hashMap.put("ca", "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/601/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/");
        hashMap.put("dm", "767");
        hashMap.put("do", "809/829/849");
        hashMap.put("gd", "473");
        hashMap.put("gu", "671");
        hashMap.put("jm", "876");
        hashMap.put("kn", "869");
        hashMap.put("ky", "345");
        hashMap.put("lc", "758");
        hashMap.put("mp", "670");
        hashMap.put("ms", "664");
        hashMap.put("pr", "787");
        hashMap.put("sx", "721");
        hashMap.put("tc", "649");
        hashMap.put(com.google.android.exoplayer2.text.ttml.d.f25722n, "868");
        hashMap.put("vc", "784");
        hashMap.put("vg", "284");
        hashMap.put("vi", "340");
        f37098d.put(1, new c("us", 3, hashMap));
    }

    private static void b() {
        HashMap hashMap = new HashMap();
        hashMap.put("ax", "18");
        f37098d.put(358, new c("fi", 2, hashMap));
    }

    private static void c() {
        HashMap hashMap = new HashMap();
        hashMap.put("gg", "1481");
        hashMap.put("im", "1624");
        hashMap.put("je", "1534");
        f37098d.put(44, new c("gb", 4, hashMap));
    }

    public static c e(int countryCode) {
        if (f37098d == null) {
            f();
        }
        return f37098d.get(countryCode);
    }

    private static void f() {
        f37098d = new SparseArray<>();
        a();
        c();
        b();
    }

    public b d(Context context, CountryCodePicker.Language language, String areaCode) {
        String str = this.f37099a;
        for (Map.Entry<String, String> entry : this.f37101c.entrySet()) {
            if (entry.getValue().contains(areaCode)) {
                str = entry.getKey();
            }
        }
        return b.h(context, language, str);
    }
}
