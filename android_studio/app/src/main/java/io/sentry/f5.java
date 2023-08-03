package io.sentry;

import io.sentry.SpanStatus;
import io.sentry.h5;
import io.sentry.protocol.n;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: SpanContext.java */
/* loaded from: classes4.dex */
public class f5 implements o1, m1 {

    /* renamed from: j  reason: collision with root package name */
    public static final String f83207j = "trace";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.n f83208a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final h5 f83209b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final h5 f83210c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private transient o5 f83211d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    protected String f83212e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    protected String f83213f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    protected SpanStatus f83214g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    protected Map<String, String> f83215h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Map<String, Object> f83216i;

    /* compiled from: SpanContext.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<f5> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public f5 a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            ConcurrentHashMap concurrentHashMap = null;
            io.sentry.protocol.n nVar = null;
            h5 h5Var = null;
            String str = null;
            h5 h5Var2 = null;
            String str2 = null;
            SpanStatus spanStatus = null;
            Map<String, String> map = null;
            while (i1Var.X() == JsonToken.NAME) {
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
                    case -892481550:
                        if (I.equals("status")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3553:
                        if (I.equals("op")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 3552281:
                        if (I.equals("tags")) {
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
                }
                switch (c10) {
                    case 0:
                        h5Var = new h5.a().a(i1Var, o0Var);
                        break;
                    case 1:
                        h5Var2 = (h5) i1Var.D0(o0Var, new h5.a());
                        break;
                    case 2:
                        str2 = i1Var.M();
                        break;
                    case 3:
                        spanStatus = (SpanStatus) i1Var.D0(o0Var, new SpanStatus.a());
                        break;
                    case 4:
                        str = i1Var.M();
                        break;
                    case 5:
                        map = io.sentry.util.a.e((Map) i1Var.C0());
                        break;
                    case 6:
                        nVar = new n.a().a(i1Var, o0Var);
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            if (nVar == null) {
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"trace_id\"");
                o0Var.b(SentryLevel.ERROR, "Missing required field \"trace_id\"", illegalStateException);
                throw illegalStateException;
            } else if (h5Var == null) {
                IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"span_id\"");
                o0Var.b(SentryLevel.ERROR, "Missing required field \"span_id\"", illegalStateException2);
                throw illegalStateException2;
            } else if (str != null) {
                f5 f5Var = new f5(nVar, h5Var, str, h5Var2, null);
                f5Var.k(str2);
                f5Var.p(spanStatus);
                if (map != null) {
                    f5Var.f83215h = map;
                }
                f5Var.setUnknown(concurrentHashMap);
                i1Var.p();
                return f5Var;
            } else {
                IllegalStateException illegalStateException3 = new IllegalStateException("Missing required field \"op\"");
                o0Var.b(SentryLevel.ERROR, "Missing required field \"op\"", illegalStateException3);
                throw illegalStateException3;
            }
        }
    }

    /* compiled from: SpanContext.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83217a = "trace_id";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83218b = "span_id";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83219c = "parent_span_id";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83220d = "op";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83221e = "description";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83222f = "status";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83223g = "tags";
    }

    public f5(@m8.g String str, @m8.h o5 o5Var) {
        this(new io.sentry.protocol.n(), new h5(), str, null, o5Var);
    }

    @m8.h
    public String a() {
        return this.f83213f;
    }

    @m8.g
    public String b() {
        return this.f83212e;
    }

    @m8.h
    @m8.k
    public h5 c() {
        return this.f83210c;
    }

    @m8.h
    public Boolean d() {
        o5 o5Var = this.f83211d;
        if (o5Var == null) {
            return null;
        }
        return o5Var.b();
    }

    @m8.h
    public Boolean e() {
        o5 o5Var = this.f83211d;
        if (o5Var == null) {
            return null;
        }
        return o5Var.d();
    }

    @m8.h
    public o5 f() {
        return this.f83211d;
    }

    @m8.g
    public h5 g() {
        return this.f83209b;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83216i;
    }

    @m8.h
    public SpanStatus h() {
        return this.f83214g;
    }

    @m8.g
    public Map<String, String> i() {
        return this.f83215h;
    }

    @m8.g
    public io.sentry.protocol.n j() {
        return this.f83208a;
    }

    public void k(@m8.h String str) {
        this.f83213f = str;
    }

    public void l(@m8.g String str) {
        this.f83212e = (String) io.sentry.util.l.c(str, "operation is required");
    }

    @a.c
    public void m(@m8.h Boolean bool) {
        if (bool == null) {
            o(null);
        } else {
            o(new o5(bool));
        }
    }

    @a.c
    public void n(@m8.h Boolean bool, @m8.h Boolean bool2) {
        if (bool == null) {
            o(null);
        } else if (bool2 == null) {
            o(new o5(bool));
        } else {
            o(new o5(bool, null, bool2, null));
        }
    }

    @a.c
    public void o(@m8.h o5 o5Var) {
        this.f83211d = o5Var;
    }

    public void p(@m8.h SpanStatus spanStatus) {
        this.f83214g = spanStatus;
    }

    public void q(@m8.g String str, @m8.g String str2) {
        io.sentry.util.l.c(str, "name is required");
        io.sentry.util.l.c(str2, "value is required");
        this.f83215h.put(str, str2);
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("trace_id");
        this.f83208a.serialize(k1Var, o0Var);
        k1Var.A("span_id");
        this.f83209b.serialize(k1Var, o0Var);
        if (this.f83210c != null) {
            k1Var.A("parent_span_id");
            this.f83210c.serialize(k1Var, o0Var);
        }
        k1Var.A("op").l0(this.f83212e);
        if (this.f83213f != null) {
            k1Var.A("description").l0(this.f83213f);
        }
        if (this.f83214g != null) {
            k1Var.A("status").q0(o0Var, this.f83214g);
        }
        if (!this.f83215h.isEmpty()) {
            k1Var.A("tags").q0(o0Var, this.f83215h);
        }
        Map<String, Object> map = this.f83216i;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83216i.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83216i = map;
    }

    public f5(@m8.g String str) {
        this(new io.sentry.protocol.n(), new h5(), str, null, null);
    }

    public f5(@m8.g io.sentry.protocol.n nVar, @m8.g h5 h5Var, @m8.g String str, @m8.h h5 h5Var2, @m8.h o5 o5Var) {
        this(nVar, h5Var, h5Var2, str, null, o5Var, null);
    }

    @a.c
    public f5(@m8.g io.sentry.protocol.n nVar, @m8.g h5 h5Var, @m8.h h5 h5Var2, @m8.g String str, @m8.h String str2, @m8.h o5 o5Var, @m8.h SpanStatus spanStatus) {
        this.f83215h = new ConcurrentHashMap();
        this.f83208a = (io.sentry.protocol.n) io.sentry.util.l.c(nVar, "traceId is required");
        this.f83209b = (h5) io.sentry.util.l.c(h5Var, "spanId is required");
        this.f83212e = (String) io.sentry.util.l.c(str, "operation is required");
        this.f83210c = h5Var2;
        this.f83211d = o5Var;
        this.f83213f = str2;
        this.f83214g = spanStatus;
    }

    public f5(@m8.g f5 f5Var) {
        this.f83215h = new ConcurrentHashMap();
        this.f83208a = f5Var.f83208a;
        this.f83209b = f5Var.f83209b;
        this.f83210c = f5Var.f83210c;
        this.f83211d = f5Var.f83211d;
        this.f83212e = f5Var.f83212e;
        this.f83213f = f5Var.f83213f;
        this.f83214g = f5Var.f83214g;
        Map<String, String> e4 = io.sentry.util.a.e(f5Var.f83215h);
        if (e4 != null) {
            this.f83215h = e4;
        }
    }
}
