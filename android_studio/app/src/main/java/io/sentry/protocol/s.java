package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.protocol.r;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: SentryStackTrace.java */
/* loaded from: classes4.dex */
public final class s implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private List<r> f83840a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f83841b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Boolean f83842c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Object> f83843d;

    /* compiled from: SentryStackTrace.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<s> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public s a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            s sVar = new s();
            i1Var.b();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1266514778:
                        if (I.equals(b.f83844a)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 78226992:
                        if (I.equals(b.f83845b)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 284874180:
                        if (I.equals(b.f83846c)) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        sVar.f83840a = i1Var.z0(o0Var, new r.a());
                        break;
                    case 1:
                        sVar.f83841b = io.sentry.util.a.e((Map) i1Var.C0());
                        break;
                    case 2:
                        sVar.f83842c = i1Var.t0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            sVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return sVar;
        }
    }

    /* compiled from: SentryStackTrace.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83844a = "frames";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83845b = "registers";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83846c = "snapshot";
    }

    public s() {
    }

    @m8.h
    public List<r> d() {
        return this.f83840a;
    }

    @m8.h
    public Map<String, String> e() {
        return this.f83841b;
    }

    @m8.h
    public Boolean f() {
        return this.f83842c;
    }

    public void g(@m8.h List<r> list) {
        this.f83840a = list;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83843d;
    }

    public void h(@m8.h Map<String, String> map) {
        this.f83841b = map;
    }

    public void i(@m8.h Boolean bool) {
        this.f83842c = bool;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83840a != null) {
            k1Var.A(b.f83844a).q0(o0Var, this.f83840a);
        }
        if (this.f83841b != null) {
            k1Var.A(b.f83845b).q0(o0Var, this.f83841b);
        }
        if (this.f83842c != null) {
            k1Var.A(b.f83846c).g0(this.f83842c);
        }
        Map<String, Object> map = this.f83843d;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83843d.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83843d = map;
    }

    public s(@m8.h List<r> list) {
        this.f83840a = list;
    }
}
