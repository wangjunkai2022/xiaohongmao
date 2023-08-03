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

/* compiled from: Response.java */
/* loaded from: classes4.dex */
public final class j implements o1, m1 {

    /* renamed from: f  reason: collision with root package name */
    public static final String f83728f = "response";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83729a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f83730b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Integer f83731c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Long f83732d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Object> f83733e;

    /* compiled from: Response.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<j> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public j a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            j jVar = new j();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -891699686:
                        if (I.equals(b.f83736c)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 795307910:
                        if (I.equals("headers")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 952189583:
                        if (I.equals("cookies")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1252988030:
                        if (I.equals("body_size")) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        jVar.f83731c = i1Var.y0();
                        break;
                    case 1:
                        Map map = (Map) i1Var.C0();
                        if (map == null) {
                            break;
                        } else {
                            jVar.f83730b = io.sentry.util.a.e(map);
                            break;
                        }
                    case 2:
                        jVar.f83729a = i1Var.E0();
                        break;
                    case 3:
                        jVar.f83732d = i1Var.A0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            jVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return jVar;
        }
    }

    /* compiled from: Response.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83734a = "cookies";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83735b = "headers";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83736c = "status_code";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83737d = "body_size";
    }

    public j() {
    }

    @m8.h
    public Long e() {
        return this.f83732d;
    }

    @m8.h
    public String f() {
        return this.f83729a;
    }

    @m8.h
    public Map<String, String> g() {
        return this.f83730b;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83733e;
    }

    @m8.h
    public Integer h() {
        return this.f83731c;
    }

    public void i(@m8.h Long l10) {
        this.f83732d = l10;
    }

    public void j(@m8.h String str) {
        this.f83729a = str;
    }

    public void k(@m8.h Map<String, String> map) {
        this.f83730b = io.sentry.util.a.e(map);
    }

    public void l(@m8.h Integer num) {
        this.f83731c = num;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83729a != null) {
            k1Var.A("cookies").l0(this.f83729a);
        }
        if (this.f83730b != null) {
            k1Var.A("headers").q0(o0Var, this.f83730b);
        }
        if (this.f83731c != null) {
            k1Var.A(b.f83736c).q0(o0Var, this.f83731c);
        }
        if (this.f83732d != null) {
            k1Var.A("body_size").q0(o0Var, this.f83732d);
        }
        Map<String, Object> map = this.f83733e;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83733e.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83733e = map;
    }

    public j(@m8.g j jVar) {
        this.f83729a = jVar.f83729a;
        this.f83730b = io.sentry.util.a.e(jVar.f83730b);
        this.f83733e = io.sentry.util.a.e(jVar.f83733e);
        this.f83731c = jVar.f83731c;
        this.f83732d = jVar.f83732d;
    }
}
