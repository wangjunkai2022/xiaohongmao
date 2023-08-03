package io.sentry;

import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: ProfilingTransactionData.java */
@a.c
/* loaded from: classes4.dex */
public final class n2 implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private String f83478a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private String f83479b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private String f83480c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private Long f83481d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Long f83482e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private Long f83483f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Long f83484g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Map<String, Object> f83485h;

    /* compiled from: ProfilingTransactionData.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<n2> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public n2 a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            n2 n2Var = new n2();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -112372011:
                        if (I.equals(b.f83489d)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -84607876:
                        if (I.equals(b.f83490e)) {
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
                    case 1270300245:
                        if (I.equals("trace_id")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 1566648660:
                        if (I.equals(b.f83492g)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1902256621:
                        if (I.equals(b.f83491f)) {
                            c10 = 6;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        Long A0 = i1Var.A0();
                        if (A0 == null) {
                            break;
                        } else {
                            n2Var.f83481d = A0;
                            break;
                        }
                    case 1:
                        Long A02 = i1Var.A0();
                        if (A02 == null) {
                            break;
                        } else {
                            n2Var.f83482e = A02;
                            break;
                        }
                    case 2:
                        String E0 = i1Var.E0();
                        if (E0 == null) {
                            break;
                        } else {
                            n2Var.f83478a = E0;
                            break;
                        }
                    case 3:
                        String E02 = i1Var.E0();
                        if (E02 == null) {
                            break;
                        } else {
                            n2Var.f83480c = E02;
                            break;
                        }
                    case 4:
                        String E03 = i1Var.E0();
                        if (E03 == null) {
                            break;
                        } else {
                            n2Var.f83479b = E03;
                            break;
                        }
                    case 5:
                        Long A03 = i1Var.A0();
                        if (A03 == null) {
                            break;
                        } else {
                            n2Var.f83484g = A03;
                            break;
                        }
                    case 6:
                        Long A04 = i1Var.A0();
                        if (A04 == null) {
                            break;
                        } else {
                            n2Var.f83483f = A04;
                            break;
                        }
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            n2Var.setUnknown(concurrentHashMap);
            i1Var.p();
            return n2Var;
        }
    }

    /* compiled from: ProfilingTransactionData.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83486a = "id";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83487b = "trace_id";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83488c = "name";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83489d = "relative_start_ns";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83490e = "relative_end_ns";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83491f = "relative_cpu_start_ms";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83492g = "relative_cpu_end_ms";
    }

    public n2() {
        this(c2.K(), 0L, 0L);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n2.class != obj.getClass()) {
            return false;
        }
        n2 n2Var = (n2) obj;
        return this.f83478a.equals(n2Var.f83478a) && this.f83479b.equals(n2Var.f83479b) && this.f83480c.equals(n2Var.f83480c) && this.f83481d.equals(n2Var.f83481d) && this.f83483f.equals(n2Var.f83483f) && io.sentry.util.l.a(this.f83484g, n2Var.f83484g) && io.sentry.util.l.a(this.f83482e, n2Var.f83482e) && io.sentry.util.l.a(this.f83485h, n2Var.f83485h);
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83485h;
    }

    @m8.g
    public String h() {
        return this.f83478a;
    }

    public int hashCode() {
        return io.sentry.util.l.b(this.f83478a, this.f83479b, this.f83480c, this.f83481d, this.f83482e, this.f83483f, this.f83484g, this.f83485h);
    }

    @m8.g
    public String i() {
        return this.f83480c;
    }

    @m8.h
    public Long j() {
        return this.f83484g;
    }

    @m8.h
    public Long k() {
        return this.f83482e;
    }

    @m8.g
    public Long l() {
        return this.f83483f;
    }

    @m8.g
    public Long m() {
        return this.f83481d;
    }

    @m8.g
    public String n() {
        return this.f83479b;
    }

    public void o(@m8.g Long l10, @m8.g Long l11, @m8.g Long l12, @m8.g Long l13) {
        if (this.f83482e == null) {
            this.f83482e = Long.valueOf(l10.longValue() - l11.longValue());
            this.f83481d = Long.valueOf(this.f83481d.longValue() - l11.longValue());
            this.f83484g = Long.valueOf(l12.longValue() - l13.longValue());
            this.f83483f = Long.valueOf(this.f83483f.longValue() - l13.longValue());
        }
    }

    public void p(@m8.g String str) {
        this.f83478a = str;
    }

    public void q(@m8.g String str) {
        this.f83480c = str;
    }

    public void r(@m8.h Long l10) {
        this.f83482e = l10;
    }

    public void s(@m8.g Long l10) {
        this.f83481d = l10;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("id").q0(o0Var, this.f83478a);
        k1Var.A("trace_id").q0(o0Var, this.f83479b);
        k1Var.A("name").q0(o0Var, this.f83480c);
        k1Var.A(b.f83489d).q0(o0Var, this.f83481d);
        k1Var.A(b.f83490e).q0(o0Var, this.f83482e);
        k1Var.A(b.f83491f).q0(o0Var, this.f83483f);
        k1Var.A(b.f83492g).q0(o0Var, this.f83484g);
        Map<String, Object> map = this.f83485h;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83485h.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83485h = map;
    }

    public void t(@m8.g String str) {
        this.f83479b = str;
    }

    public n2(@m8.g w0 w0Var, @m8.g Long l10, @m8.g Long l11) {
        this.f83478a = w0Var.m().toString();
        this.f83479b = w0Var.E().j().toString();
        this.f83480c = w0Var.getName();
        this.f83481d = l10;
        this.f83483f = l11;
    }
}
