package io.sentry;

import io.sentry.protocol.n;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: TraceContext.java */
@a.b
/* loaded from: classes4.dex */
public final class m5 implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.n f83450a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f83451b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final String f83452c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private final String f83453d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final String f83454e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private final String f83455f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private final String f83456g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private final String f83457h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Map<String, Object> f83458i;

    /* compiled from: TraceContext.java */
    /* loaded from: classes4.dex */
    public static final class b implements c1<m5> {
        private Exception c(String str, o0 o0Var) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            o0Var.b(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public m5 a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            String str;
            String str2;
            i1Var.b();
            d dVar = null;
            String str3 = null;
            io.sentry.protocol.n nVar = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            String str9 = null;
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -795593025:
                        if (I.equals(c.f83465g)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -147132913:
                        if (I.equals("user_id")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -85904877:
                        if (I.equals("environment")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3599307:
                        if (I.equals("user")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 153193045:
                        if (I.equals("sample_rate")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 1090594823:
                        if (I.equals("release")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1270300245:
                        if (I.equals("trace_id")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1904812937:
                        if (I.equals("public_key")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 2141246174:
                        if (I.equals("transaction")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        str4 = i1Var.E0();
                        break;
                    case 1:
                        str3 = i1Var.E0();
                        break;
                    case 2:
                        str7 = i1Var.E0();
                        break;
                    case 3:
                        dVar = (d) i1Var.D0(o0Var, new d.a());
                        break;
                    case 4:
                        str9 = i1Var.E0();
                        break;
                    case 5:
                        str6 = i1Var.E0();
                        break;
                    case 6:
                        nVar = new n.a().a(i1Var, o0Var);
                        break;
                    case 7:
                        str5 = i1Var.M();
                        break;
                    case '\b':
                        str8 = i1Var.E0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            if (nVar != null) {
                if (str5 != null) {
                    if (dVar != null) {
                        if (str3 == null) {
                            str3 = dVar.a();
                        }
                        if (str4 == null) {
                            str2 = dVar.b();
                            str = str3;
                            m5 m5Var = new m5(nVar, str5, str6, str7, str, str2, str8, str9);
                            m5Var.setUnknown(concurrentHashMap);
                            i1Var.p();
                            return m5Var;
                        }
                    }
                    str = str3;
                    str2 = str4;
                    m5 m5Var2 = new m5(nVar, str5, str6, str7, str, str2, str8, str9);
                    m5Var2.setUnknown(concurrentHashMap);
                    i1Var.p();
                    return m5Var2;
                }
                throw c("public_key", o0Var);
            }
            throw c("trace_id", o0Var);
        }
    }

    /* compiled from: TraceContext.java */
    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83459a = "trace_id";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83460b = "public_key";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83461c = "release";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83462d = "environment";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83463e = "user";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83464f = "user_id";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83465g = "user_segment";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83466h = "transaction";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83467i = "sample_rate";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TraceContext.java */
    @Deprecated
    /* loaded from: classes4.dex */
    public static final class d implements o1 {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private String f83468a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private String f83469b;
        @m8.h

        /* renamed from: c  reason: collision with root package name */
        private Map<String, Object> f83470c;

        /* compiled from: TraceContext.java */
        /* loaded from: classes4.dex */
        public static final class a implements c1<d> {
            @Override // io.sentry.c1
            @m8.g
            /* renamed from: b */
            public d a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
                i1Var.b();
                String str = null;
                String str2 = null;
                ConcurrentHashMap concurrentHashMap = null;
                while (i1Var.X() == JsonToken.NAME) {
                    String I = i1Var.I();
                    I.hashCode();
                    if (I.equals("id")) {
                        str = i1Var.E0();
                    } else if (!I.equals("segment")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                    } else {
                        str2 = i1Var.E0();
                    }
                }
                d dVar = new d(str, str2);
                dVar.setUnknown(concurrentHashMap);
                i1Var.p();
                return dVar;
            }
        }

        /* compiled from: TraceContext.java */
        /* loaded from: classes4.dex */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            public static final String f83471a = "id";

            /* renamed from: b  reason: collision with root package name */
            public static final String f83472b = "segment";
        }

        @m8.h
        public String a() {
            return this.f83468a;
        }

        @m8.h
        public String b() {
            return this.f83469b;
        }

        @Override // io.sentry.o1
        @m8.h
        public Map<String, Object> getUnknown() {
            return this.f83470c;
        }

        @Override // io.sentry.o1
        public void setUnknown(@m8.h Map<String, Object> map) {
            this.f83470c = map;
        }

        private d(@m8.h String str, @m8.h String str2) {
            this.f83468a = str;
            this.f83469b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m5(@m8.g io.sentry.protocol.n nVar, @m8.g String str) {
        this(nVar, str, null, null, null, null, null, null);
    }

    @m8.h
    private static String h(@m8.g SentryOptions sentryOptions, @m8.h io.sentry.protocol.w wVar) {
        if (!sentryOptions.isSendDefaultPii() || wVar == null) {
            return null;
        }
        return wVar.j();
    }

    @m8.h
    public String a() {
        return this.f83453d;
    }

    @m8.g
    public String b() {
        return this.f83451b;
    }

    @m8.h
    public String c() {
        return this.f83452c;
    }

    @m8.h
    public String d() {
        return this.f83457h;
    }

    @m8.g
    public io.sentry.protocol.n e() {
        return this.f83450a;
    }

    @m8.h
    public String f() {
        return this.f83456g;
    }

    @m8.h
    public String g() {
        return this.f83454e;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83458i;
    }

    @m8.h
    public String i() {
        return this.f83455f;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("trace_id").q0(o0Var, this.f83450a);
        k1Var.A("public_key").l0(this.f83451b);
        if (this.f83452c != null) {
            k1Var.A("release").l0(this.f83452c);
        }
        if (this.f83453d != null) {
            k1Var.A("environment").l0(this.f83453d);
        }
        if (this.f83454e != null) {
            k1Var.A("user_id").l0(this.f83454e);
        }
        if (this.f83455f != null) {
            k1Var.A(c.f83465g).l0(this.f83455f);
        }
        if (this.f83456g != null) {
            k1Var.A("transaction").l0(this.f83456g);
        }
        if (this.f83457h != null) {
            k1Var.A("sample_rate").l0(this.f83457h);
        }
        Map<String, Object> map = this.f83458i;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83458i.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83458i = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m5(@m8.g io.sentry.protocol.n nVar, @m8.g String str, @m8.h String str2, @m8.h String str3, @m8.h String str4, @m8.h String str5, @m8.h String str6, @m8.h String str7) {
        this.f83450a = nVar;
        this.f83451b = str;
        this.f83452c = str2;
        this.f83453d = str3;
        this.f83454e = str4;
        this.f83455f = str5;
        this.f83456g = str6;
        this.f83457h = str7;
    }
}
