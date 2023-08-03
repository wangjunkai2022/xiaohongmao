package io.sentry.protocol;

import io.sentry.SpanStatus;
import io.sentry.a5;
import io.sentry.c1;
import io.sentry.e3;
import io.sentry.e5;
import io.sentry.f5;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.o5;
import io.sentry.protocol.e;
import io.sentry.protocol.q;
import io.sentry.protocol.v;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: SentryTransaction.java */
@a.c
/* loaded from: classes4.dex */
public final class u extends e3 implements o1, m1 {
    @m8.h

    /* renamed from: q  reason: collision with root package name */
    private String f83864q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private Double f83865r;
    @m8.h

    /* renamed from: s  reason: collision with root package name */
    private Double f83866s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final List<q> f83867t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final String f83868u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final Map<String, e> f83869v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private v f83870w;
    @m8.h

    /* renamed from: x  reason: collision with root package name */
    private Map<String, Object> f83871x;

    /* compiled from: SentryTransaction.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<u> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public u a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            u uVar = new u("", Double.valueOf(0.0d), null, new ArrayList(), new HashMap(), new v(TransactionNameSource.CUSTOM.apiName()));
            e3.a aVar = new e3.a();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1526966919:
                        if (I.equals("start_timestamp")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -362243017:
                        if (I.equals("measurements")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3575610:
                        if (I.equals("type")) {
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
                    case 109638249:
                        if (I.equals(b.f83875d)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 508716399:
                        if (I.equals(b.f83878g)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 2141246174:
                        if (I.equals("transaction")) {
                            c10 = 6;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        try {
                            Double v02 = i1Var.v0();
                            if (v02 == null) {
                                break;
                            } else {
                                uVar.f83865r = v02;
                                break;
                            }
                        } catch (NumberFormatException unused) {
                            Date u02 = i1Var.u0(o0Var);
                            if (u02 == null) {
                                break;
                            } else {
                                uVar.f83865r = Double.valueOf(io.sentry.k.b(u02));
                                break;
                            }
                        }
                    case 1:
                        Map B0 = i1Var.B0(o0Var, new e.a());
                        if (B0 == null) {
                            break;
                        } else {
                            uVar.f83869v.putAll(B0);
                            break;
                        }
                    case 2:
                        i1Var.M();
                        break;
                    case 3:
                        try {
                            Double v03 = i1Var.v0();
                            if (v03 == null) {
                                break;
                            } else {
                                uVar.f83866s = v03;
                                break;
                            }
                        } catch (NumberFormatException unused2) {
                            Date u03 = i1Var.u0(o0Var);
                            if (u03 == null) {
                                break;
                            } else {
                                uVar.f83866s = Double.valueOf(io.sentry.k.b(u03));
                                break;
                            }
                        }
                    case 4:
                        List z02 = i1Var.z0(o0Var, new q.a());
                        if (z02 == null) {
                            break;
                        } else {
                            uVar.f83867t.addAll(z02);
                            break;
                        }
                    case 5:
                        uVar.f83870w = new v.a().a(i1Var, o0Var);
                        break;
                    case 6:
                        uVar.f83864q = i1Var.E0();
                        break;
                    default:
                        if (!aVar.a(uVar, I, i1Var, o0Var)) {
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
            uVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return uVar;
        }
    }

    /* compiled from: SentryTransaction.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83872a = "transaction";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83873b = "start_timestamp";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83874c = "timestamp";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83875d = "spans";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83876e = "type";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83877f = "measurements";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83878g = "transaction_info";
    }

    public u(@m8.g a5 a5Var) {
        super(a5Var.m());
        this.f83867t = new ArrayList();
        this.f83868u = "transaction";
        this.f83869v = new HashMap();
        io.sentry.util.l.c(a5Var, "sentryTracer is required");
        this.f83865r = Double.valueOf(io.sentry.k.l(a5Var.Y().d()));
        this.f83866s = Double.valueOf(io.sentry.k.l(a5Var.Y().c(a5Var.V())));
        this.f83864q = a5Var.getName();
        for (e5 e5Var : a5Var.T()) {
            if (Boolean.TRUE.equals(e5Var.g())) {
                this.f83867t.add(new q(e5Var));
            }
        }
        Contexts E = E();
        E.putAll(a5Var.l());
        f5 E2 = a5Var.E();
        E.setTrace(new f5(E2.j(), E2.g(), E2.c(), E2.b(), E2.a(), E2.f(), E2.h()));
        for (Map.Entry<String, String> entry : E2.i().entrySet()) {
            j0(entry.getKey(), entry.getValue());
        }
        Map<String, Object> U = a5Var.U();
        if (U != null) {
            for (Map.Entry<String, Object> entry2 : U.entrySet()) {
                c0(entry2.getKey(), entry2.getValue());
            }
        }
        this.f83870w = new v(a5Var.p().apiName());
    }

    @m8.g
    private BigDecimal t0(@m8.g Double d4) {
        return BigDecimal.valueOf(d4.doubleValue()).setScale(6, RoundingMode.DOWN);
    }

    @m8.h
    public String A0() {
        return this.f83864q;
    }

    @m8.g
    public String B0() {
        return "transaction";
    }

    public boolean C0() {
        return this.f83866s != null;
    }

    public boolean D0() {
        o5 v02 = v0();
        if (v02 == null) {
            return false;
        }
        return v02.d().booleanValue();
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83871x;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83864q != null) {
            k1Var.A("transaction").l0(this.f83864q);
        }
        k1Var.A("start_timestamp").q0(o0Var, t0(this.f83865r));
        if (this.f83866s != null) {
            k1Var.A("timestamp").q0(o0Var, t0(this.f83866s));
        }
        if (!this.f83867t.isEmpty()) {
            k1Var.A(b.f83875d).q0(o0Var, this.f83867t);
        }
        k1Var.A("type").l0("transaction");
        if (!this.f83869v.isEmpty()) {
            k1Var.A("measurements").q0(o0Var, this.f83869v);
        }
        k1Var.A(b.f83878g).q0(o0Var, this.f83870w);
        new e3.c().a(this, k1Var, o0Var);
        Map<String, Object> map = this.f83871x;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83871x.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83871x = map;
    }

    @m8.g
    public Map<String, e> u0() {
        return this.f83869v;
    }

    @m8.h
    public o5 v0() {
        f5 trace = E().getTrace();
        if (trace == null) {
            return null;
        }
        return trace.f();
    }

    @m8.g
    public List<q> w0() {
        return this.f83867t;
    }

    @m8.g
    public Double x0() {
        return this.f83865r;
    }

    @m8.h
    public SpanStatus y0() {
        f5 trace = E().getTrace();
        if (trace != null) {
            return trace.h();
        }
        return null;
    }

    @m8.h
    public Double z0() {
        return this.f83866s;
    }

    @a.c
    public u(@m8.h String str, @m8.g Double d4, @m8.h Double d10, @m8.g List<q> list, @m8.g Map<String, e> map, @m8.g v vVar) {
        ArrayList arrayList = new ArrayList();
        this.f83867t = arrayList;
        this.f83868u = "transaction";
        HashMap hashMap = new HashMap();
        this.f83869v = hashMap;
        this.f83864q = str;
        this.f83865r = d4;
        this.f83866s = d10;
        arrayList.addAll(list);
        hashMap.putAll(map);
        this.f83870w = vVar;
    }
}
