package io.sentry;

import io.sentry.SentryOptions;
import io.sentry.e3;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: ExternalOptions.java */
/* loaded from: classes4.dex */
public final class a0 {

    /* renamed from: w  reason: collision with root package name */
    private static final String f81855w = "80";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f81856a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f81857b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f81858c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f81859d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private String f81860e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Boolean f81861f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Boolean f81862g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Boolean f81863h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Double f81864i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private Double f81865j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private SentryOptions.RequestSize f81866k;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private SentryOptions.e f81868m;
    @m8.h

    /* renamed from: r  reason: collision with root package name */
    private String f81873r;
    @m8.h

    /* renamed from: s  reason: collision with root package name */
    private Long f81874s;
    @m8.h

    /* renamed from: u  reason: collision with root package name */
    private Boolean f81876u;
    @m8.h

    /* renamed from: v  reason: collision with root package name */
    private Boolean f81877v;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final Map<String, String> f81867l = new ConcurrentHashMap();
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final List<String> f81869n = new CopyOnWriteArrayList();
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final List<String> f81870o = new CopyOnWriteArrayList();
    @m8.h

    /* renamed from: p  reason: collision with root package name */
    private List<String> f81871p = null;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final List<String> f81872q = new CopyOnWriteArrayList();
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final Set<Class<? extends Throwable>> f81875t = new CopyOnWriteArraySet();

    /* JADX WARN: Multi-variable type inference failed */
    @m8.g
    public static a0 g(@m8.g io.sentry.config.h hVar, @m8.g o0 o0Var) {
        a0 a0Var = new a0();
        a0Var.G(hVar.getProperty("dsn"));
        a0Var.J(hVar.getProperty("environment"));
        a0Var.Q(hVar.getProperty("release"));
        a0Var.F(hVar.getProperty(e3.b.f83156k));
        a0Var.S(hVar.getProperty("servername"));
        a0Var.I(hVar.f("uncaught.handler.enabled"));
        a0Var.M(hVar.f("uncaught.handler.print-stacktrace"));
        a0Var.U(hVar.c("traces-sample-rate"));
        a0Var.N(hVar.c("profiles-sample-rate"));
        a0Var.E(hVar.f(com.bumptech.glide.integration.webp.a.f8238c));
        a0Var.H(hVar.f("enable-deduplication"));
        a0Var.R(hVar.f("send-client-reports"));
        String property = hVar.getProperty("max-request-body-size");
        if (property != null) {
            a0Var.L(SentryOptions.RequestSize.valueOf(property.toUpperCase(Locale.ROOT)));
        }
        for (Map.Entry<String, String> entry : hVar.a("tags").entrySet()) {
            a0Var.T(entry.getKey(), entry.getValue());
        }
        String property2 = hVar.getProperty("proxy.host");
        String property3 = hVar.getProperty("proxy.user");
        String property4 = hVar.getProperty("proxy.pass");
        String d4 = hVar.d("proxy.port", f81855w);
        if (property2 != null) {
            a0Var.P(new SentryOptions.e(property2, d4, property3, property4));
        }
        for (String str : hVar.e("in-app-includes")) {
            a0Var.d(str);
        }
        for (String str2 : hVar.e("in-app-excludes")) {
            a0Var.c(str2);
        }
        List<String> e4 = hVar.getProperty("trace-propagation-targets") != null ? hVar.e("trace-propagation-targets") : null;
        if (e4 == null && hVar.getProperty("tracing-origins") != null) {
            e4 = hVar.e("tracing-origins");
        }
        if (e4 != null) {
            for (String str3 : e4) {
                a0Var.e(str3);
            }
        }
        for (String str4 : hVar.e("context-tags")) {
            a0Var.a(str4);
        }
        a0Var.O(hVar.getProperty("proguard-uuid"));
        a0Var.K(hVar.b("idle-timeout"));
        for (String str5 : hVar.e("ignored-exceptions-for-type")) {
            try {
                Class<?> cls = Class.forName(str5);
                if (Throwable.class.isAssignableFrom(cls)) {
                    a0Var.b(cls);
                } else {
                    o0Var.c(SentryLevel.WARNING, "Skipping setting %s as ignored-exception-for-type. Reason: %s does not extend Throwable", str5, str5);
                }
            } catch (ClassNotFoundException unused) {
                o0Var.c(SentryLevel.WARNING, "Skipping setting %s as ignored-exception-for-type. Reason: %s class is not found", str5, str5);
            }
        }
        return a0Var;
    }

    @m8.g
    public Map<String, String> A() {
        return this.f81867l;
    }

    @m8.h
    public List<String> B() {
        return this.f81871p;
    }

    @m8.h
    public Double C() {
        return this.f81864i;
    }

    @m8.h
    @Deprecated
    public List<String> D() {
        return this.f81871p;
    }

    public void E(@m8.h Boolean bool) {
        this.f81862g = bool;
    }

    public void F(@m8.h String str) {
        this.f81859d = str;
    }

    public void G(@m8.h String str) {
        this.f81856a = str;
    }

    public void H(@m8.h Boolean bool) {
        this.f81863h = bool;
    }

    public void I(@m8.h Boolean bool) {
        this.f81861f = bool;
    }

    public void J(@m8.h String str) {
        this.f81857b = str;
    }

    public void K(@m8.h Long l10) {
        this.f81874s = l10;
    }

    public void L(@m8.h SentryOptions.RequestSize requestSize) {
        this.f81866k = requestSize;
    }

    public void M(@m8.h Boolean bool) {
        this.f81876u = bool;
    }

    public void N(@m8.h Double d4) {
        this.f81865j = d4;
    }

    public void O(@m8.h String str) {
        this.f81873r = str;
    }

    public void P(@m8.h SentryOptions.e eVar) {
        this.f81868m = eVar;
    }

    public void Q(@m8.h String str) {
        this.f81858c = str;
    }

    public void R(@m8.h Boolean bool) {
        this.f81877v = bool;
    }

    public void S(@m8.h String str) {
        this.f81860e = str;
    }

    public void T(@m8.g String str, @m8.g String str2) {
        this.f81867l.put(str, str2);
    }

    public void U(@m8.h Double d4) {
        this.f81864i = d4;
    }

    public void a(@m8.g String str) {
        this.f81872q.add(str);
    }

    public void b(@m8.g Class<? extends Throwable> cls) {
        this.f81875t.add(cls);
    }

    public void c(@m8.g String str) {
        this.f81869n.add(str);
    }

    public void d(@m8.g String str) {
        this.f81870o.add(str);
    }

    public void e(@m8.g String str) {
        if (this.f81871p == null) {
            this.f81871p = new CopyOnWriteArrayList();
        }
        if (str.isEmpty()) {
            return;
        }
        this.f81871p.add(str);
    }

    @Deprecated
    public void f(@m8.g String str) {
        e(str);
    }

    @m8.g
    public List<String> h() {
        return this.f81872q;
    }

    @m8.h
    public Boolean i() {
        return this.f81862g;
    }

    @m8.h
    public String j() {
        return this.f81859d;
    }

    @m8.h
    public String k() {
        return this.f81856a;
    }

    @m8.h
    public Boolean l() {
        return this.f81863h;
    }

    @m8.h
    public Boolean m() {
        return this.f81861f;
    }

    @m8.h
    public String n() {
        return this.f81857b;
    }

    @m8.h
    public Long o() {
        return this.f81874s;
    }

    @m8.g
    public Set<Class<? extends Throwable>> p() {
        return this.f81875t;
    }

    @m8.g
    public List<String> q() {
        return this.f81869n;
    }

    @m8.g
    public List<String> r() {
        return this.f81870o;
    }

    @m8.h
    public SentryOptions.RequestSize s() {
        return this.f81866k;
    }

    @m8.h
    public Boolean t() {
        return this.f81876u;
    }

    @m8.h
    public Double u() {
        return this.f81865j;
    }

    @m8.h
    public String v() {
        return this.f81873r;
    }

    @m8.h
    public SentryOptions.e w() {
        return this.f81868m;
    }

    @m8.h
    public String x() {
        return this.f81858c;
    }

    @m8.h
    public Boolean y() {
        return this.f81877v;
    }

    @m8.h
    public String z() {
        return this.f81860e;
    }
}
