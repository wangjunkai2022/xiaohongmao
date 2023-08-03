package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.protocol.f;
import io.sentry.protocol.s;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: SentryException.java */
/* loaded from: classes4.dex */
public final class m implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83756a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83757b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83758c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Long f83759d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private s f83760e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private f f83761f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Map<String, Object> f83762g;

    /* compiled from: SentryException.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<m> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public m a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            m mVar = new m();
            i1Var.b();
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1562235024:
                        if (I.equals(b.f83766d)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1068784020:
                        if (I.equals("module")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3575610:
                        if (I.equals("type")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 111972721:
                        if (I.equals("value")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1225089881:
                        if (I.equals(b.f83768f)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 2055832509:
                        if (I.equals("stacktrace")) {
                            c10 = 5;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        mVar.f83759d = i1Var.A0();
                        break;
                    case 1:
                        mVar.f83758c = i1Var.E0();
                        break;
                    case 2:
                        mVar.f83756a = i1Var.E0();
                        break;
                    case 3:
                        mVar.f83757b = i1Var.E0();
                        break;
                    case 4:
                        mVar.f83761f = (f) i1Var.D0(o0Var, new f.a());
                        break;
                    case 5:
                        mVar.f83760e = (s) i1Var.D0(o0Var, new s.a());
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
            mVar.setUnknown(hashMap);
            return mVar;
        }
    }

    /* compiled from: SentryException.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83763a = "type";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83764b = "value";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83765c = "module";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83766d = "thread_id";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83767e = "stacktrace";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83768f = "mechanism";
    }

    @m8.h
    public f g() {
        return this.f83761f;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83762g;
    }

    @m8.h
    public String h() {
        return this.f83758c;
    }

    @m8.h
    public s i() {
        return this.f83760e;
    }

    @m8.h
    public Long j() {
        return this.f83759d;
    }

    @m8.h
    public String k() {
        return this.f83756a;
    }

    @m8.h
    public String l() {
        return this.f83757b;
    }

    public void m(@m8.h f fVar) {
        this.f83761f = fVar;
    }

    public void n(@m8.h String str) {
        this.f83758c = str;
    }

    public void o(@m8.h s sVar) {
        this.f83760e = sVar;
    }

    public void p(@m8.h Long l10) {
        this.f83759d = l10;
    }

    public void q(@m8.h String str) {
        this.f83756a = str;
    }

    public void r(@m8.h String str) {
        this.f83757b = str;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83756a != null) {
            k1Var.A("type").l0(this.f83756a);
        }
        if (this.f83757b != null) {
            k1Var.A("value").l0(this.f83757b);
        }
        if (this.f83758c != null) {
            k1Var.A("module").l0(this.f83758c);
        }
        if (this.f83759d != null) {
            k1Var.A(b.f83766d).h0(this.f83759d);
        }
        if (this.f83760e != null) {
            k1Var.A("stacktrace").q0(o0Var, this.f83760e);
        }
        if (this.f83761f != null) {
            k1Var.A(b.f83768f).q0(o0Var, this.f83761f);
        }
        Map<String, Object> map = this.f83762g;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83762g.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83762g = map;
    }
}
