package io.sentry;

import io.sentry.n2;
import io.sentry.profilemeasurements.a;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: ProfilingTraceData.java */
@a.c
/* loaded from: classes4.dex */
public final class m2 implements o1, m1 {
    private static final String C = "production";
    @a.c
    public static final String D = "normal";
    @a.c
    public static final String E = "timeout";
    @a.c
    public static final String F = "backgrounded";
    @m8.h
    private String A;
    @m8.h
    private Map<String, Object> B;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final File f83391a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Callable<List<Integer>> f83392b;

    /* renamed from: c  reason: collision with root package name */
    private int f83393c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private String f83394d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private String f83395e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private String f83396f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private String f83397g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private String f83398h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private String f83399i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f83400j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private String f83401k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private List<Integer> f83402l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private String f83403m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private String f83404n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private String f83405o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private List<n2> f83406p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private String f83407q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private String f83408r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private String f83409s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private String f83410t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private String f83411u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private String f83412v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private String f83413w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private String f83414x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private String f83415y;
    @m8.g

    /* renamed from: z  reason: collision with root package name */
    private final Map<String, io.sentry.profilemeasurements.a> f83416z;

    /* compiled from: ProfilingTraceData.java */
    /* loaded from: classes4.dex */
    public static final class b implements c1<m2> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public m2 a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            ConcurrentHashMap concurrentHashMap = null;
            m2 m2Var = new m2();
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -2133529830:
                        if (I.equals(c.f83419c)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1981468849:
                        if (I.equals(c.f83417a)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1430655860:
                        if (I.equals(c.f83429m)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1172160413:
                        if (I.equals(c.f83418b)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -1102636175:
                        if (I.equals(c.f83437u)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case -716656436:
                        if (I.equals(c.f83421e)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case -591076352:
                        if (I.equals(c.f83420d)) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case -512511455:
                        if (I.equals(c.f83424h)) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case -478065584:
                        if (I.equals(c.f83431o)) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case -362243017:
                        if (I.equals("measurements")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case -332426004:
                        if (I.equals(c.f83427k)) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case -212264198:
                        if (I.equals(c.f83426j)) {
                            c10 = 11;
                            break;
                        }
                        break;
                    case -102985484:
                        if (I.equals(c.f83433q)) {
                            c10 = '\f';
                            break;
                        }
                        break;
                    case -102670958:
                        if (I.equals(c.f83432p)) {
                            c10 = '\r';
                            break;
                        }
                        break;
                    case -85904877:
                        if (I.equals("environment")) {
                            c10 = 14;
                            break;
                        }
                        break;
                    case 508853068:
                        if (I.equals(c.f83430n)) {
                            c10 = 15;
                            break;
                        }
                        break;
                    case 796476189:
                        if (I.equals(c.f83422f)) {
                            c10 = 16;
                            break;
                        }
                        break;
                    case 839674195:
                        if (I.equals(c.f83425i)) {
                            c10 = 17;
                            break;
                        }
                        break;
                    case 1010584092:
                        if (I.equals(c.f83435s)) {
                            c10 = 18;
                            break;
                        }
                        break;
                    case 1052553990:
                        if (I.equals(c.f83423g)) {
                            c10 = 19;
                            break;
                        }
                        break;
                    case 1163928186:
                        if (I.equals(c.f83440x)) {
                            c10 = 20;
                            break;
                        }
                        break;
                    case 1270300245:
                        if (I.equals("trace_id")) {
                            c10 = 21;
                            break;
                        }
                        break;
                    case 1874684019:
                        if (I.equals("platform")) {
                            c10 = 22;
                            break;
                        }
                        break;
                    case 1953158756:
                        if (I.equals(c.f83439w)) {
                            c10 = 23;
                            break;
                        }
                        break;
                    case 1954122069:
                        if (I.equals(c.f83434r)) {
                            c10 = 24;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        String E0 = i1Var.E0();
                        if (E0 == null) {
                            break;
                        } else {
                            m2Var.f83395e = E0;
                            break;
                        }
                    case 1:
                        Integer y02 = i1Var.y0();
                        if (y02 == null) {
                            break;
                        } else {
                            m2Var.f83393c = y02.intValue();
                            break;
                        }
                    case 2:
                        String E02 = i1Var.E0();
                        if (E02 == null) {
                            break;
                        } else {
                            m2Var.f83405o = E02;
                            break;
                        }
                    case 3:
                        String E03 = i1Var.E0();
                        if (E03 == null) {
                            break;
                        } else {
                            m2Var.f83394d = E03;
                            break;
                        }
                    case 4:
                        String E04 = i1Var.E0();
                        if (E04 == null) {
                            break;
                        } else {
                            m2Var.f83413w = E04;
                            break;
                        }
                    case 5:
                        String E05 = i1Var.E0();
                        if (E05 == null) {
                            break;
                        } else {
                            m2Var.f83397g = E05;
                            break;
                        }
                    case 6:
                        String E06 = i1Var.E0();
                        if (E06 == null) {
                            break;
                        } else {
                            m2Var.f83396f = E06;
                            break;
                        }
                    case 7:
                        Boolean t02 = i1Var.t0();
                        if (t02 == null) {
                            break;
                        } else {
                            m2Var.f83400j = t02.booleanValue();
                            break;
                        }
                    case '\b':
                        String E07 = i1Var.E0();
                        if (E07 == null) {
                            break;
                        } else {
                            m2Var.f83408r = E07;
                            break;
                        }
                    case '\t':
                        Map B0 = i1Var.B0(o0Var, new a.C0712a());
                        if (B0 == null) {
                            break;
                        } else {
                            m2Var.f83416z.putAll(B0);
                            break;
                        }
                    case '\n':
                        String E08 = i1Var.E0();
                        if (E08 == null) {
                            break;
                        } else {
                            m2Var.f83403m = E08;
                            break;
                        }
                    case 11:
                        List list = (List) i1Var.C0();
                        if (list == null) {
                            break;
                        } else {
                            m2Var.f83402l = list;
                            break;
                        }
                    case '\f':
                        String E09 = i1Var.E0();
                        if (E09 == null) {
                            break;
                        } else {
                            m2Var.f83409s = E09;
                            break;
                        }
                    case '\r':
                        String E010 = i1Var.E0();
                        if (E010 == null) {
                            break;
                        } else {
                            m2Var.f83410t = E010;
                            break;
                        }
                    case 14:
                        String E011 = i1Var.E0();
                        if (E011 == null) {
                            break;
                        } else {
                            m2Var.f83414x = E011;
                            break;
                        }
                    case 15:
                        String E012 = i1Var.E0();
                        if (E012 == null) {
                            break;
                        } else {
                            m2Var.f83407q = E012;
                            break;
                        }
                    case 16:
                        String E013 = i1Var.E0();
                        if (E013 == null) {
                            break;
                        } else {
                            m2Var.f83398h = E013;
                            break;
                        }
                    case 17:
                        String E014 = i1Var.E0();
                        if (E014 == null) {
                            break;
                        } else {
                            m2Var.f83401k = E014;
                            break;
                        }
                    case 18:
                        String E015 = i1Var.E0();
                        if (E015 == null) {
                            break;
                        } else {
                            m2Var.f83411u = E015;
                            break;
                        }
                    case 19:
                        String E016 = i1Var.E0();
                        if (E016 == null) {
                            break;
                        } else {
                            m2Var.f83399i = E016;
                            break;
                        }
                    case 20:
                        String E017 = i1Var.E0();
                        if (E017 == null) {
                            break;
                        } else {
                            m2Var.f83415y = E017;
                            break;
                        }
                    case 21:
                        String E018 = i1Var.E0();
                        if (E018 == null) {
                            break;
                        } else {
                            m2Var.f83412v = E018;
                            break;
                        }
                    case 22:
                        String E019 = i1Var.E0();
                        if (E019 == null) {
                            break;
                        } else {
                            m2Var.f83404n = E019;
                            break;
                        }
                    case 23:
                        String E020 = i1Var.E0();
                        if (E020 == null) {
                            break;
                        } else {
                            m2Var.A = E020;
                            break;
                        }
                    case 24:
                        List z02 = i1Var.z0(o0Var, new n2.a());
                        if (z02 == null) {
                            break;
                        } else {
                            m2Var.f83406p.addAll(z02);
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
            m2Var.setUnknown(concurrentHashMap);
            i1Var.p();
            return m2Var;
        }
    }

    /* compiled from: ProfilingTraceData.java */
    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83417a = "android_api_level";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83418b = "device_locale";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83419c = "device_manufacturer";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83420d = "device_model";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83421e = "device_os_build_number";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83422f = "device_os_name";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83423g = "device_os_version";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83424h = "device_is_emulator";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83425i = "architecture";

        /* renamed from: j  reason: collision with root package name */
        public static final String f83426j = "device_cpu_frequencies";

        /* renamed from: k  reason: collision with root package name */
        public static final String f83427k = "device_physical_memory_bytes";

        /* renamed from: l  reason: collision with root package name */
        public static final String f83428l = "platform";

        /* renamed from: m  reason: collision with root package name */
        public static final String f83429m = "build_id";

        /* renamed from: n  reason: collision with root package name */
        public static final String f83430n = "transaction_name";

        /* renamed from: o  reason: collision with root package name */
        public static final String f83431o = "duration_ns";

        /* renamed from: p  reason: collision with root package name */
        public static final String f83432p = "version_name";

        /* renamed from: q  reason: collision with root package name */
        public static final String f83433q = "version_code";

        /* renamed from: r  reason: collision with root package name */
        public static final String f83434r = "transactions";

        /* renamed from: s  reason: collision with root package name */
        public static final String f83435s = "transaction_id";

        /* renamed from: t  reason: collision with root package name */
        public static final String f83436t = "trace_id";

        /* renamed from: u  reason: collision with root package name */
        public static final String f83437u = "profile_id";

        /* renamed from: v  reason: collision with root package name */
        public static final String f83438v = "environment";

        /* renamed from: w  reason: collision with root package name */
        public static final String f83439w = "sampled_profile";

        /* renamed from: x  reason: collision with root package name */
        public static final String f83440x = "truncation_reason";

        /* renamed from: y  reason: collision with root package name */
        public static final String f83441y = "measurements";
    }

    private boolean Z() {
        return this.f83415y.equals(D) || this.f83415y.equals("timeout") || this.f83415y.equals(F);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List a0() throws Exception {
        return new ArrayList();
    }

    public int A() {
        return this.f83393c;
    }

    @m8.g
    public String B() {
        return this.f83405o;
    }

    @m8.g
    public String C() {
        return this.f83401k;
    }

    @m8.g
    public List<Integer> D() {
        return this.f83402l;
    }

    @m8.g
    public String E() {
        return this.f83394d;
    }

    @m8.g
    public String F() {
        return this.f83395e;
    }

    @m8.g
    public String G() {
        return this.f83396f;
    }

    @m8.g
    public String H() {
        return this.f83397g;
    }

    @m8.g
    public String I() {
        return this.f83398h;
    }

    @m8.g
    public String J() {
        return this.f83399i;
    }

    @m8.g
    public String K() {
        return this.f83403m;
    }

    @m8.g
    public String L() {
        return this.f83408r;
    }

    @m8.g
    public String M() {
        return this.f83414x;
    }

    @m8.g
    public Map<String, io.sentry.profilemeasurements.a> N() {
        return this.f83416z;
    }

    @m8.g
    public String O() {
        return this.f83404n;
    }

    @m8.g
    public String P() {
        return this.f83413w;
    }

    @m8.g
    public String Q() {
        return this.f83410t;
    }

    @m8.h
    public String R() {
        return this.A;
    }

    @m8.g
    public File S() {
        return this.f83391a;
    }

    @m8.g
    public String T() {
        return this.f83412v;
    }

    @m8.g
    public String U() {
        return this.f83411u;
    }

    @m8.g
    public String V() {
        return this.f83407q;
    }

    @m8.g
    public List<n2> W() {
        return this.f83406p;
    }

    @m8.g
    public String X() {
        return this.f83415y;
    }

    public boolean Y() {
        return this.f83400j;
    }

    public void b0() {
        try {
            this.f83402l = this.f83392b.call();
        } catch (Throwable unused) {
        }
    }

    public void c0(int i4) {
        this.f83393c = i4;
    }

    public void d0(@m8.g String str) {
        this.f83405o = str;
    }

    public void e0(@m8.g String str) {
        this.f83401k = str;
    }

    public void f0(@m8.g List<Integer> list) {
        this.f83402l = list;
    }

    public void g0(boolean z9) {
        this.f83400j = z9;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.B;
    }

    public void h0(@m8.g String str) {
        this.f83394d = str;
    }

    public void i0(@m8.g String str) {
        this.f83395e = str;
    }

    public void j0(@m8.g String str) {
        this.f83396f = str;
    }

    public void k0(@m8.g String str) {
        this.f83397g = str;
    }

    public void l0(@m8.g String str) {
        this.f83399i = str;
    }

    public void m0(@m8.g String str) {
        this.f83403m = str;
    }

    public void n0(@m8.g String str) {
        this.f83408r = str;
    }

    public void o0(@m8.g String str) {
        this.f83414x = str;
    }

    public void p0(@m8.g String str) {
        this.f83413w = str;
    }

    public void q0(@m8.g String str) {
        this.f83410t = str;
    }

    public void r0(@m8.h String str) {
        this.A = str;
    }

    public void s0(@m8.g String str) {
        this.f83412v = str;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A(c.f83417a).q0(o0Var, Integer.valueOf(this.f83393c));
        k1Var.A(c.f83418b).q0(o0Var, this.f83394d);
        k1Var.A(c.f83419c).l0(this.f83395e);
        k1Var.A(c.f83420d).l0(this.f83396f);
        k1Var.A(c.f83421e).l0(this.f83397g);
        k1Var.A(c.f83422f).l0(this.f83398h);
        k1Var.A(c.f83423g).l0(this.f83399i);
        k1Var.A(c.f83424h).n0(this.f83400j);
        k1Var.A(c.f83425i).q0(o0Var, this.f83401k);
        k1Var.A(c.f83426j).q0(o0Var, this.f83402l);
        k1Var.A(c.f83427k).l0(this.f83403m);
        k1Var.A("platform").l0(this.f83404n);
        k1Var.A(c.f83429m).l0(this.f83405o);
        k1Var.A(c.f83430n).l0(this.f83407q);
        k1Var.A(c.f83431o).l0(this.f83408r);
        k1Var.A(c.f83432p).l0(this.f83410t);
        k1Var.A(c.f83433q).l0(this.f83409s);
        if (!this.f83406p.isEmpty()) {
            k1Var.A(c.f83434r).q0(o0Var, this.f83406p);
        }
        k1Var.A(c.f83435s).l0(this.f83411u);
        k1Var.A("trace_id").l0(this.f83412v);
        k1Var.A(c.f83437u).l0(this.f83413w);
        k1Var.A("environment").l0(this.f83414x);
        k1Var.A(c.f83440x).l0(this.f83415y);
        if (this.A != null) {
            k1Var.A(c.f83439w).l0(this.A);
        }
        k1Var.A("measurements").q0(o0Var, this.f83416z);
        Map<String, Object> map = this.B;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.B.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.B = map;
    }

    public void t0(@m8.g String str) {
        this.f83411u = str;
    }

    public void u0(@m8.g String str) {
        this.f83407q = str;
    }

    public void v0(@m8.g List<n2> list) {
        this.f83406p = list;
    }

    public void w0(@m8.g String str) {
        this.f83415y = str;
    }

    private m2() {
        this(new File(com.facebook.imagepipeline.memory.g.f12618b0), c2.K());
    }

    public m2(@m8.g File file, @m8.g w0 w0Var) {
        this(file, new ArrayList(), w0Var, "0", 0, "", l2.f83378a, null, null, null, null, null, null, null, null, D, new HashMap());
    }

    public m2(@m8.g File file, @m8.g List<n2> list, @m8.g w0 w0Var, @m8.g String str, int i4, @m8.g String str2, @m8.g Callable<List<Integer>> callable, @m8.h String str3, @m8.h String str4, @m8.h String str5, @m8.h Boolean bool, @m8.h String str6, @m8.h String str7, @m8.h String str8, @m8.h String str9, @m8.g String str10, @m8.g Map<String, io.sentry.profilemeasurements.a> map) {
        this.f83402l = new ArrayList();
        this.A = null;
        this.f83391a = file;
        this.f83401k = str2;
        this.f83392b = callable;
        this.f83393c = i4;
        this.f83394d = Locale.getDefault().toString();
        this.f83395e = str3 != null ? str3 : "";
        this.f83396f = str4 != null ? str4 : "";
        this.f83399i = str5 != null ? str5 : "";
        this.f83400j = bool != null ? bool.booleanValue() : false;
        this.f83403m = str6 != null ? str6 : "0";
        this.f83397g = "";
        this.f83398h = "android";
        this.f83404n = "android";
        this.f83405o = str7 != null ? str7 : "";
        this.f83406p = list;
        this.f83407q = w0Var.getName();
        this.f83408r = str;
        this.f83409s = "";
        this.f83410t = str8 != null ? str8 : "";
        this.f83411u = w0Var.m().toString();
        this.f83412v = w0Var.E().j().toString();
        this.f83413w = UUID.randomUUID().toString();
        this.f83414x = str9 != null ? str9 : C;
        this.f83415y = str10;
        if (!Z()) {
            this.f83415y = D;
        }
        this.f83416z = map;
    }
}
