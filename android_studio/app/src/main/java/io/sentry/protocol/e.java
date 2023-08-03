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
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: MeasurementValue.java */
@a.c
/* loaded from: classes4.dex */
public final class e implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Number f83665a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final String f83666b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f83667c;

    /* compiled from: MeasurementValue.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<e> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public e a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            Number number = null;
            String str = null;
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                if (I.equals("unit")) {
                    str = i1Var.E0();
                } else if (!I.equals("value")) {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    i1Var.G0(o0Var, concurrentHashMap, I);
                } else {
                    number = (Number) i1Var.C0();
                }
            }
            i1Var.p();
            if (number != null) {
                e eVar = new e(number, str);
                eVar.setUnknown(concurrentHashMap);
                return eVar;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"value\"");
            o0Var.b(SentryLevel.ERROR, "Missing required field \"value\"", illegalStateException);
            throw illegalStateException;
        }
    }

    /* compiled from: MeasurementValue.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83668a = "value";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83669b = "unit";
    }

    public e(@m8.g Number number, @m8.h String str) {
        this.f83665a = number;
        this.f83666b = str;
    }

    @m8.h
    public String a() {
        return this.f83666b;
    }

    @m8.g
    @m8.k
    public Number b() {
        return this.f83665a;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83667c;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("value").h0(this.f83665a);
        if (this.f83666b != null) {
            k1Var.A("unit").l0(this.f83666b);
        }
        Map<String, Object> map = this.f83667c;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83667c.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83667c = map;
    }

    @m8.k
    public e(@m8.g Number number, @m8.h String str, @m8.h Map<String, Object> map) {
        this.f83665a = number;
        this.f83666b = str;
        this.f83667c = map;
    }
}
