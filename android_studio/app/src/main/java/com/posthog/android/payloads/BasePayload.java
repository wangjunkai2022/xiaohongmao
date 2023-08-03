package com.posthog.android.payloads;

import a.f0;
import a.g0;
import a.j;
import com.posthog.android.internal.Utils;
import com.posthog.android.x;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes3.dex */
public abstract class BasePayload extends x {

    /* renamed from: b  reason: collision with root package name */
    static final String f47553b = "type";

    /* renamed from: c  reason: collision with root package name */
    static final String f47554c = "event";

    /* renamed from: d  reason: collision with root package name */
    static final String f47555d = "message_id";

    /* renamed from: e  reason: collision with root package name */
    static final String f47556e = "properties";

    /* renamed from: f  reason: collision with root package name */
    static final String f47557f = "timestamp";

    /* renamed from: g  reason: collision with root package name */
    static final String f47558g = "distinct_id";

    /* loaded from: classes3.dex */
    public enum Type {
        alias,
        identify,
        screen,
        capture,
        group
    }

    /* loaded from: classes3.dex */
    public static abstract class a<P extends BasePayload, B extends a> {

        /* renamed from: a  reason: collision with root package name */
        private String f47560a;

        /* renamed from: b  reason: collision with root package name */
        private String f47561b;

        /* renamed from: c  reason: collision with root package name */
        private Date f47562c;

        /* renamed from: d  reason: collision with root package name */
        private Map<String, Object> f47563d;

        /* renamed from: e  reason: collision with root package name */
        protected String f47564e;

        /* renamed from: f  reason: collision with root package name */
        private Map<String, Object> f47565f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        @f0
        public B a(@f0 String str) {
            this.f47564e = Utils.b(str, "anonymousId");
            return h();
        }

        @j
        @f0
        public P b() {
            if (Utils.w(this.f47560a) && Utils.w(this.f47564e)) {
                throw new NullPointerException("either distinctId or anonymousId is required");
            }
            if (Utils.w(this.f47561b)) {
                this.f47561b = UUID.randomUUID().toString();
            }
            if (this.f47562c == null) {
                this.f47562c = new Date();
            }
            if (Utils.y(this.f47563d)) {
                this.f47563d = Collections.emptyMap();
            }
            if (Utils.y(this.f47565f)) {
                this.f47565f = Collections.emptyMap();
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(this.f47565f);
            linkedHashMap.putAll(this.f47563d);
            String str = this.f47560a;
            if (Utils.w(str)) {
                str = this.f47564e;
            }
            return g(this.f47561b, this.f47562c, linkedHashMap, str);
        }

        @f0
        public B c(@f0 Map<String, ?> map) {
            Utils.a(map, "context");
            this.f47565f = Collections.unmodifiableMap(new LinkedHashMap(map));
            return h();
        }

        @f0
        public B d(@f0 String str) {
            this.f47560a = Utils.b(str, "distinctId");
            return h();
        }

        @f0
        public B e(@f0 String str) {
            Utils.b(str, "messageId");
            this.f47561b = str;
            return h();
        }

        @f0
        public B f(@f0 Map<String, ?> map) {
            Utils.a(map, BasePayload.f47556e);
            this.f47563d = Collections.unmodifiableMap(new LinkedHashMap(map));
            return h();
        }

        abstract P g(@f0 String str, @f0 Date date, @f0 Map<String, Object> map, @g0 String str2);

        abstract B h();

        @f0
        public B i(@f0 Date date) {
            Utils.a(date, "timestamp");
            this.f47562c = date;
            return h();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(BasePayload basePayload) {
            this.f47561b = basePayload.u();
            this.f47562c = basePayload.x();
            this.f47563d = basePayload.v();
            this.f47560a = basePayload.s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BasePayload(@f0 Type type, @f0 String str, @f0 String str2, @f0 Date date, @f0 Map<String, Object> map, @g0 String str3) {
        put("type", type);
        put("event", str);
        put(f47555d, str2);
        put("timestamp", Utils.H(date));
        put(f47556e, map);
        put(f47558g, str3);
    }

    @f0
    public Type A() {
        return (Type) f(Type.class, "type");
    }

    @g0
    public String s() {
        return k(f47558g);
    }

    @g0
    public String t() {
        return k("event");
    }

    @f0
    public String u() {
        return k(f47555d);
    }

    public x v() {
        return m(f47556e, x.class);
    }

    @Override // com.posthog.android.x
    /* renamed from: w */
    public BasePayload o(String str, Object obj) {
        super.o(str, obj);
        return this;
    }

    @g0
    public Date x() {
        String k10 = k("timestamp");
        if (Utils.w(k10)) {
            return null;
        }
        return Utils.C(k10);
    }

    @f0
    public abstract a y();
}
