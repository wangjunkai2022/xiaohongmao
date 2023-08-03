package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: App.java */
/* loaded from: classes4.dex */
public final class a implements o1, m1 {

    /* renamed from: j  reason: collision with root package name */
    public static final String f83616j = "app";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83617a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Date f83618b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83619c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f83620d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private String f83621e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private String f83622f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private String f83623g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Map<String, String> f83624h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Map<String, Object> f83625i;

    /* compiled from: App.java */
    /* renamed from: io.sentry.protocol.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0714a implements c1<a> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public a a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            a aVar = new a();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1898053579:
                        if (I.equals(b.f83628c)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -901870406:
                        if (I.equals(b.f83631f)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -470395285:
                        if (I.equals(b.f83629d)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 746297735:
                        if (I.equals(b.f83626a)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 791585128:
                        if (I.equals(b.f83627b)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 1133704324:
                        if (I.equals(b.f83633h)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1167648233:
                        if (I.equals(b.f83630e)) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1826866896:
                        if (I.equals(b.f83632g)) {
                            c10 = 7;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        aVar.f83619c = i1Var.E0();
                        break;
                    case 1:
                        aVar.f83622f = i1Var.E0();
                        break;
                    case 2:
                        aVar.f83620d = i1Var.E0();
                        break;
                    case 3:
                        aVar.f83617a = i1Var.E0();
                        break;
                    case 4:
                        aVar.f83618b = i1Var.u0(o0Var);
                        break;
                    case 5:
                        aVar.f83624h = io.sentry.util.a.e((Map) i1Var.C0());
                        break;
                    case 6:
                        aVar.f83621e = i1Var.E0();
                        break;
                    case 7:
                        aVar.f83623g = i1Var.E0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            aVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return aVar;
        }
    }

    /* compiled from: App.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83626a = "app_identifier";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83627b = "app_start_time";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83628c = "device_app_hash";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83629d = "build_type";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83630e = "app_name";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83631f = "app_version";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83632g = "app_build";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83633h = "permissions";
    }

    public a() {
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83625i;
    }

    @m8.h
    public String i() {
        return this.f83623g;
    }

    @m8.h
    public String j() {
        return this.f83617a;
    }

    @m8.h
    public String k() {
        return this.f83621e;
    }

    @m8.h
    public Date l() {
        Date date = this.f83618b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    @m8.h
    public String m() {
        return this.f83622f;
    }

    @m8.h
    public String n() {
        return this.f83620d;
    }

    @m8.h
    public String o() {
        return this.f83619c;
    }

    @m8.h
    public Map<String, String> p() {
        return this.f83624h;
    }

    public void q(@m8.h String str) {
        this.f83623g = str;
    }

    public void r(@m8.h String str) {
        this.f83617a = str;
    }

    public void s(@m8.h String str) {
        this.f83621e = str;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83617a != null) {
            k1Var.A(b.f83626a).l0(this.f83617a);
        }
        if (this.f83618b != null) {
            k1Var.A(b.f83627b).q0(o0Var, this.f83618b);
        }
        if (this.f83619c != null) {
            k1Var.A(b.f83628c).l0(this.f83619c);
        }
        if (this.f83620d != null) {
            k1Var.A(b.f83629d).l0(this.f83620d);
        }
        if (this.f83621e != null) {
            k1Var.A(b.f83630e).l0(this.f83621e);
        }
        if (this.f83622f != null) {
            k1Var.A(b.f83631f).l0(this.f83622f);
        }
        if (this.f83623g != null) {
            k1Var.A(b.f83632g).l0(this.f83623g);
        }
        Map<String, String> map = this.f83624h;
        if (map != null && !map.isEmpty()) {
            k1Var.A(b.f83633h).q0(o0Var, this.f83624h);
        }
        Map<String, Object> map2 = this.f83625i;
        if (map2 != null) {
            for (String str : map2.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83625i.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83625i = map;
    }

    public void t(@m8.h Date date) {
        this.f83618b = date;
    }

    public void u(@m8.h String str) {
        this.f83622f = str;
    }

    public void v(@m8.h String str) {
        this.f83620d = str;
    }

    public void w(@m8.h String str) {
        this.f83619c = str;
    }

    public void x(@m8.h Map<String, String> map) {
        this.f83624h = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@m8.g a aVar) {
        this.f83623g = aVar.f83623g;
        this.f83617a = aVar.f83617a;
        this.f83621e = aVar.f83621e;
        this.f83618b = aVar.f83618b;
        this.f83622f = aVar.f83622f;
        this.f83620d = aVar.f83620d;
        this.f83619c = aVar.f83619c;
        this.f83624h = io.sentry.util.a.e(aVar.f83624h);
        this.f83625i = io.sentry.util.a.e(aVar.f83625i);
    }
}
