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

/* compiled from: User.java */
/* loaded from: classes4.dex */
public final class w implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83882a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83883b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83884c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f83885d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private String f83886e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Map<String, String> f83887f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Map<String, Object> f83888g;

    /* compiled from: User.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<w> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public w a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            w wVar = new w();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -265713450:
                        if (I.equals(b.f83891c)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3355:
                        if (I.equals("id")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3076010:
                        if (I.equals("data")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 96619420:
                        if (I.equals("email")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 106069776:
                        if (I.equals("other")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 1480014044:
                        if (I.equals("ip_address")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1973722931:
                        if (I.equals("segment")) {
                            c10 = 6;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        wVar.f83884c = i1Var.E0();
                        break;
                    case 1:
                        wVar.f83883b = i1Var.E0();
                        break;
                    case 2:
                        wVar.f83887f = io.sentry.util.a.e((Map) i1Var.C0());
                        break;
                    case 3:
                        wVar.f83882a = i1Var.E0();
                        break;
                    case 4:
                        if (wVar.f83887f != null && !wVar.f83887f.isEmpty()) {
                            break;
                        } else {
                            wVar.f83887f = io.sentry.util.a.e((Map) i1Var.C0());
                            break;
                        }
                        break;
                    case 5:
                        wVar.f83886e = i1Var.E0();
                        break;
                    case 6:
                        wVar.f83885d = i1Var.E0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            wVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return wVar;
        }
    }

    /* compiled from: User.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83889a = "email";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83890b = "id";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83891c = "username";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83892d = "segment";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83893e = "ip_address";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83894f = "other";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83895g = "data";
    }

    public w() {
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83888g;
    }

    @m8.h
    public Map<String, String> h() {
        return this.f83887f;
    }

    @m8.h
    public String i() {
        return this.f83882a;
    }

    @m8.h
    public String j() {
        return this.f83883b;
    }

    @m8.h
    public String k() {
        return this.f83886e;
    }

    @m8.h
    @Deprecated
    public Map<String, String> l() {
        return h();
    }

    @m8.h
    public String m() {
        return this.f83885d;
    }

    @m8.h
    public String n() {
        return this.f83884c;
    }

    public void o(@m8.h Map<String, String> map) {
        this.f83887f = io.sentry.util.a.e(map);
    }

    public void p(@m8.h String str) {
        this.f83882a = str;
    }

    public void q(@m8.h String str) {
        this.f83883b = str;
    }

    public void r(@m8.h String str) {
        this.f83886e = str;
    }

    @Deprecated
    public void s(@m8.h Map<String, String> map) {
        o(map);
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83882a != null) {
            k1Var.A("email").l0(this.f83882a);
        }
        if (this.f83883b != null) {
            k1Var.A("id").l0(this.f83883b);
        }
        if (this.f83884c != null) {
            k1Var.A(b.f83891c).l0(this.f83884c);
        }
        if (this.f83885d != null) {
            k1Var.A("segment").l0(this.f83885d);
        }
        if (this.f83886e != null) {
            k1Var.A("ip_address").l0(this.f83886e);
        }
        if (this.f83887f != null) {
            k1Var.A("data").q0(o0Var, this.f83887f);
        }
        Map<String, Object> map = this.f83888g;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83888g.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83888g = map;
    }

    public void t(@m8.h String str) {
        this.f83885d = str;
    }

    public void u(@m8.h String str) {
        this.f83884c = str;
    }

    public w(@m8.g w wVar) {
        this.f83882a = wVar.f83882a;
        this.f83884c = wVar.f83884c;
        this.f83883b = wVar.f83883b;
        this.f83886e = wVar.f83886e;
        this.f83885d = wVar.f83885d;
        this.f83887f = io.sentry.util.a.e(wVar.f83887f);
        this.f83888g = io.sentry.util.a.e(wVar.f83888g);
    }
}
