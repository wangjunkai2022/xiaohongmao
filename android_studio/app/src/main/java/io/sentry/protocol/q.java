package io.sentry.protocol;

import io.sentry.SentryLevel;
import io.sentry.SpanStatus;
import io.sentry.c1;
import io.sentry.e5;
import io.sentry.h5;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.protocol.n;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: SentrySpan.java */
@a.c
/* loaded from: classes4.dex */
public final class q implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Double f83784a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final Double f83785b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final n f83786c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final h5 f83787d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final h5 f83788e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final String f83789f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private final String f83790g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private final SpanStatus f83791h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, String> f83792i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private final Map<String, Object> f83793j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private Map<String, Object> f83794k;

    /* compiled from: SentrySpan.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<q> {
        private Exception c(String str, o0 o0Var) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            o0Var.b(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public q a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            Map map = null;
            Double d4 = null;
            Double d10 = null;
            n nVar = null;
            h5 h5Var = null;
            h5 h5Var2 = null;
            String str = null;
            String str2 = null;
            SpanStatus spanStatus = null;
            Map map2 = null;
            ConcurrentHashMap concurrentHashMap = null;
            while (true) {
                Map map3 = map2;
                SpanStatus spanStatus2 = spanStatus;
                String str3 = str2;
                if (i1Var.X() != JsonToken.NAME) {
                    if (d4 != null) {
                        if (nVar != null) {
                            if (h5Var != null) {
                                if (str != null) {
                                    q qVar = new q(d4, d10, nVar, h5Var, h5Var2, str, str3, spanStatus2, map == null ? new HashMap() : map, map3);
                                    qVar.setUnknown(concurrentHashMap);
                                    i1Var.p();
                                    return qVar;
                                }
                                throw c("op", o0Var);
                            }
                            throw c("span_id", o0Var);
                        }
                        throw c("trace_id", o0Var);
                    }
                    throw c("start_timestamp", o0Var);
                }
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -2011840976:
                        if (I.equals("span_id")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1757797477:
                        if (I.equals("parent_span_id")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1724546052:
                        if (I.equals("description")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1526966919:
                        if (I.equals("start_timestamp")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -892481550:
                        if (I.equals("status")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 3553:
                        if (I.equals("op")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 3076010:
                        if (I.equals("data")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 3552281:
                        if (I.equals("tags")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 55126294:
                        if (I.equals("timestamp")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 1270300245:
                        if (I.equals("trace_id")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        h5Var = new h5.a().a(i1Var, o0Var);
                        map2 = map3;
                        spanStatus = spanStatus2;
                        break;
                    case 1:
                        h5Var2 = (h5) i1Var.D0(o0Var, new h5.a());
                        map2 = map3;
                        spanStatus = spanStatus2;
                        break;
                    case 2:
                        str2 = i1Var.E0();
                        map2 = map3;
                        spanStatus = spanStatus2;
                        continue;
                    case 3:
                        try {
                            d4 = i1Var.v0();
                        } catch (NumberFormatException unused) {
                            Date u02 = i1Var.u0(o0Var);
                            d4 = u02 != null ? Double.valueOf(io.sentry.k.b(u02)) : null;
                        }
                        map2 = map3;
                        spanStatus = spanStatus2;
                        break;
                    case 4:
                        spanStatus = (SpanStatus) i1Var.D0(o0Var, new SpanStatus.a());
                        map2 = map3;
                        break;
                    case 5:
                        str = i1Var.E0();
                        map2 = map3;
                        spanStatus = spanStatus2;
                        break;
                    case 6:
                        map2 = (Map) i1Var.C0();
                        spanStatus = spanStatus2;
                        break;
                    case 7:
                        map = (Map) i1Var.C0();
                        map2 = map3;
                        spanStatus = spanStatus2;
                        break;
                    case '\b':
                        try {
                            d10 = i1Var.v0();
                        } catch (NumberFormatException unused2) {
                            Date u03 = i1Var.u0(o0Var);
                            d10 = u03 != null ? Double.valueOf(io.sentry.k.b(u03)) : null;
                        }
                        map2 = map3;
                        spanStatus = spanStatus2;
                        break;
                    case '\t':
                        nVar = new n.a().a(i1Var, o0Var);
                        map2 = map3;
                        spanStatus = spanStatus2;
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        map2 = map3;
                        spanStatus = spanStatus2;
                        break;
                }
                str2 = str3;
            }
        }
    }

    /* compiled from: SentrySpan.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83795a = "start_timestamp";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83796b = "timestamp";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83797c = "trace_id";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83798d = "span_id";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83799e = "parent_span_id";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83800f = "op";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83801g = "description";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83802h = "status";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83803i = "tags";

        /* renamed from: j  reason: collision with root package name */
        public static final String f83804j = "data";
    }

    public q(@m8.g e5 e5Var) {
        this(e5Var, e5Var.K());
    }

    @m8.g
    private BigDecimal a(@m8.g Double d4) {
        return BigDecimal.valueOf(d4.doubleValue()).setScale(6, RoundingMode.DOWN);
    }

    @m8.h
    public Map<String, Object> b() {
        return this.f83793j;
    }

    @m8.h
    public String c() {
        return this.f83790g;
    }

    @m8.g
    public String d() {
        return this.f83789f;
    }

    @m8.h
    public h5 e() {
        return this.f83788e;
    }

    @m8.g
    public h5 f() {
        return this.f83787d;
    }

    @m8.g
    public Double g() {
        return this.f83784a;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83794k;
    }

    @m8.h
    public SpanStatus h() {
        return this.f83791h;
    }

    @m8.g
    public Map<String, String> i() {
        return this.f83792i;
    }

    @m8.h
    public Double j() {
        return this.f83785b;
    }

    @m8.g
    public n k() {
        return this.f83786c;
    }

    public boolean l() {
        return this.f83785b != null;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("start_timestamp").q0(o0Var, a(this.f83784a));
        if (this.f83785b != null) {
            k1Var.A("timestamp").q0(o0Var, a(this.f83785b));
        }
        k1Var.A("trace_id").q0(o0Var, this.f83786c);
        k1Var.A("span_id").q0(o0Var, this.f83787d);
        if (this.f83788e != null) {
            k1Var.A("parent_span_id").q0(o0Var, this.f83788e);
        }
        k1Var.A("op").l0(this.f83789f);
        if (this.f83790g != null) {
            k1Var.A("description").l0(this.f83790g);
        }
        if (this.f83791h != null) {
            k1Var.A("status").q0(o0Var, this.f83791h);
        }
        if (!this.f83792i.isEmpty()) {
            k1Var.A("tags").q0(o0Var, this.f83792i);
        }
        if (this.f83793j != null) {
            k1Var.A("data").q0(o0Var, this.f83793j);
        }
        Map<String, Object> map = this.f83794k;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83794k.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83794k = map;
    }

    @a.c
    public q(@m8.g e5 e5Var, @m8.h Map<String, Object> map) {
        io.sentry.util.l.c(e5Var, "span is required");
        this.f83790g = e5Var.getDescription();
        this.f83789f = e5Var.u();
        this.f83787d = e5Var.N();
        this.f83788e = e5Var.M();
        this.f83786c = e5Var.Q();
        this.f83791h = e5Var.getStatus();
        Map<String, String> e4 = io.sentry.util.a.e(e5Var.P());
        this.f83792i = e4 == null ? new ConcurrentHashMap<>() : e4;
        this.f83785b = Double.valueOf(io.sentry.k.l(e5Var.O().c(e5Var.L())));
        this.f83784a = Double.valueOf(io.sentry.k.l(e5Var.O().d()));
        this.f83793j = map;
    }

    @a.c
    public q(@m8.g Double d4, @m8.h Double d10, @m8.g n nVar, @m8.g h5 h5Var, @m8.h h5 h5Var2, @m8.g String str, @m8.h String str2, @m8.h SpanStatus spanStatus, @m8.g Map<String, String> map, @m8.h Map<String, Object> map2) {
        this.f83784a = d4;
        this.f83785b = d10;
        this.f83786c = nVar;
        this.f83787d = h5Var;
        this.f83788e = h5Var2;
        this.f83789f = str;
        this.f83790g = str2;
        this.f83791h = spanStatus;
        this.f83792i = map;
        this.f83793j = map2;
    }
}
