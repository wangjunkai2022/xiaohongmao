package com.posthog.android;

import android.content.Context;
import com.posthog.android.internal.Utils;
import com.posthog.android.x;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: Persistence.java */
/* loaded from: classes3.dex */
public class m extends x {

    /* renamed from: b  reason: collision with root package name */
    public static final String f47509b = "$enabled_feature_flags";

    /* renamed from: c  reason: collision with root package name */
    public static final String f47510c = "$groups";

    /* compiled from: Persistence.java */
    /* loaded from: classes3.dex */
    static class a extends x.a<m> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Context context, b bVar, String str) {
            super(context, bVar, str, str, m.class);
        }

        @Override // com.posthog.android.x.a
        /* renamed from: f */
        public m a(Map<String, Object> map) {
            return new m(new Utils.NullableConcurrentHashMap(map));
        }
    }

    public m() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static m s() {
        return new m();
    }

    public x t() {
        return l(f47509b);
    }

    public x u() {
        return l(f47510c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m v(Map map) {
        return o(f47509b, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m w(Map map) {
        return o(f47510c, map);
    }

    @Override // com.posthog.android.x
    /* renamed from: x */
    public m o(String str, Object obj) {
        super.o(str, obj);
        return this;
    }

    public m y() {
        return new m(Collections.unmodifiableMap(new LinkedHashMap(this)));
    }

    public m(int i4) {
        super(i4);
    }

    m(Map<String, Object> map) {
        super(map);
    }
}
