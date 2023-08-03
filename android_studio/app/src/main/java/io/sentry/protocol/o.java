package io.sentry.protocol;

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

/* compiled from: SentryPackage.java */
/* loaded from: classes4.dex */
public final class o implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private String f83771a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private String f83772b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f83773c;

    /* compiled from: SentryPackage.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<o> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public o a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            String str = null;
            String str2 = null;
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                if (I.equals("name")) {
                    str = i1Var.M();
                } else if (!I.equals("version")) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    i1Var.G0(o0Var, hashMap, I);
                } else {
                    str2 = i1Var.M();
                }
            }
            i1Var.p();
            if (str == null) {
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"name\"");
                o0Var.b(SentryLevel.ERROR, "Missing required field \"name\"", illegalStateException);
                throw illegalStateException;
            } else if (str2 != null) {
                o oVar = new o(str, str2);
                oVar.setUnknown(hashMap);
                return oVar;
            } else {
                IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"version\"");
                o0Var.b(SentryLevel.ERROR, "Missing required field \"version\"", illegalStateException2);
                throw illegalStateException2;
            }
        }
    }

    /* compiled from: SentryPackage.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83774a = "name";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83775b = "version";
    }

    public o(@m8.g String str, @m8.g String str2) {
        this.f83771a = (String) io.sentry.util.l.c(str, "name is required.");
        this.f83772b = (String) io.sentry.util.l.c(str2, "version is required.");
    }

    @m8.g
    public String a() {
        return this.f83771a;
    }

    @m8.g
    public String b() {
        return this.f83772b;
    }

    public void c(@m8.g String str) {
        this.f83771a = (String) io.sentry.util.l.c(str, "name is required.");
    }

    public void d(@m8.g String str) {
        this.f83772b = (String) io.sentry.util.l.c(str, "version is required.");
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83773c;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("name").l0(this.f83771a);
        k1Var.A("version").l0(this.f83772b);
        Map<String, Object> map = this.f83773c;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83773c.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83773c = map;
    }
}
