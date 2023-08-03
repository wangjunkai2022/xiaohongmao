package com.posthog.android.payloads;

import a.f0;
import a.g0;
import com.posthog.android.internal.Utils;
import com.posthog.android.payloads.BasePayload;
import com.posthog.android.s;
import java.util.Date;
import java.util.Map;

/* compiled from: GroupPayload.java */
/* loaded from: classes3.dex */
public class c extends BasePayload {

    /* renamed from: h  reason: collision with root package name */
    static final String f47569h = "$group_type";

    /* renamed from: i  reason: collision with root package name */
    static final String f47570i = "$group_key";

    /* renamed from: j  reason: collision with root package name */
    static final String f47571j = "$group_set";

    /* compiled from: GroupPayload.java */
    /* loaded from: classes3.dex */
    public static class a extends BasePayload.a<c, a> {

        /* renamed from: g  reason: collision with root package name */
        private String f47572g;

        /* renamed from: h  reason: collision with root package name */
        private String f47573h;

        /* renamed from: i  reason: collision with root package name */
        private Map<String, Object> f47574i;

        public a() {
        }

        @f0
        public a j(@f0 String str) {
            this.f47573h = Utils.b(str, "groupKey");
            return this;
        }

        @f0
        public a k(@f0 Map<String, Object> map) {
            this.f47574i = (Map) Utils.a(map, "groupProperties");
            return this;
        }

        @f0
        public a l(@f0 String str) {
            this.f47572g = Utils.b(str, "groupType");
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: m */
        public c g(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, @g0 String str2) {
            return new c(str, date, map, str2, this.f47572g, this.f47573h, this.f47574i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: n */
        public a h() {
            return this;
        }

        a(c cVar) {
            super(cVar);
            this.f47572g = cVar.D();
            this.f47573h = cVar.B();
            this.f47574i = cVar.v();
        }
    }

    c(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, @g0 String str2, @f0 String str3, @f0 String str4, @g0 Map<String, Object> map2) {
        super(BasePayload.Type.group, "$groupidentify", str, date, map, str2);
        put(f47569h, str3);
        put(f47570i, str4);
        put(f47571j, map2);
    }

    @f0
    public String B() {
        return k(f47570i);
    }

    @g0
    public Map<String, Object> C() {
        return m(f47571j, s.class);
    }

    @f0
    public String D() {
        return k(f47569h);
    }

    @Override // com.posthog.android.payloads.BasePayload
    @f0
    /* renamed from: E */
    public a y() {
        return new a(this);
    }
}
