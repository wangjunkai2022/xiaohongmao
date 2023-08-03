package io.sentry;

import io.sentry.exception.ExceptionMechanismException;
import io.sentry.f;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.c;
import io.sentry.protocol.i;
import io.sentry.protocol.l;
import io.sentry.protocol.n;
import io.sentry.protocol.w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m8.a;

/* compiled from: SentryBaseEvent.java */
/* loaded from: classes4.dex */
public abstract class e3 {

    /* renamed from: p  reason: collision with root package name */
    public static final String f83130p = "java";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private io.sentry.protocol.n f83131a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Contexts f83132b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private io.sentry.protocol.l f83133c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private io.sentry.protocol.i f83134d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f83135e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private String f83136f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private String f83137g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private String f83138h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private io.sentry.protocol.w f83139i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    protected transient Throwable f83140j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private String f83141k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private String f83142l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private List<f> f83143m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private io.sentry.protocol.c f83144n;
    @m8.h

    /* renamed from: o  reason: collision with root package name */
    private Map<String, Object> f83145o;

    /* compiled from: SentryBaseEvent.java */
    /* loaded from: classes4.dex */
    public static final class a {
        public boolean a(@m8.g e3 e3Var, @m8.g String str, @m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1840434063:
                    if (str.equals(b.f83158m)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -758770169:
                    if (str.equals(b.f83155j)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -567312220:
                    if (str.equals(b.f83147b)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -85904877:
                    if (str.equals("environment")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -51457840:
                    if (str.equals(b.f83157l)) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 113722:
                    if (str.equals("sdk")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3083686:
                    if (str.equals(b.f83156k)) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 3552281:
                    if (str.equals("tags")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3599307:
                    if (str.equals("user")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 96965648:
                    if (str.equals(b.f83159n)) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 278118624:
                    if (str.equals("event_id")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 1090594823:
                    if (str.equals("release")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 1095692943:
                    if (str.equals(b.f83149d)) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 1874684019:
                    if (str.equals("platform")) {
                        c10 = '\r';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    e3Var.f83144n = (io.sentry.protocol.c) i1Var.D0(o0Var, new c.a());
                    return true;
                case 1:
                    e3Var.f83141k = i1Var.E0();
                    return true;
                case 2:
                    e3Var.f83132b.putAll(new Contexts.a().a(i1Var, o0Var));
                    return true;
                case 3:
                    e3Var.f83137g = i1Var.E0();
                    return true;
                case 4:
                    e3Var.f83143m = i1Var.z0(o0Var, new f.a());
                    return true;
                case 5:
                    e3Var.f83133c = (io.sentry.protocol.l) i1Var.D0(o0Var, new l.a());
                    return true;
                case 6:
                    e3Var.f83142l = i1Var.E0();
                    return true;
                case 7:
                    e3Var.f83135e = io.sentry.util.a.e((Map) i1Var.C0());
                    return true;
                case '\b':
                    e3Var.f83139i = (io.sentry.protocol.w) i1Var.D0(o0Var, new w.a());
                    return true;
                case '\t':
                    e3Var.f83145o = io.sentry.util.a.e((Map) i1Var.C0());
                    return true;
                case '\n':
                    e3Var.f83131a = (io.sentry.protocol.n) i1Var.D0(o0Var, new n.a());
                    return true;
                case 11:
                    e3Var.f83136f = i1Var.E0();
                    return true;
                case '\f':
                    e3Var.f83134d = (io.sentry.protocol.i) i1Var.D0(o0Var, new i.a());
                    return true;
                case '\r':
                    e3Var.f83138h = i1Var.E0();
                    return true;
                default:
                    return false;
            }
        }
    }

    /* compiled from: SentryBaseEvent.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83146a = "event_id";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83147b = "contexts";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83148c = "sdk";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83149d = "request";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83150e = "tags";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83151f = "release";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83152g = "environment";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83153h = "platform";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83154i = "user";

        /* renamed from: j  reason: collision with root package name */
        public static final String f83155j = "server_name";

        /* renamed from: k  reason: collision with root package name */
        public static final String f83156k = "dist";

        /* renamed from: l  reason: collision with root package name */
        public static final String f83157l = "breadcrumbs";

        /* renamed from: m  reason: collision with root package name */
        public static final String f83158m = "debug_meta";

        /* renamed from: n  reason: collision with root package name */
        public static final String f83159n = "extra";
    }

    /* compiled from: SentryBaseEvent.java */
    /* loaded from: classes4.dex */
    public static final class c {
        public void a(@m8.g e3 e3Var, @m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
            if (e3Var.f83131a != null) {
                k1Var.A("event_id").q0(o0Var, e3Var.f83131a);
            }
            k1Var.A(b.f83147b).q0(o0Var, e3Var.f83132b);
            if (e3Var.f83133c != null) {
                k1Var.A("sdk").q0(o0Var, e3Var.f83133c);
            }
            if (e3Var.f83134d != null) {
                k1Var.A(b.f83149d).q0(o0Var, e3Var.f83134d);
            }
            if (e3Var.f83135e != null && !e3Var.f83135e.isEmpty()) {
                k1Var.A("tags").q0(o0Var, e3Var.f83135e);
            }
            if (e3Var.f83136f != null) {
                k1Var.A("release").l0(e3Var.f83136f);
            }
            if (e3Var.f83137g != null) {
                k1Var.A("environment").l0(e3Var.f83137g);
            }
            if (e3Var.f83138h != null) {
                k1Var.A("platform").l0(e3Var.f83138h);
            }
            if (e3Var.f83139i != null) {
                k1Var.A("user").q0(o0Var, e3Var.f83139i);
            }
            if (e3Var.f83141k != null) {
                k1Var.A(b.f83155j).l0(e3Var.f83141k);
            }
            if (e3Var.f83142l != null) {
                k1Var.A(b.f83156k).l0(e3Var.f83142l);
            }
            if (e3Var.f83143m != null && !e3Var.f83143m.isEmpty()) {
                k1Var.A(b.f83157l).q0(o0Var, e3Var.f83143m);
            }
            if (e3Var.f83144n != null) {
                k1Var.A(b.f83158m).q0(o0Var, e3Var.f83144n);
            }
            if (e3Var.f83145o == null || e3Var.f83145o.isEmpty()) {
                return;
            }
            k1Var.A(b.f83159n).q0(o0Var, e3Var.f83145o);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e3(@m8.g io.sentry.protocol.n nVar) {
        this.f83132b = new Contexts();
        this.f83131a = nVar;
    }

    public void B(@m8.g f fVar) {
        if (this.f83143m == null) {
            this.f83143m = new ArrayList();
        }
        this.f83143m.add(fVar);
    }

    public void C(@m8.h String str) {
        B(new f(str));
    }

    @m8.h
    public List<f> D() {
        return this.f83143m;
    }

    @m8.g
    public Contexts E() {
        return this.f83132b;
    }

    @m8.h
    public io.sentry.protocol.c F() {
        return this.f83144n;
    }

    @m8.h
    public String G() {
        return this.f83142l;
    }

    @m8.h
    public String H() {
        return this.f83137g;
    }

    @m8.h
    public io.sentry.protocol.n I() {
        return this.f83131a;
    }

    @m8.h
    public Object J(@m8.g String str) {
        Map<String, Object> map = this.f83145o;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public Map<String, Object> K() {
        return this.f83145o;
    }

    @m8.h
    public String L() {
        return this.f83138h;
    }

    @m8.h
    public String M() {
        return this.f83136f;
    }

    @m8.h
    public io.sentry.protocol.i N() {
        return this.f83134d;
    }

    @m8.h
    public io.sentry.protocol.l O() {
        return this.f83133c;
    }

    @m8.h
    public String P() {
        return this.f83141k;
    }

    @m8.h
    public String Q(@m8.g String str) {
        Map<String, String> map = this.f83135e;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    @a.c
    @m8.h
    public Map<String, String> R() {
        return this.f83135e;
    }

    @m8.h
    public Throwable S() {
        Throwable th = this.f83140j;
        return th instanceof ExceptionMechanismException ? ((ExceptionMechanismException) th).getThrowable() : th;
    }

    @a.c
    @m8.h
    public Throwable T() {
        return this.f83140j;
    }

    @m8.h
    public io.sentry.protocol.w U() {
        return this.f83139i;
    }

    public void V(@m8.g String str) {
        Map<String, Object> map = this.f83145o;
        if (map != null) {
            map.remove(str);
        }
    }

    public void W(@m8.g String str) {
        Map<String, String> map = this.f83135e;
        if (map != null) {
            map.remove(str);
        }
    }

    public void X(@m8.h List<f> list) {
        this.f83143m = io.sentry.util.a.d(list);
    }

    public void Y(@m8.h io.sentry.protocol.c cVar) {
        this.f83144n = cVar;
    }

    public void Z(@m8.h String str) {
        this.f83142l = str;
    }

    public void a0(@m8.h String str) {
        this.f83137g = str;
    }

    public void b0(@m8.h io.sentry.protocol.n nVar) {
        this.f83131a = nVar;
    }

    public void c0(@m8.g String str, @m8.g Object obj) {
        if (this.f83145o == null) {
            this.f83145o = new HashMap();
        }
        this.f83145o.put(str, obj);
    }

    public void d0(@m8.h Map<String, Object> map) {
        this.f83145o = io.sentry.util.a.f(map);
    }

    public void e0(@m8.h String str) {
        this.f83138h = str;
    }

    public void f0(@m8.h String str) {
        this.f83136f = str;
    }

    public void g0(@m8.h io.sentry.protocol.i iVar) {
        this.f83134d = iVar;
    }

    public void h0(@m8.h io.sentry.protocol.l lVar) {
        this.f83133c = lVar;
    }

    public void i0(@m8.h String str) {
        this.f83141k = str;
    }

    public void j0(@m8.g String str, @m8.g String str2) {
        if (this.f83135e == null) {
            this.f83135e = new HashMap();
        }
        this.f83135e.put(str, str2);
    }

    public void k0(@m8.h Map<String, String> map) {
        this.f83135e = io.sentry.util.a.f(map);
    }

    public void l0(@m8.h Throwable th) {
        this.f83140j = th;
    }

    public void m0(@m8.h io.sentry.protocol.w wVar) {
        this.f83139i = wVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e3() {
        this(new io.sentry.protocol.n());
    }
}
