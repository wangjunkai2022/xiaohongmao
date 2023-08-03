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

/* compiled from: SentryRuntime.java */
/* loaded from: classes4.dex */
public final class p implements o1, m1 {

    /* renamed from: e  reason: collision with root package name */
    public static final String f83776e = "runtime";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83777a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83778b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83779c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Object> f83780d;

    /* compiled from: SentryRuntime.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<p> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public p a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            p pVar = new p();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -339173787:
                        if (I.equals("raw_description")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3373707:
                        if (I.equals("name")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 351608024:
                        if (I.equals("version")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        pVar.f83779c = i1Var.E0();
                        break;
                    case 1:
                        pVar.f83777a = i1Var.E0();
                        break;
                    case 2:
                        pVar.f83778b = i1Var.E0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            pVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return pVar;
        }
    }

    /* compiled from: SentryRuntime.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83781a = "name";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83782b = "version";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83783c = "raw_description";
    }

    public p() {
    }

    @m8.h
    public String d() {
        return this.f83777a;
    }

    @m8.h
    public String e() {
        return this.f83779c;
    }

    @m8.h
    public String f() {
        return this.f83778b;
    }

    public void g(@m8.h String str) {
        this.f83777a = str;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83780d;
    }

    public void h(@m8.h String str) {
        this.f83779c = str;
    }

    public void i(@m8.h String str) {
        this.f83778b = str;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83777a != null) {
            k1Var.A("name").l0(this.f83777a);
        }
        if (this.f83778b != null) {
            k1Var.A("version").l0(this.f83778b);
        }
        if (this.f83779c != null) {
            k1Var.A("raw_description").l0(this.f83779c);
        }
        Map<String, Object> map = this.f83780d;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83780d.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83780d = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(@m8.g p pVar) {
        this.f83777a = pVar.f83777a;
        this.f83778b = pVar.f83778b;
        this.f83779c = pVar.f83779c;
        this.f83780d = io.sentry.util.a.e(pVar.f83780d);
    }
}
