package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.protocol.s;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: SentryThread.java */
/* loaded from: classes4.dex */
public final class t implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Long f83847a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Integer f83848b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83849c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f83850d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Boolean f83851e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Boolean f83852f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Boolean f83853g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private s f83854h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Map<String, Object> f83855i;

    /* compiled from: SentryThread.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<t> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public t a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            t tVar = new t();
            i1Var.b();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1339353468:
                        if (I.equals(b.f83862g)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1165461084:
                        if (I.equals(b.f83857b)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3355:
                        if (I.equals("id")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3373707:
                        if (I.equals("name")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 109757585:
                        if (I.equals(b.f83859d)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 1025385094:
                        if (I.equals(b.f83860e)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1126940025:
                        if (I.equals(b.f83861f)) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 2055832509:
                        if (I.equals("stacktrace")) {
                            c10 = 7;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        tVar.f83853g = i1Var.t0();
                        break;
                    case 1:
                        tVar.f83848b = i1Var.y0();
                        break;
                    case 2:
                        tVar.f83847a = i1Var.A0();
                        break;
                    case 3:
                        tVar.f83849c = i1Var.E0();
                        break;
                    case 4:
                        tVar.f83850d = i1Var.E0();
                        break;
                    case 5:
                        tVar.f83851e = i1Var.t0();
                        break;
                    case 6:
                        tVar.f83852f = i1Var.t0();
                        break;
                    case 7:
                        tVar.f83854h = (s) i1Var.D0(o0Var, new s.a());
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            tVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return tVar;
        }
    }

    /* compiled from: SentryThread.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83856a = "id";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83857b = "priority";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83858c = "name";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83859d = "state";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83860e = "crashed";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83861f = "current";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83862g = "daemon";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83863h = "stacktrace";
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83855i;
    }

    @m8.h
    public Long i() {
        return this.f83847a;
    }

    @m8.h
    public String j() {
        return this.f83849c;
    }

    @m8.h
    public Integer k() {
        return this.f83848b;
    }

    @m8.h
    public s l() {
        return this.f83854h;
    }

    @m8.h
    public String m() {
        return this.f83850d;
    }

    @m8.h
    public Boolean n() {
        return this.f83851e;
    }

    @m8.h
    public Boolean o() {
        return this.f83852f;
    }

    @m8.h
    public Boolean p() {
        return this.f83853g;
    }

    public void q(@m8.h Boolean bool) {
        this.f83851e = bool;
    }

    public void r(@m8.h Boolean bool) {
        this.f83852f = bool;
    }

    public void s(@m8.h Boolean bool) {
        this.f83853g = bool;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83847a != null) {
            k1Var.A("id").h0(this.f83847a);
        }
        if (this.f83848b != null) {
            k1Var.A(b.f83857b).h0(this.f83848b);
        }
        if (this.f83849c != null) {
            k1Var.A("name").l0(this.f83849c);
        }
        if (this.f83850d != null) {
            k1Var.A(b.f83859d).l0(this.f83850d);
        }
        if (this.f83851e != null) {
            k1Var.A(b.f83860e).g0(this.f83851e);
        }
        if (this.f83852f != null) {
            k1Var.A(b.f83861f).g0(this.f83852f);
        }
        if (this.f83853g != null) {
            k1Var.A(b.f83862g).g0(this.f83853g);
        }
        if (this.f83854h != null) {
            k1Var.A("stacktrace").q0(o0Var, this.f83854h);
        }
        Map<String, Object> map = this.f83855i;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83855i.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83855i = map;
    }

    public void t(@m8.h Long l10) {
        this.f83847a = l10;
    }

    public void u(@m8.h String str) {
        this.f83849c = str;
    }

    public void v(@m8.h Integer num) {
        this.f83848b = num;
    }

    public void w(@m8.h s sVar) {
        this.f83854h = sVar;
    }

    public void x(@m8.h String str) {
        this.f83850d = str;
    }
}
