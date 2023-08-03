package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Message.java */
/* loaded from: classes4.dex */
public final class g implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83686a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83687b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private List<String> f83688c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Object> f83689d;

    /* compiled from: Message.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<g> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public g a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            g gVar = new g();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -995427962:
                        if (I.equals("params")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 954925063:
                        if (I.equals("message")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1811591356:
                        if (I.equals(b.f83690a)) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        List list = (List) i1Var.C0();
                        if (list == null) {
                            break;
                        } else {
                            gVar.f83688c = list;
                            break;
                        }
                    case 1:
                        gVar.f83687b = i1Var.E0();
                        break;
                    case 2:
                        gVar.f83686a = i1Var.E0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            gVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return gVar;
        }
    }

    /* compiled from: Message.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83690a = "formatted";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83691b = "message";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83692c = "params";
    }

    @m8.h
    public String d() {
        return this.f83686a;
    }

    @m8.h
    public String e() {
        return this.f83687b;
    }

    @m8.h
    public List<String> f() {
        return this.f83688c;
    }

    public void g(@m8.h String str) {
        this.f83686a = str;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83689d;
    }

    public void h(@m8.h String str) {
        this.f83687b = str;
    }

    public void i(@m8.h List<String> list) {
        this.f83688c = io.sentry.util.a.d(list);
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83686a != null) {
            k1Var.A(b.f83690a).l0(this.f83686a);
        }
        if (this.f83687b != null) {
            k1Var.A("message").l0(this.f83687b);
        }
        List<String> list = this.f83688c;
        if (list != null && !list.isEmpty()) {
            k1Var.A("params").q0(o0Var, this.f83688c);
        }
        Map<String, Object> map = this.f83689d;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83689d.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83689d = map;
    }
}
