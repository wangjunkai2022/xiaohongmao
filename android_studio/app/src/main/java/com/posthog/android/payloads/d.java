package com.posthog.android.payloads;

import a.f0;
import a.g0;
import com.posthog.android.internal.Utils;
import com.posthog.android.payloads.BasePayload;
import com.posthog.android.s;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: IdentifyPayload.java */
/* loaded from: classes3.dex */
public class d extends BasePayload {

    /* renamed from: h  reason: collision with root package name */
    static final String f47575h = "$set";

    /* renamed from: i  reason: collision with root package name */
    static final String f47576i = "$anon_distinct_id";

    /* compiled from: IdentifyPayload.java */
    /* loaded from: classes3.dex */
    public static class a extends BasePayload.a<d, a> {

        /* renamed from: g  reason: collision with root package name */
        private Map<String, Object> f47577g;

        public a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: j */
        public d g(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, String str2) {
            return new d(str, date, map, str2, this.f47564e, this.f47577g);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.posthog.android.payloads.BasePayload.a
        /* renamed from: k */
        public a h() {
            return this;
        }

        @f0
        public a l(@f0 Map<String, ?> map) {
            Utils.a(map, "userProperties");
            this.f47577g = Collections.unmodifiableMap(new LinkedHashMap(map));
            return this;
        }

        a(d dVar) {
            super(dVar);
            this.f47577g = dVar.C();
        }
    }

    d(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, @g0 String str2, @g0 String str3, @f0 Map<String, Object> map2) {
        super(BasePayload.Type.identify, "$identify", str, date, map, str2);
        put(f47575h, map2);
        map.put(f47576i, str3);
    }

    @Override // com.posthog.android.payloads.BasePayload
    @f0
    /* renamed from: B */
    public a y() {
        return new a(this);
    }

    @f0
    public s C() {
        return (s) m(f47575h, s.class);
    }

    @Override // com.posthog.android.x
    public String toString() {
        return "IdentifyPayload{\"distinctId=\"" + s() + "\"}";
    }
}
