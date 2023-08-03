package io.sentry;

import io.sentry.protocol.n;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: UserFeedback.java */
/* loaded from: classes4.dex */
public final class w5 implements o1, m1 {

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.n f84185a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f84186b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f84187c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f84188d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Object> f84189e;

    /* compiled from: UserFeedback.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<w5> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public w5 a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            io.sentry.protocol.n nVar = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -602415628:
                        if (I.equals(b.f84193d)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3373707:
                        if (I.equals("name")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 96619420:
                        if (I.equals("email")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 278118624:
                        if (I.equals("event_id")) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        str3 = i1Var.E0();
                        break;
                    case 1:
                        str = i1Var.E0();
                        break;
                    case 2:
                        str2 = i1Var.E0();
                        break;
                    case 3:
                        nVar = new n.a().a(i1Var, o0Var);
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        i1Var.G0(o0Var, hashMap, I);
                        break;
                }
            }
            i1Var.p();
            if (nVar != null) {
                w5 w5Var = new w5(nVar, str, str2, str3);
                w5Var.setUnknown(hashMap);
                return w5Var;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"event_id\"");
            o0Var.b(SentryLevel.ERROR, "Missing required field \"event_id\"", illegalStateException);
            throw illegalStateException;
        }
    }

    /* compiled from: UserFeedback.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f84190a = "event_id";

        /* renamed from: b  reason: collision with root package name */
        public static final String f84191b = "name";

        /* renamed from: c  reason: collision with root package name */
        public static final String f84192c = "email";

        /* renamed from: d  reason: collision with root package name */
        public static final String f84193d = "comments";
    }

    public w5(io.sentry.protocol.n nVar) {
        this(nVar, null, null, null);
    }

    @m8.h
    public String a() {
        return this.f84188d;
    }

    @m8.h
    public String b() {
        return this.f84187c;
    }

    public io.sentry.protocol.n c() {
        return this.f84185a;
    }

    @m8.h
    public String d() {
        return this.f84186b;
    }

    public void e(@m8.h String str) {
        this.f84188d = str;
    }

    public void f(@m8.h String str) {
        this.f84187c = str;
    }

    public void g(String str) {
        this.f84186b = str;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f84189e;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("event_id");
        this.f84185a.serialize(k1Var, o0Var);
        if (this.f84186b != null) {
            k1Var.A("name").l0(this.f84186b);
        }
        if (this.f84187c != null) {
            k1Var.A("email").l0(this.f84187c);
        }
        if (this.f84188d != null) {
            k1Var.A(b.f84193d).l0(this.f84188d);
        }
        Map<String, Object> map = this.f84189e;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f84189e.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f84189e = map;
    }

    public String toString() {
        return "UserFeedback{eventId=" + this.f84185a + ", name='" + this.f84186b + "', email='" + this.f84187c + "', comments='" + this.f84188d + "'}";
    }

    public w5(io.sentry.protocol.n nVar, @m8.h String str, @m8.h String str2, @m8.h String str3) {
        this.f84185a = nVar;
        this.f84186b = str;
        this.f84187c = str2;
        this.f84188d = str3;
    }
}
