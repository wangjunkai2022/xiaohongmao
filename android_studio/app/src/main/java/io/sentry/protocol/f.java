package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Mechanism.java */
/* loaded from: classes4.dex */
public final class f implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final transient Thread f83670a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83671b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83672c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f83673d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Boolean f83674e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Map<String, Object> f83675f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Map<String, Object> f83676g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Boolean f83677h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Map<String, Object> f83678i;

    /* compiled from: Mechanism.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<f> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public f a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            f fVar = new f();
            i1Var.b();
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1724546052:
                        if (I.equals("description")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3076010:
                        if (I.equals("data")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3347973:
                        if (I.equals("meta")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3575610:
                        if (I.equals("type")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 692803388:
                        if (I.equals(b.f83682d)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 989128517:
                        if (I.equals(b.f83685g)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1297152568:
                        if (I.equals(b.f83681c)) {
                            c10 = 6;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        fVar.f83672c = i1Var.E0();
                        break;
                    case 1:
                        fVar.f83676g = io.sentry.util.a.e((Map) i1Var.C0());
                        break;
                    case 2:
                        fVar.f83675f = io.sentry.util.a.e((Map) i1Var.C0());
                        break;
                    case 3:
                        fVar.f83671b = i1Var.E0();
                        break;
                    case 4:
                        fVar.f83674e = i1Var.t0();
                        break;
                    case 5:
                        fVar.f83677h = i1Var.t0();
                        break;
                    case 6:
                        fVar.f83673d = i1Var.E0();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        i1Var.G0(o0Var, hashMap, I);
                        break;
                }
            }
            i1Var.p();
            fVar.setUnknown(hashMap);
            return fVar;
        }
    }

    /* compiled from: Mechanism.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83679a = "type";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83680b = "description";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83681c = "help_link";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83682d = "handled";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83683e = "meta";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83684f = "data";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83685g = "synthetic";
    }

    public f() {
        this(null);
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83678i;
    }

    @m8.h
    public Map<String, Object> h() {
        return this.f83676g;
    }

    @m8.h
    public String i() {
        return this.f83672c;
    }

    @m8.h
    public String j() {
        return this.f83673d;
    }

    @m8.h
    public Map<String, Object> k() {
        return this.f83675f;
    }

    @m8.h
    public Boolean l() {
        return this.f83677h;
    }

    @m8.h
    Thread m() {
        return this.f83670a;
    }

    @m8.h
    public String n() {
        return this.f83671b;
    }

    @m8.h
    public Boolean o() {
        return this.f83674e;
    }

    public void p(@m8.h Map<String, Object> map) {
        this.f83676g = io.sentry.util.a.f(map);
    }

    public void q(@m8.h String str) {
        this.f83672c = str;
    }

    public void r(@m8.h Boolean bool) {
        this.f83674e = bool;
    }

    public void s(@m8.h String str) {
        this.f83673d = str;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83671b != null) {
            k1Var.A("type").l0(this.f83671b);
        }
        if (this.f83672c != null) {
            k1Var.A("description").l0(this.f83672c);
        }
        if (this.f83673d != null) {
            k1Var.A(b.f83681c).l0(this.f83673d);
        }
        if (this.f83674e != null) {
            k1Var.A(b.f83682d).g0(this.f83674e);
        }
        if (this.f83675f != null) {
            k1Var.A("meta").q0(o0Var, this.f83675f);
        }
        if (this.f83676g != null) {
            k1Var.A("data").q0(o0Var, this.f83676g);
        }
        if (this.f83677h != null) {
            k1Var.A(b.f83685g).g0(this.f83677h);
        }
        Map<String, Object> map = this.f83678i;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83678i.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83678i = map;
    }

    public void t(@m8.h Map<String, Object> map) {
        this.f83675f = io.sentry.util.a.f(map);
    }

    public void u(@m8.h Boolean bool) {
        this.f83677h = bool;
    }

    public void v(@m8.h String str) {
        this.f83671b = str;
    }

    public f(@m8.h Thread thread) {
        this.f83670a = thread;
    }
}
