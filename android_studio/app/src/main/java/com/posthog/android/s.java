package com.posthog.android;

import android.content.Context;
import com.posthog.android.internal.Utils;
import com.posthog.android.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* compiled from: Properties.java */
/* loaded from: classes3.dex */
public class s extends x {

    /* renamed from: b  reason: collision with root package name */
    private static final String f47622b = "anonymousId";

    /* renamed from: c  reason: collision with root package name */
    private static final String f47623c = "distinctId";

    /* renamed from: d  reason: collision with root package name */
    private static final String f47624d = "groups";

    /* renamed from: e  reason: collision with root package name */
    private static final String f47625e = "$active_feature_flags";

    /* renamed from: f  reason: collision with root package name */
    private static final String f47626f = "$feature/";

    /* compiled from: Properties.java */
    /* loaded from: classes3.dex */
    static class a extends x.a<s> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Context context, b bVar, String str) {
            super(context, bVar, str, str, s.class);
        }

        @Override // com.posthog.android.x.a
        /* renamed from: f */
        public s a(Map<String, Object> map) {
            return new s(new Utils.NullableConcurrentHashMap(map));
        }
    }

    public s() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s u() {
        s sVar = new s(new Utils.NullableConcurrentHashMap());
        sVar.B(UUID.randomUUID().toString());
        return sVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s A(List<String> list) {
        return o(f47625e, list);
    }

    s B(String str) {
        return o(f47622b, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s C(String str) {
        return o(f47623c, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s D(String str, Object obj) {
        return o(String.format("%s%s", f47626f, str), obj);
    }

    s E(x xVar) {
        return o(f47624d, xVar);
    }

    @Override // com.posthog.android.x
    /* renamed from: F */
    public s o(String str, Object obj) {
        super.o(str, obj);
        return this;
    }

    public s G() {
        return new s(Collections.unmodifiableMap(new LinkedHashMap(this)));
    }

    public ArrayList<String> s(String str) {
        return (ArrayList) get(f47625e);
    }

    public String t() {
        return k(f47622b);
    }

    public String v() {
        String w9 = w();
        return Utils.w(w9) ? t() : w9;
    }

    public String w() {
        return k(f47623c);
    }

    public String x(String str) {
        return k(String.format("%s%s", f47626f, str));
    }

    public x y() {
        return l(f47624d);
    }

    public s(int i4) {
        super(i4);
    }

    s(Map<String, Object> map) {
        super(map);
    }
}
