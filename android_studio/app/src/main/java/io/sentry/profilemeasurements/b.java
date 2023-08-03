package io.sentry.profilemeasurements;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.util.l;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;
import m8.g;
import m8.h;

/* compiled from: ProfileMeasurementValue.java */
@a.c
/* loaded from: classes4.dex */
public final class b implements o1, m1 {
    @h

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f83549a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private String f83550b;

    /* renamed from: c  reason: collision with root package name */
    private double f83551c;

    /* compiled from: ProfileMeasurementValue.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<b> {
        @Override // io.sentry.c1
        @g
        /* renamed from: b */
        public b a(@g i1 i1Var, @g o0 o0Var) throws Exception {
            i1Var.b();
            b bVar = new b();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                if (I.equals(C0713b.f83553b)) {
                    String E0 = i1Var.E0();
                    if (E0 != null) {
                        bVar.f83550b = E0;
                    }
                } else if (!I.equals("value")) {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    i1Var.G0(o0Var, concurrentHashMap, I);
                } else {
                    Double v02 = i1Var.v0();
                    if (v02 != null) {
                        bVar.f83551c = v02.doubleValue();
                    }
                }
            }
            bVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return bVar;
        }
    }

    /* compiled from: ProfileMeasurementValue.java */
    /* renamed from: io.sentry.profilemeasurements.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0713b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83552a = "value";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83553b = "elapsed_since_start_ns";
    }

    public b() {
        this(0L, 0);
    }

    public double c() {
        return this.f83551c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return l.a(this.f83549a, bVar.f83549a) && this.f83550b.equals(bVar.f83550b) && this.f83551c == bVar.f83551c;
    }

    @Override // io.sentry.o1
    @h
    public Map<String, Object> getUnknown() {
        return this.f83549a;
    }

    public int hashCode() {
        return l.b(this.f83549a, this.f83550b, Double.valueOf(this.f83551c));
    }

    @Override // io.sentry.m1
    public void serialize(@g k1 k1Var, @g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("value").q0(o0Var, Double.valueOf(this.f83551c));
        k1Var.A(C0713b.f83553b).q0(o0Var, this.f83550b);
        Map<String, Object> map = this.f83549a;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83549a.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@h Map<String, Object> map) {
        this.f83549a = map;
    }

    public b(@g Long l10, @g Number number) {
        this.f83550b = l10.toString();
        this.f83551c = number.doubleValue();
    }
}
