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

/* compiled from: OperatingSystem.java */
/* loaded from: classes4.dex */
public final class h implements o1, m1 {

    /* renamed from: h  reason: collision with root package name */
    public static final String f83693h = "os";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83694a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83695b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83696c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f83697d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private String f83698e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Boolean f83699f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Map<String, Object> f83700g;

    /* compiled from: OperatingSystem.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<h> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public h a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            h hVar = new h();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -925311743:
                        if (I.equals(b.f83706f)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -339173787:
                        if (I.equals("raw_description")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3373707:
                        if (I.equals("name")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 94094958:
                        if (I.equals("build")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 351608024:
                        if (I.equals("version")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 2015527638:
                        if (I.equals(b.f83705e)) {
                            c10 = 5;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        hVar.f83699f = i1Var.t0();
                        break;
                    case 1:
                        hVar.f83696c = i1Var.E0();
                        break;
                    case 2:
                        hVar.f83694a = i1Var.E0();
                        break;
                    case 3:
                        hVar.f83697d = i1Var.E0();
                        break;
                    case 4:
                        hVar.f83695b = i1Var.E0();
                        break;
                    case 5:
                        hVar.f83698e = i1Var.E0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            hVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return hVar;
        }
    }

    /* compiled from: OperatingSystem.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83701a = "name";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83702b = "version";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83703c = "raw_description";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83704d = "build";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83705e = "kernel_version";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83706f = "rooted";
    }

    public h() {
    }

    @m8.h
    public String g() {
        return this.f83697d;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83700g;
    }

    @m8.h
    public String h() {
        return this.f83698e;
    }

    @m8.h
    public String i() {
        return this.f83694a;
    }

    @m8.h
    public String j() {
        return this.f83696c;
    }

    @m8.h
    public String k() {
        return this.f83695b;
    }

    @m8.h
    public Boolean l() {
        return this.f83699f;
    }

    public void m(@m8.h String str) {
        this.f83697d = str;
    }

    public void n(@m8.h String str) {
        this.f83698e = str;
    }

    public void o(@m8.h String str) {
        this.f83694a = str;
    }

    public void p(@m8.h String str) {
        this.f83696c = str;
    }

    public void q(@m8.h Boolean bool) {
        this.f83699f = bool;
    }

    public void r(@m8.h String str) {
        this.f83695b = str;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83694a != null) {
            k1Var.A("name").l0(this.f83694a);
        }
        if (this.f83695b != null) {
            k1Var.A("version").l0(this.f83695b);
        }
        if (this.f83696c != null) {
            k1Var.A("raw_description").l0(this.f83696c);
        }
        if (this.f83697d != null) {
            k1Var.A("build").l0(this.f83697d);
        }
        if (this.f83698e != null) {
            k1Var.A(b.f83705e).l0(this.f83698e);
        }
        if (this.f83699f != null) {
            k1Var.A(b.f83706f).g0(this.f83699f);
        }
        Map<String, Object> map = this.f83700g;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83700g.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83700g = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(@m8.g h hVar) {
        this.f83694a = hVar.f83694a;
        this.f83695b = hVar.f83695b;
        this.f83696c = hVar.f83696c;
        this.f83697d = hVar.f83697d;
        this.f83698e = hVar.f83698e;
        this.f83699f = hVar.f83699f;
        this.f83700g = io.sentry.util.a.e(hVar.f83700g);
    }
}
