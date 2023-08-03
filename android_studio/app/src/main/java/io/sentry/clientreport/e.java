package io.sentry.clientreport;

import io.sentry.SentryLevel;
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
import m8.a;

/* compiled from: DiscardedEvent.java */
@a.c
/* loaded from: classes4.dex */
public final class e implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f83075a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f83076b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Long f83077c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Object> f83078d;

    /* compiled from: DiscardedEvent.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<e> {
        private Exception c(String str, o0 o0Var) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            o0Var.b(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public e a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            String str = null;
            String str2 = null;
            Long l10 = null;
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1285004149:
                        if (I.equals(b.f83081c)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -934964668:
                        if (I.equals(b.f83079a)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 50511102:
                        if (I.equals("category")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        l10 = i1Var.A0();
                        break;
                    case 1:
                        str = i1Var.E0();
                        break;
                    case 2:
                        str2 = i1Var.E0();
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
            if (str != null) {
                if (str2 != null) {
                    if (l10 != null) {
                        e eVar = new e(str, str2, l10);
                        eVar.setUnknown(hashMap);
                        return eVar;
                    }
                    throw c(b.f83081c, o0Var);
                }
                throw c("category", o0Var);
            }
            throw c(b.f83079a, o0Var);
        }
    }

    /* compiled from: DiscardedEvent.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83079a = "reason";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83080b = "category";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83081c = "quantity";
    }

    public e(@m8.g String str, @m8.g String str2, @m8.g Long l10) {
        this.f83075a = str;
        this.f83076b = str2;
        this.f83077c = l10;
    }

    @m8.g
    public String a() {
        return this.f83076b;
    }

    @m8.g
    public Long b() {
        return this.f83077c;
    }

    @m8.g
    public String c() {
        return this.f83075a;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83078d;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A(b.f83079a).l0(this.f83075a);
        k1Var.A("category").l0(this.f83076b);
        k1Var.A(b.f83081c).h0(this.f83077c);
        Map<String, Object> map = this.f83078d;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83078d.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83078d = map;
    }

    public String toString() {
        return "DiscardedEvent{reason='" + this.f83075a + "', category='" + this.f83076b + "', quantity=" + this.f83077c + '}';
    }
}
