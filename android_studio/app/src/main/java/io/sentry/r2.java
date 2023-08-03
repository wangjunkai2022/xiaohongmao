package io.sentry;

import io.sentry.SentryOptions;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.TransactionNameSource;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import m8.a;

/* compiled from: Scope.java */
/* loaded from: classes4.dex */
public final class r2 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private SentryLevel f83937a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private w0 f83938b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83939c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private io.sentry.protocol.w f83940d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private io.sentry.protocol.i f83941e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private List<String> f83942f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private Queue<f> f83943g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private Map<String, String> f83944h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private Map<String, Object> f83945i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private List<z> f83946j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final SentryOptions f83947k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private volatile Session f83948l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final Object f83949m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final Object f83950n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private Contexts f83951o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private List<io.sentry.b> f83952p;

    /* compiled from: Scope.java */
    /* loaded from: classes4.dex */
    interface a {
        void a(@m8.h Session session);
    }

    /* compiled from: Scope.java */
    @a.c
    /* loaded from: classes4.dex */
    public interface b {
        void a(@m8.h w0 w0Var);
    }

    /* compiled from: Scope.java */
    /* loaded from: classes4.dex */
    static final class c {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private final Session f83953a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final Session f83954b;

        public c(@m8.g Session session, @m8.h Session session2) {
            this.f83954b = session;
            this.f83953a = session2;
        }

        @m8.g
        public Session a() {
            return this.f83954b;
        }

        @m8.h
        public Session b() {
            return this.f83953a;
        }
    }

    public r2(@m8.g SentryOptions sentryOptions) {
        this.f83942f = new ArrayList();
        this.f83944h = new ConcurrentHashMap();
        this.f83945i = new ConcurrentHashMap();
        this.f83946j = new CopyOnWriteArrayList();
        this.f83949m = new Object();
        this.f83950n = new Object();
        this.f83951o = new Contexts();
        this.f83952p = new CopyOnWriteArrayList();
        SentryOptions sentryOptions2 = (SentryOptions) io.sentry.util.l.c(sentryOptions, "SentryOptions is required.");
        this.f83947k = sentryOptions2;
        this.f83943g = i(sentryOptions2.getMaxBreadcrumbs());
    }

    @m8.g
    private Queue<f> i(int i4) {
        return k5.d(new h(i4));
    }

    @m8.h
    private f k(@m8.g SentryOptions.a aVar, @m8.g f fVar, @m8.g b0 b0Var) {
        try {
            return aVar.a(fVar, b0Var);
        } catch (Throwable th) {
            this.f83947k.getLogger().b(SentryLevel.ERROR, "The BeforeBreadcrumbCallback callback threw an exception. Exception details will be added to the breadcrumb.", th);
            if (th.getMessage() != null) {
                fVar.v("sentry:message", th.getMessage());
                return fVar;
            }
            return fVar;
        }
    }

    public void A(@m8.g String str) {
        this.f83945i.remove(str);
        if (this.f83947k.isEnableScopeSync()) {
            for (q0 q0Var : this.f83947k.getScopeObservers()) {
                q0Var.b(str);
            }
        }
    }

    public void B(@m8.g String str) {
        this.f83944h.remove(str);
        if (this.f83947k.isEnableScopeSync()) {
            for (q0 q0Var : this.f83947k.getScopeObservers()) {
                q0Var.c(str);
            }
        }
    }

    public void C(@m8.g String str, @m8.g Boolean bool) {
        HashMap hashMap = new HashMap();
        hashMap.put("value", bool);
        F(str, hashMap);
    }

    public void D(@m8.g String str, @m8.g Character ch) {
        HashMap hashMap = new HashMap();
        hashMap.put("value", ch);
        F(str, hashMap);
    }

    public void E(@m8.g String str, @m8.g Number number) {
        HashMap hashMap = new HashMap();
        hashMap.put("value", number);
        F(str, hashMap);
    }

    public void F(@m8.g String str, @m8.g Object obj) {
        this.f83951o.put(str, obj);
    }

    public void G(@m8.g String str, @m8.g String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("value", str2);
        F(str, hashMap);
    }

    public void H(@m8.g String str, @m8.g Collection<?> collection) {
        HashMap hashMap = new HashMap();
        hashMap.put("value", collection);
        F(str, hashMap);
    }

    public void I(@m8.g String str, @m8.g Object[] objArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("value", objArr);
        F(str, hashMap);
    }

    public void J(@m8.g String str, @m8.g String str2) {
        this.f83945i.put(str, str2);
        if (this.f83947k.isEnableScopeSync()) {
            for (q0 q0Var : this.f83947k.getScopeObservers()) {
                q0Var.d(str, str2);
            }
        }
    }

    public void K(@m8.g List<String> list) {
        if (list == null) {
            return;
        }
        this.f83942f = new ArrayList(list);
    }

    public void L(@m8.h SentryLevel sentryLevel) {
        this.f83937a = sentryLevel;
    }

    public void M(@m8.h io.sentry.protocol.i iVar) {
        this.f83941e = iVar;
    }

    public void N(@m8.g String str, @m8.g String str2) {
        this.f83944h.put(str, str2);
        if (this.f83947k.isEnableScopeSync()) {
            for (q0 q0Var : this.f83947k.getScopeObservers()) {
                q0Var.a(str, str2);
            }
        }
    }

    public void O(@m8.h w0 w0Var) {
        synchronized (this.f83950n) {
            this.f83938b = w0Var;
        }
    }

    public void P(@m8.g String str) {
        if (str != null) {
            w0 w0Var = this.f83938b;
            if (w0Var != null) {
                w0Var.f(str, TransactionNameSource.CUSTOM);
            }
            this.f83939c = str;
            return;
        }
        this.f83947k.getLogger().c(SentryLevel.WARNING, "Transaction cannot be null", new Object[0]);
    }

    public void Q(@m8.h io.sentry.protocol.w wVar) {
        this.f83940d = wVar;
        if (this.f83947k.isEnableScopeSync()) {
            for (q0 q0Var : this.f83947k.getScopeObservers()) {
                q0Var.f(wVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public c R() {
        c cVar;
        synchronized (this.f83949m) {
            if (this.f83948l != null) {
                this.f83948l.c();
            }
            Session session = this.f83948l;
            cVar = null;
            if (this.f83947k.getRelease() != null) {
                this.f83948l = new Session(this.f83947k.getDistinctId(), this.f83940d, this.f83947k.getEnvironment(), this.f83947k.getRelease());
                cVar = new c(this.f83948l.clone(), session != null ? session.clone() : null);
            } else {
                this.f83947k.getLogger().c(SentryLevel.WARNING, "Release is not set on SentryOptions. Session could not be started", new Object[0]);
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public Session S(@m8.g a aVar) {
        Session clone;
        synchronized (this.f83949m) {
            aVar.a(this.f83948l);
            clone = this.f83948l != null ? this.f83948l.clone() : null;
        }
        return clone;
    }

    @a.c
    public void T(@m8.g b bVar) {
        synchronized (this.f83950n) {
            bVar.a(this.f83938b);
        }
    }

    public void a(@m8.g io.sentry.b bVar) {
        this.f83952p.add(bVar);
    }

    public void b(@m8.g f fVar) {
        c(fVar, null);
    }

    public void c(@m8.g f fVar, @m8.h b0 b0Var) {
        if (fVar == null) {
            return;
        }
        if (b0Var == null) {
            b0Var = new b0();
        }
        SentryOptions.a beforeBreadcrumb = this.f83947k.getBeforeBreadcrumb();
        if (beforeBreadcrumb != null) {
            fVar = k(beforeBreadcrumb, fVar, b0Var);
        }
        if (fVar != null) {
            this.f83943g.add(fVar);
            if (this.f83947k.isEnableScopeSync()) {
                for (q0 q0Var : this.f83947k.getScopeObservers()) {
                    q0Var.g(fVar);
                }
                return;
            }
            return;
        }
        this.f83947k.getLogger().c(SentryLevel.INFO, "Breadcrumb was dropped by beforeBreadcrumb", new Object[0]);
    }

    public void d(@m8.g z zVar) {
        this.f83946j.add(zVar);
    }

    public void e() {
        this.f83937a = null;
        this.f83940d = null;
        this.f83941e = null;
        this.f83942f.clear();
        g();
        this.f83944h.clear();
        this.f83945i.clear();
        this.f83946j.clear();
        h();
        f();
    }

    public void f() {
        this.f83952p.clear();
    }

    public void g() {
        this.f83943g.clear();
    }

    public void h() {
        synchronized (this.f83950n) {
            this.f83938b = null;
        }
        this.f83939c = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public Session j() {
        Session session;
        synchronized (this.f83949m) {
            session = null;
            if (this.f83948l != null) {
                this.f83948l.c();
                Session clone = this.f83948l.clone();
                this.f83948l = null;
                session = clone;
            }
        }
        return session;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public List<io.sentry.b> l() {
        return new CopyOnWriteArrayList(this.f83952p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public Queue<f> m() {
        return this.f83943g;
    }

    @m8.g
    public Contexts n() {
        return this.f83951o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public List<z> o() {
        return this.f83946j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public Map<String, Object> p() {
        return this.f83945i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public List<String> q() {
        return this.f83942f;
    }

    @m8.h
    public SentryLevel r() {
        return this.f83937a;
    }

    @m8.h
    public io.sentry.protocol.i s() {
        return this.f83941e;
    }

    @a.c
    @m8.h
    public Session t() {
        return this.f83948l;
    }

    @m8.h
    public v0 u() {
        e5 z9;
        w0 w0Var = this.f83938b;
        return (w0Var == null || (z9 = w0Var.z()) == null) ? w0Var : z9;
    }

    @a.c
    @m8.g
    public Map<String, String> v() {
        return io.sentry.util.a.e(this.f83944h);
    }

    @m8.h
    public w0 w() {
        return this.f83938b;
    }

    @m8.h
    public String x() {
        w0 w0Var = this.f83938b;
        return w0Var != null ? w0Var.getName() : this.f83939c;
    }

    @m8.h
    public io.sentry.protocol.w y() {
        return this.f83940d;
    }

    public void z(@m8.g String str) {
        this.f83951o.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r2(@m8.g r2 r2Var) {
        this.f83942f = new ArrayList();
        this.f83944h = new ConcurrentHashMap();
        this.f83945i = new ConcurrentHashMap();
        this.f83946j = new CopyOnWriteArrayList();
        this.f83949m = new Object();
        this.f83950n = new Object();
        this.f83951o = new Contexts();
        this.f83952p = new CopyOnWriteArrayList();
        this.f83938b = r2Var.f83938b;
        this.f83939c = r2Var.f83939c;
        this.f83948l = r2Var.f83948l;
        this.f83947k = r2Var.f83947k;
        this.f83937a = r2Var.f83937a;
        io.sentry.protocol.w wVar = r2Var.f83940d;
        this.f83940d = wVar != null ? new io.sentry.protocol.w(wVar) : null;
        io.sentry.protocol.i iVar = r2Var.f83941e;
        this.f83941e = iVar != null ? new io.sentry.protocol.i(iVar) : null;
        this.f83942f = new ArrayList(r2Var.f83942f);
        this.f83946j = new CopyOnWriteArrayList(r2Var.f83946j);
        f[] fVarArr = (f[]) r2Var.f83943g.toArray(new f[0]);
        Queue<f> i4 = i(r2Var.f83947k.getMaxBreadcrumbs());
        for (f fVar : fVarArr) {
            i4.add(new f(fVar));
        }
        this.f83943g = i4;
        Map<String, String> map = r2Var.f83944h;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry != null) {
                concurrentHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        this.f83944h = concurrentHashMap;
        Map<String, Object> map2 = r2Var.f83945i;
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        for (Map.Entry<String, Object> entry2 : map2.entrySet()) {
            if (entry2 != null) {
                concurrentHashMap2.put(entry2.getKey(), entry2.getValue());
            }
        }
        this.f83945i = concurrentHashMap2;
        this.f83951o = new Contexts(r2Var.f83951o);
        this.f83952p = new CopyOnWriteArrayList(r2Var.f83952p);
    }
}
