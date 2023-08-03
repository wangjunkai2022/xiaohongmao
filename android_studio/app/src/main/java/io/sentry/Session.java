package io.sentry;

import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import m8.a;

/* loaded from: classes4.dex */
public final class Session implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Date f81824a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Date f81825b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f81826c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private final String f81827d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final UUID f81828e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Boolean f81829f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private State f81830g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Long f81831h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Double f81832i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private final String f81833j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private String f81834k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private final String f81835l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final String f81836m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private String f81837n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final Object f81838o;
    @m8.h

    /* renamed from: p  reason: collision with root package name */
    private Map<String, Object> f81839p;

    /* loaded from: classes4.dex */
    public enum State {
        Ok,
        Exited,
        Crashed,
        Abnormal
    }

    /* loaded from: classes4.dex */
    public static final class a implements c1<Session> {
        private Exception c(String str, o0 o0Var) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            o0Var.b(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public Session a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            char c10;
            String str;
            char c11;
            i1Var.b();
            Integer num = null;
            State state = null;
            Date date = null;
            Date date2 = null;
            ConcurrentHashMap concurrentHashMap = null;
            String str2 = null;
            UUID uuid = null;
            Boolean bool = null;
            Long l10 = null;
            Double d4 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            while (true) {
                String str8 = str5;
                String str9 = str4;
                String str10 = str3;
                Double d10 = d4;
                if (i1Var.X() != JsonToken.NAME) {
                    Long l11 = l10;
                    if (state != null) {
                        if (date != null) {
                            if (num != null) {
                                if (str6 != null) {
                                    Session session = new Session(state, date, date2, num.intValue(), str2, uuid, bool, l11, d10, str10, str9, str8, str6, str7);
                                    session.setUnknown(concurrentHashMap);
                                    i1Var.p();
                                    return session;
                                }
                                throw c("release", o0Var);
                            }
                            throw c(b.f81846g, o0Var);
                        }
                        throw c(b.f81843d, o0Var);
                    }
                    throw c("status", o0Var);
                }
                String I = i1Var.I();
                I.hashCode();
                Long l12 = l10;
                switch (I.hashCode()) {
                    case -1992012396:
                        if (I.equals("duration")) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -1897185151:
                        if (I.equals(b.f81843d)) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -1294635157:
                        if (I.equals(b.f81846g)) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -892481550:
                        if (I.equals("status")) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 99455:
                        if (I.equals(b.f81841b)) {
                            c10 = 4;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 113759:
                        if (I.equals(b.f81845f)) {
                            c10 = 5;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 113870:
                        if (I.equals(b.f81840a)) {
                            c10 = 6;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3237136:
                        if (I.equals(b.f81842c)) {
                            c10 = 7;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 55126294:
                        if (I.equals("timestamp")) {
                            c10 = '\b';
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 93152418:
                        if (I.equals(b.f81849j)) {
                            c10 = '\t';
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 213717026:
                        if (I.equals(b.f81854o)) {
                            c10 = '\n';
                            break;
                        }
                        c10 = 65535;
                        break;
                    default:
                        c10 = 65535;
                        break;
                }
                switch (c10) {
                    case 0:
                        d4 = i1Var.v0();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        break;
                    case 1:
                        date = i1Var.u0(o0Var);
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                        break;
                    case 2:
                        num = i1Var.y0();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                        break;
                    case 3:
                        String c12 = io.sentry.util.q.c(i1Var.E0());
                        if (c12 != null) {
                            state = State.valueOf(c12);
                        }
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                        break;
                    case 4:
                        str2 = i1Var.E0();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                        break;
                    case 5:
                        l10 = i1Var.A0();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                        continue;
                    case 6:
                        try {
                            str = i1Var.E0();
                        } catch (IllegalArgumentException unused) {
                            str = null;
                        }
                        try {
                            uuid = UUID.fromString(str);
                        } catch (IllegalArgumentException unused2) {
                            o0Var.c(SentryLevel.ERROR, "%s sid is not valid.", str);
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            d4 = d10;
                            l10 = l12;
                        }
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                    case 7:
                        bool = i1Var.t0();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                        break;
                    case '\b':
                        date2 = i1Var.u0(o0Var);
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                        break;
                    case '\t':
                        i1Var.b();
                        str4 = str9;
                        str3 = str10;
                        while (i1Var.X() == JsonToken.NAME) {
                            String I2 = i1Var.I();
                            I2.hashCode();
                            switch (I2.hashCode()) {
                                case -85904877:
                                    if (I2.equals("environment")) {
                                        c11 = 0;
                                        break;
                                    }
                                    c11 = 65535;
                                    break;
                                case 1090594823:
                                    if (I2.equals("release")) {
                                        c11 = 1;
                                        break;
                                    }
                                    c11 = 65535;
                                    break;
                                case 1480014044:
                                    if (I2.equals("ip_address")) {
                                        c11 = 2;
                                        break;
                                    }
                                    c11 = 65535;
                                    break;
                                case 1917799825:
                                    if (I2.equals("user_agent")) {
                                        c11 = 3;
                                        break;
                                    }
                                    c11 = 65535;
                                    break;
                                default:
                                    c11 = 65535;
                                    break;
                            }
                            switch (c11) {
                                case 0:
                                    str8 = i1Var.E0();
                                    break;
                                case 1:
                                    str6 = i1Var.E0();
                                    break;
                                case 2:
                                    str3 = i1Var.E0();
                                    break;
                                case 3:
                                    str4 = i1Var.E0();
                                    break;
                                default:
                                    i1Var.r0();
                                    break;
                            }
                        }
                        i1Var.p();
                        str5 = str8;
                        d4 = d10;
                        break;
                    case '\n':
                        str7 = i1Var.E0();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d4 = d10;
                        break;
                }
                l10 = l12;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f81840a = "sid";

        /* renamed from: b  reason: collision with root package name */
        public static final String f81841b = "did";

        /* renamed from: c  reason: collision with root package name */
        public static final String f81842c = "init";

        /* renamed from: d  reason: collision with root package name */
        public static final String f81843d = "started";

        /* renamed from: e  reason: collision with root package name */
        public static final String f81844e = "status";

        /* renamed from: f  reason: collision with root package name */
        public static final String f81845f = "seq";

        /* renamed from: g  reason: collision with root package name */
        public static final String f81846g = "errors";

        /* renamed from: h  reason: collision with root package name */
        public static final String f81847h = "duration";

        /* renamed from: i  reason: collision with root package name */
        public static final String f81848i = "timestamp";

        /* renamed from: j  reason: collision with root package name */
        public static final String f81849j = "attrs";

        /* renamed from: k  reason: collision with root package name */
        public static final String f81850k = "release";

        /* renamed from: l  reason: collision with root package name */
        public static final String f81851l = "environment";

        /* renamed from: m  reason: collision with root package name */
        public static final String f81852m = "ip_address";

        /* renamed from: n  reason: collision with root package name */
        public static final String f81853n = "user_agent";

        /* renamed from: o  reason: collision with root package name */
        public static final String f81854o = "abnormal_mechanism";
    }

    public Session(@m8.g State state, @m8.g Date date, @m8.h Date date2, int i4, @m8.h String str, @m8.h UUID uuid, @m8.h Boolean bool, @m8.h Long l10, @m8.h Double d4, @m8.h String str2, @m8.h String str3, @m8.h String str4, @m8.g String str5, @m8.h String str6) {
        this.f81838o = new Object();
        this.f81830g = state;
        this.f81824a = date;
        this.f81825b = date2;
        this.f81826c = new AtomicInteger(i4);
        this.f81827d = str;
        this.f81828e = uuid;
        this.f81829f = bool;
        this.f81831h = l10;
        this.f81832i = d4;
        this.f81833j = str2;
        this.f81834k = str3;
        this.f81835l = str4;
        this.f81836m = str5;
        this.f81837n = str6;
    }

    private double a(@m8.g Date date) {
        return Math.abs(date.getTime() - this.f81824a.getTime()) / 1000.0d;
    }

    private long n(@m8.g Date date) {
        long time = date.getTime();
        return time < 0 ? Math.abs(time) : time;
    }

    @m8.g
    /* renamed from: b */
    public Session clone() {
        return new Session(this.f81830g, this.f81824a, this.f81825b, this.f81826c.get(), this.f81827d, this.f81828e, this.f81829f, this.f81831h, this.f81832i, this.f81833j, this.f81834k, this.f81835l, this.f81836m, this.f81837n);
    }

    public void c() {
        d(k.c());
    }

    public void d(@m8.h Date date) {
        synchronized (this.f81838o) {
            this.f81829f = null;
            if (this.f81830g == State.Ok) {
                this.f81830g = State.Exited;
            }
            if (date != null) {
                this.f81825b = date;
            } else {
                this.f81825b = k.c();
            }
            Date date2 = this.f81825b;
            if (date2 != null) {
                this.f81832i = Double.valueOf(a(date2));
                this.f81831h = Long.valueOf(n(this.f81825b));
            }
        }
    }

    public int e() {
        return this.f81826c.get();
    }

    @m8.h
    public String f() {
        return this.f81837n;
    }

    @m8.h
    public String g() {
        return this.f81827d;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f81839p;
    }

    @m8.h
    public Double h() {
        return this.f81832i;
    }

    @m8.h
    public String i() {
        return this.f81835l;
    }

    @m8.h
    public Boolean j() {
        return this.f81829f;
    }

    @m8.h
    public String k() {
        return this.f81833j;
    }

    @m8.g
    public String l() {
        return this.f81836m;
    }

    @m8.h
    public Long m() {
        return this.f81831h;
    }

    @m8.h
    public UUID o() {
        return this.f81828e;
    }

    @m8.h
    public Date p() {
        Date date = this.f81824a;
        if (date == null) {
            return null;
        }
        return (Date) date.clone();
    }

    @m8.g
    public State q() {
        return this.f81830g;
    }

    @m8.h
    public Date r() {
        Date date = this.f81825b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    @m8.h
    public String s() {
        return this.f81834k;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f81828e != null) {
            k1Var.A(b.f81840a).l0(this.f81828e.toString());
        }
        if (this.f81827d != null) {
            k1Var.A(b.f81841b).l0(this.f81827d);
        }
        if (this.f81829f != null) {
            k1Var.A(b.f81842c).g0(this.f81829f);
        }
        k1Var.A(b.f81843d).q0(o0Var, this.f81824a);
        k1Var.A("status").q0(o0Var, this.f81830g.name().toLowerCase(Locale.ROOT));
        if (this.f81831h != null) {
            k1Var.A(b.f81845f).h0(this.f81831h);
        }
        k1Var.A(b.f81846g).d0(this.f81826c.intValue());
        if (this.f81832i != null) {
            k1Var.A("duration").h0(this.f81832i);
        }
        if (this.f81825b != null) {
            k1Var.A("timestamp").q0(o0Var, this.f81825b);
        }
        if (this.f81837n != null) {
            k1Var.A(b.f81854o).q0(o0Var, this.f81837n);
        }
        k1Var.A(b.f81849j);
        k1Var.h();
        k1Var.A("release").q0(o0Var, this.f81836m);
        if (this.f81835l != null) {
            k1Var.A("environment").q0(o0Var, this.f81835l);
        }
        if (this.f81833j != null) {
            k1Var.A("ip_address").q0(o0Var, this.f81833j);
        }
        if (this.f81834k != null) {
            k1Var.A("user_agent").q0(o0Var, this.f81834k);
        }
        k1Var.p();
        Map<String, Object> map = this.f81839p;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f81839p.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f81839p = map;
    }

    @a.c
    public void t() {
        this.f81829f = Boolean.TRUE;
    }

    public boolean u(@m8.h State state, @m8.h String str, boolean z9) {
        return v(state, str, z9, null);
    }

    public boolean v(@m8.h State state, @m8.h String str, boolean z9, @m8.h String str2) {
        boolean z10;
        synchronized (this.f81838o) {
            boolean z11 = false;
            z10 = true;
            if (state != null) {
                try {
                    this.f81830g = state;
                    z11 = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (str != null) {
                this.f81834k = str;
                z11 = true;
            }
            if (z9) {
                this.f81826c.addAndGet(1);
                z11 = true;
            }
            if (str2 != null) {
                this.f81837n = str2;
            } else {
                z10 = z11;
            }
            if (z10) {
                this.f81829f = null;
                Date c10 = k.c();
                this.f81825b = c10;
                if (c10 != null) {
                    this.f81831h = Long.valueOf(n(c10));
                }
            }
        }
        return z10;
    }

    public Session(@m8.h String str, @m8.h io.sentry.protocol.w wVar, @m8.h String str2, @m8.g String str3) {
        this(State.Ok, k.c(), k.c(), 0, str, UUID.randomUUID(), Boolean.TRUE, null, null, wVar != null ? wVar.k() : null, null, str2, str3, null);
    }
}
