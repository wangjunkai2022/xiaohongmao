package com.alipay.sdk.authjs;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: g  reason: collision with root package name */
    public static final String f6836g = "CallInfo";

    /* renamed from: h  reason: collision with root package name */
    public static final String f6837h = "call";

    /* renamed from: i  reason: collision with root package name */
    public static final String f6838i = "callback";

    /* renamed from: j  reason: collision with root package name */
    public static final String f6839j = "bundleName";

    /* renamed from: k  reason: collision with root package name */
    public static final String f6840k = "clientId";

    /* renamed from: l  reason: collision with root package name */
    public static final String f6841l = "param";

    /* renamed from: m  reason: collision with root package name */
    public static final String f6842m = "func";

    /* renamed from: n  reason: collision with root package name */
    public static final String f6843n = "msgType";

    /* renamed from: a  reason: collision with root package name */
    public String f6844a;

    /* renamed from: b  reason: collision with root package name */
    public String f6845b;

    /* renamed from: c  reason: collision with root package name */
    public String f6846c;

    /* renamed from: d  reason: collision with root package name */
    public String f6847d;

    /* renamed from: e  reason: collision with root package name */
    public JSONObject f6848e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6849f = false;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.alipay.sdk.authjs.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class EnumC0038a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f6850a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f6851b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f6852c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f6853d = 4;

        /* renamed from: e  reason: collision with root package name */
        public static final int f6854e = 5;

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ int[] f6855f = {1, 2, 3, 4, 5};

        private EnumC0038a(String str, int i4) {
        }

        public static int[] a() {
            return (int[]) f6855f.clone();
        }
    }

    public a(String str) {
        this.f6847d = str;
    }

    private static String a(int i4) {
        int i10 = b.f6856a[i4 - 1];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? "none" : "runtime error" : "invalid parameter" : "function not found";
    }

    private void b(String str) {
        this.f6844a = str;
    }

    private void c(JSONObject jSONObject) {
        this.f6848e = jSONObject;
    }

    private void d(boolean z9) {
        this.f6849f = z9;
    }

    private boolean e() {
        return this.f6849f;
    }

    private String f() {
        return this.f6844a;
    }

    private void g(String str) {
        this.f6845b = str;
    }

    private String h() {
        return this.f6845b;
    }

    private void i(String str) {
        this.f6846c = str;
    }

    private String j() {
        return this.f6846c;
    }

    private void k(String str) {
        this.f6847d = str;
    }

    private String l() {
        return this.f6847d;
    }

    private JSONObject m() {
        return this.f6848e;
    }

    private String n() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(f6840k, this.f6844a);
        jSONObject.put(f6842m, this.f6846c);
        jSONObject.put(f6841l, this.f6848e);
        jSONObject.put(f6843n, this.f6847d);
        return jSONObject.toString();
    }
}
