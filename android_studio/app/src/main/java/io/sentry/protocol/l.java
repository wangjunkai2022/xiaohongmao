package io.sentry.protocol;

import io.sentry.SentryLevel;
import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.protocol.o;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: SdkVersion.java */
/* loaded from: classes4.dex */
public final class l implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private String f83747a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private String f83748b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private List<o> f83749c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private List<String> f83750d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Object> f83751e;

    /* compiled from: SdkVersion.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<l> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public l a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            i1Var.b();
            String str = null;
            String str2 = null;
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case 3373707:
                        if (I.equals("name")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 351608024:
                        if (I.equals("version")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 750867693:
                        if (I.equals(b.f83754c)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1487029535:
                        if (I.equals(b.f83755d)) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        str = i1Var.M();
                        break;
                    case 1:
                        str2 = i1Var.M();
                        break;
                    case 2:
                        List z02 = i1Var.z0(o0Var, new o.a());
                        if (z02 == null) {
                            break;
                        } else {
                            arrayList.addAll(z02);
                            break;
                        }
                    case 3:
                        List list = (List) i1Var.C0();
                        if (list == null) {
                            break;
                        } else {
                            arrayList2.addAll(list);
                            break;
                        }
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        i1Var.G0(o0Var, hashMap, I);
                        break;
                }
            }
            i1Var.p();
            if (str == null) {
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"name\"");
                o0Var.b(SentryLevel.ERROR, "Missing required field \"name\"", illegalStateException);
                throw illegalStateException;
            } else if (str2 != null) {
                l lVar = new l(str, str2);
                lVar.f83749c = arrayList;
                lVar.f83750d = arrayList2;
                lVar.setUnknown(hashMap);
                return lVar;
            } else {
                IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"version\"");
                o0Var.b(SentryLevel.ERROR, "Missing required field \"version\"", illegalStateException2);
                throw illegalStateException2;
            }
        }
    }

    /* compiled from: SdkVersion.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83752a = "name";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83753b = "version";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83754c = "packages";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83755d = "integrations";
    }

    public l(@m8.g String str, @m8.g String str2) {
        this.f83747a = (String) io.sentry.util.l.c(str, "name is required.");
        this.f83748b = (String) io.sentry.util.l.c(str2, "version is required.");
    }

    @m8.g
    public static l k(@m8.h l lVar, @m8.g String str, @m8.g String str2) {
        io.sentry.util.l.c(str, "name is required.");
        io.sentry.util.l.c(str2, "version is required.");
        if (lVar == null) {
            return new l(str, str2);
        }
        lVar.i(str);
        lVar.j(str2);
        return lVar;
    }

    public void c(@m8.g String str) {
        io.sentry.util.l.c(str, "integration is required.");
        if (this.f83750d == null) {
            this.f83750d = new ArrayList();
        }
        this.f83750d.add(str);
    }

    public void d(@m8.g String str, @m8.g String str2) {
        io.sentry.util.l.c(str, "name is required.");
        io.sentry.util.l.c(str2, "version is required.");
        o oVar = new o(str, str2);
        if (this.f83749c == null) {
            this.f83749c = new ArrayList();
        }
        this.f83749c.add(oVar);
    }

    @m8.h
    public List<String> e() {
        return this.f83750d;
    }

    @m8.g
    public String f() {
        return this.f83747a;
    }

    @m8.h
    public List<o> g() {
        return this.f83749c;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83751e;
    }

    @m8.g
    public String h() {
        return this.f83748b;
    }

    public void i(@m8.g String str) {
        this.f83747a = (String) io.sentry.util.l.c(str, "name is required.");
    }

    public void j(@m8.g String str) {
        this.f83748b = (String) io.sentry.util.l.c(str, "version is required.");
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("name").l0(this.f83747a);
        k1Var.A("version").l0(this.f83748b);
        List<o> list = this.f83749c;
        if (list != null && !list.isEmpty()) {
            k1Var.A(b.f83754c).q0(o0Var, this.f83749c);
        }
        List<String> list2 = this.f83750d;
        if (list2 != null && !list2.isEmpty()) {
            k1Var.A(b.f83755d).q0(o0Var, this.f83750d);
        }
        Map<String, Object> map = this.f83751e;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83751e.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83751e = map;
    }
}
