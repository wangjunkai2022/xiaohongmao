package io.sentry;

import io.sentry.SentryLevel;
import io.sentry.e3;
import io.sentry.protocol.g;
import io.sentry.protocol.m;
import io.sentry.protocol.t;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: SentryEvent.java */
/* loaded from: classes4.dex */
public final class h4 extends e3 implements o1, m1 {
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private Date f83273q;
    @m8.h

    /* renamed from: r  reason: collision with root package name */
    private io.sentry.protocol.g f83274r;
    @m8.h

    /* renamed from: s  reason: collision with root package name */
    private String f83275s;
    @m8.h

    /* renamed from: t  reason: collision with root package name */
    private b5<io.sentry.protocol.t> f83276t;
    @m8.h

    /* renamed from: u  reason: collision with root package name */
    private b5<io.sentry.protocol.m> f83277u;
    @m8.h

    /* renamed from: v  reason: collision with root package name */
    private SentryLevel f83278v;
    @m8.h

    /* renamed from: w  reason: collision with root package name */
    private String f83279w;
    @m8.h

    /* renamed from: x  reason: collision with root package name */
    private List<String> f83280x;
    @m8.h

    /* renamed from: y  reason: collision with root package name */
    private Map<String, Object> f83281y;
    @m8.h

    /* renamed from: z  reason: collision with root package name */
    private Map<String, String> f83282z;

    /* compiled from: SentryEvent.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<h4> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public h4 a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            h4 h4Var = new h4();
            e3.a aVar = new e3.a();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1375934236:
                        if (I.equals(b.f83290h)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1337936983:
                        if (I.equals(b.f83286d)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1097337456:
                        if (I.equals(b.f83285c)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 55126294:
                        if (I.equals("timestamp")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 102865796:
                        if (I.equals("level")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 954925063:
                        if (I.equals("message")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1227433863:
                        if (I.equals(b.f83291i)) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1481625679:
                        if (I.equals(b.f83287e)) {
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
                        List list = (List) i1Var.C0();
                        if (list == null) {
                            break;
                        } else {
                            h4Var.f83280x = list;
                            break;
                        }
                    case 1:
                        i1Var.b();
                        i1Var.I();
                        h4Var.f83276t = new b5(i1Var.z0(o0Var, new t.a()));
                        i1Var.p();
                        break;
                    case 2:
                        h4Var.f83275s = i1Var.E0();
                        break;
                    case 3:
                        Date u02 = i1Var.u0(o0Var);
                        if (u02 == null) {
                            break;
                        } else {
                            h4Var.f83273q = u02;
                            break;
                        }
                    case 4:
                        h4Var.f83278v = (SentryLevel) i1Var.D0(o0Var, new SentryLevel.a());
                        break;
                    case 5:
                        h4Var.f83274r = (io.sentry.protocol.g) i1Var.D0(o0Var, new g.a());
                        break;
                    case 6:
                        h4Var.f83282z = io.sentry.util.a.e((Map) i1Var.C0());
                        break;
                    case 7:
                        i1Var.b();
                        i1Var.I();
                        h4Var.f83277u = new b5(i1Var.z0(o0Var, new m.a()));
                        i1Var.p();
                        break;
                    case '\b':
                        h4Var.f83279w = i1Var.E0();
                        break;
                    default:
                        if (!aVar.a(h4Var, I, i1Var, o0Var)) {
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            i1Var.G0(o0Var, concurrentHashMap, I);
                            break;
                        } else {
                            break;
                        }
                }
            }
            h4Var.setUnknown(concurrentHashMap);
            i1Var.p();
            return h4Var;
        }
    }

    /* compiled from: SentryEvent.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83283a = "timestamp";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83284b = "message";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83285c = "logger";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83286d = "threads";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83287e = "exception";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83288f = "level";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83289g = "transaction";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83290h = "fingerprint";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83291i = "modules";
    }

    h4(@m8.g io.sentry.protocol.n nVar, @m8.g Date date) {
        super(nVar);
        this.f83273q = date;
    }

    @m8.h
    public io.sentry.protocol.g A0() {
        return this.f83274r;
    }

    @m8.h
    public String B0(@m8.g String str) {
        Map<String, String> map = this.f83282z;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public Map<String, String> C0() {
        return this.f83282z;
    }

    @m8.h
    public List<io.sentry.protocol.t> D0() {
        b5<io.sentry.protocol.t> b5Var = this.f83276t;
        if (b5Var != null) {
            return b5Var.a();
        }
        return null;
    }

    public Date E0() {
        return (Date) this.f83273q.clone();
    }

    @m8.h
    public String F0() {
        return this.f83279w;
    }

    public boolean G0() {
        b5<io.sentry.protocol.m> b5Var = this.f83277u;
        if (b5Var != null) {
            for (io.sentry.protocol.m mVar : b5Var.a()) {
                if (mVar.g() != null && mVar.g().o() != null && !mVar.g().o().booleanValue()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public boolean H0() {
        b5<io.sentry.protocol.m> b5Var = this.f83277u;
        return (b5Var == null || b5Var.a().isEmpty()) ? false : true;
    }

    public void I0(@m8.g String str) {
        Map<String, String> map = this.f83282z;
        if (map != null) {
            map.remove(str);
        }
    }

    public void J0(@m8.h List<io.sentry.protocol.m> list) {
        this.f83277u = new b5<>(list);
    }

    public void K0(@m8.h List<String> list) {
        this.f83280x = list != null ? new ArrayList(list) : null;
    }

    public void L0(@m8.h SentryLevel sentryLevel) {
        this.f83278v = sentryLevel;
    }

    public void M0(@m8.h String str) {
        this.f83275s = str;
    }

    public void N0(@m8.h io.sentry.protocol.g gVar) {
        this.f83274r = gVar;
    }

    public void O0(@m8.g String str, @m8.g String str2) {
        if (this.f83282z == null) {
            this.f83282z = new HashMap();
        }
        this.f83282z.put(str, str2);
    }

    public void P0(@m8.h Map<String, String> map) {
        this.f83282z = io.sentry.util.a.f(map);
    }

    public void Q0(@m8.h List<io.sentry.protocol.t> list) {
        this.f83276t = new b5<>(list);
    }

    public void R0(@m8.h String str) {
        this.f83279w = str;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83281y;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("timestamp").q0(o0Var, this.f83273q);
        if (this.f83274r != null) {
            k1Var.A("message").q0(o0Var, this.f83274r);
        }
        if (this.f83275s != null) {
            k1Var.A(b.f83285c).l0(this.f83275s);
        }
        b5<io.sentry.protocol.t> b5Var = this.f83276t;
        if (b5Var != null && !b5Var.a().isEmpty()) {
            k1Var.A(b.f83286d);
            k1Var.h();
            k1Var.A("values").q0(o0Var, this.f83276t.a());
            k1Var.p();
        }
        b5<io.sentry.protocol.m> b5Var2 = this.f83277u;
        if (b5Var2 != null && !b5Var2.a().isEmpty()) {
            k1Var.A(b.f83287e);
            k1Var.h();
            k1Var.A("values").q0(o0Var, this.f83277u.a());
            k1Var.p();
        }
        if (this.f83278v != null) {
            k1Var.A("level").q0(o0Var, this.f83278v);
        }
        if (this.f83279w != null) {
            k1Var.A("transaction").l0(this.f83279w);
        }
        if (this.f83280x != null) {
            k1Var.A(b.f83290h).q0(o0Var, this.f83280x);
        }
        if (this.f83282z != null) {
            k1Var.A(b.f83291i).q0(o0Var, this.f83282z);
        }
        new e3.c().a(this, k1Var, o0Var);
        Map<String, Object> map = this.f83281y;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83281y.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83281y = map;
    }

    @m8.h
    public List<io.sentry.protocol.m> w0() {
        b5<io.sentry.protocol.m> b5Var = this.f83277u;
        if (b5Var == null) {
            return null;
        }
        return b5Var.a();
    }

    @m8.h
    public List<String> x0() {
        return this.f83280x;
    }

    @m8.h
    public SentryLevel y0() {
        return this.f83278v;
    }

    @m8.h
    public String z0() {
        return this.f83275s;
    }

    public h4(@m8.h Throwable th) {
        this();
        this.f83140j = th;
    }

    public h4() {
        this(new io.sentry.protocol.n(), k.c());
    }

    @m8.k
    public h4(@m8.g Date date) {
        this(new io.sentry.protocol.n(), date);
    }
}
