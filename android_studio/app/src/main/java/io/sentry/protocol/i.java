package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Request.java */
/* loaded from: classes4.dex */
public final class i implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83707a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83708b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83709c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Object f83710d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private String f83711e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Map<String, String> f83712f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Map<String, String> f83713g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Long f83714h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Map<String, String> f83715i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private String f83716j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private Map<String, Object> f83717k;

    /* compiled from: Request.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<i> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public i a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            i iVar = new i();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1650269616:
                        if (I.equals(b.f83726i)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1077554975:
                        if (I.equals("method")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 100589:
                        if (I.equals(b.f83724g)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 116079:
                        if (I.equals("url")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3076010:
                        if (I.equals("data")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 106069776:
                        if (I.equals("other")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 795307910:
                        if (I.equals("headers")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 952189583:
                        if (I.equals("cookies")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1252988030:
                        if (I.equals("body_size")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 1595298664:
                        if (I.equals(b.f83720c)) {
                            c10 = '\t';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        iVar.f83716j = i1Var.E0();
                        break;
                    case 1:
                        iVar.f83708b = i1Var.E0();
                        break;
                    case 2:
                        Map map = (Map) i1Var.C0();
                        if (map == null) {
                            break;
                        } else {
                            iVar.f83713g = io.sentry.util.a.e(map);
                            break;
                        }
                    case 3:
                        iVar.f83707a = i1Var.E0();
                        break;
                    case 4:
                        iVar.f83710d = i1Var.C0();
                        break;
                    case 5:
                        Map map2 = (Map) i1Var.C0();
                        if (map2 == null) {
                            break;
                        } else {
                            iVar.f83715i = io.sentry.util.a.e(map2);
                            break;
                        }
                    case 6:
                        Map map3 = (Map) i1Var.C0();
                        if (map3 == null) {
                            break;
                        } else {
                            iVar.f83712f = io.sentry.util.a.e(map3);
                            break;
                        }
                    case 7:
                        iVar.f83711e = i1Var.E0();
                        break;
                    case '\b':
                        iVar.f83714h = i1Var.A0();
                        break;
                    case '\t':
                        iVar.f83709c = i1Var.E0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            iVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return iVar;
        }
    }

    /* compiled from: Request.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83718a = "url";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83719b = "method";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83720c = "query_string";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83721d = "data";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83722e = "cookies";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83723f = "headers";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83724g = "env";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83725h = "other";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83726i = "fragment";

        /* renamed from: j  reason: collision with root package name */
        public static final String f83727j = "body_size";
    }

    public i() {
    }

    public void A(@m8.h String str) {
        this.f83708b = str;
    }

    public void B(@m8.h Map<String, String> map) {
        this.f83715i = io.sentry.util.a.e(map);
    }

    public void C(@m8.h String str) {
        this.f83709c = str;
    }

    public void D(@m8.h String str) {
        this.f83707a = str;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83717k;
    }

    @m8.h
    public Long k() {
        return this.f83714h;
    }

    @m8.h
    public String l() {
        return this.f83711e;
    }

    @m8.h
    public Object m() {
        return this.f83710d;
    }

    @m8.h
    public Map<String, String> n() {
        return this.f83713g;
    }

    @m8.h
    public String o() {
        return this.f83716j;
    }

    @m8.h
    public Map<String, String> p() {
        return this.f83712f;
    }

    @m8.h
    public String q() {
        return this.f83708b;
    }

    @m8.h
    public Map<String, String> r() {
        return this.f83715i;
    }

    @m8.h
    public String s() {
        return this.f83709c;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83707a != null) {
            k1Var.A("url").l0(this.f83707a);
        }
        if (this.f83708b != null) {
            k1Var.A("method").l0(this.f83708b);
        }
        if (this.f83709c != null) {
            k1Var.A(b.f83720c).l0(this.f83709c);
        }
        if (this.f83710d != null) {
            k1Var.A("data").q0(o0Var, this.f83710d);
        }
        if (this.f83711e != null) {
            k1Var.A("cookies").l0(this.f83711e);
        }
        if (this.f83712f != null) {
            k1Var.A("headers").q0(o0Var, this.f83712f);
        }
        if (this.f83713g != null) {
            k1Var.A(b.f83724g).q0(o0Var, this.f83713g);
        }
        if (this.f83715i != null) {
            k1Var.A("other").q0(o0Var, this.f83715i);
        }
        if (this.f83716j != null) {
            k1Var.A(b.f83726i).q0(o0Var, this.f83716j);
        }
        if (this.f83714h != null) {
            k1Var.A("body_size").q0(o0Var, this.f83714h);
        }
        Map<String, Object> map = this.f83717k;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83717k.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83717k = map;
    }

    @m8.h
    public String t() {
        return this.f83707a;
    }

    public void u(@m8.h Long l10) {
        this.f83714h = l10;
    }

    public void v(@m8.h String str) {
        this.f83711e = str;
    }

    public void w(@m8.h Object obj) {
        this.f83710d = obj;
    }

    public void x(@m8.h Map<String, String> map) {
        this.f83713g = io.sentry.util.a.e(map);
    }

    public void y(@m8.h String str) {
        this.f83716j = str;
    }

    public void z(@m8.h Map<String, String> map) {
        this.f83712f = io.sentry.util.a.e(map);
    }

    public i(@m8.g i iVar) {
        this.f83707a = iVar.f83707a;
        this.f83711e = iVar.f83711e;
        this.f83708b = iVar.f83708b;
        this.f83709c = iVar.f83709c;
        this.f83712f = io.sentry.util.a.e(iVar.f83712f);
        this.f83713g = io.sentry.util.a.e(iVar.f83713g);
        this.f83715i = io.sentry.util.a.e(iVar.f83715i);
        this.f83717k = io.sentry.util.a.e(iVar.f83717k);
        this.f83710d = iVar.f83710d;
        this.f83716j = iVar.f83716j;
        this.f83714h = iVar.f83714h;
    }
}
