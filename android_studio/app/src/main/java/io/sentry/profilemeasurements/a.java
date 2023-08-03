package io.sentry.profilemeasurements;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.profilemeasurements.b;
import io.sentry.util.l;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;
import m8.g;
import m8.h;

/* compiled from: ProfileMeasurement.java */
@a.c
/* loaded from: classes4.dex */
public final class a implements o1, m1 {

    /* renamed from: d  reason: collision with root package name */
    public static final String f83532d = "frozen_frame_renders";

    /* renamed from: e  reason: collision with root package name */
    public static final String f83533e = "slow_frame_renders";

    /* renamed from: f  reason: collision with root package name */
    public static final String f83534f = "screen_frame_rates";

    /* renamed from: g  reason: collision with root package name */
    public static final String f83535g = "cpu_usage";

    /* renamed from: h  reason: collision with root package name */
    public static final String f83536h = "memory_footprint";

    /* renamed from: i  reason: collision with root package name */
    public static final String f83537i = "memory_native_footprint";

    /* renamed from: j  reason: collision with root package name */
    public static final String f83538j = "unknown";

    /* renamed from: k  reason: collision with root package name */
    public static final String f83539k = "hz";

    /* renamed from: l  reason: collision with root package name */
    public static final String f83540l = "nanosecond";

    /* renamed from: m  reason: collision with root package name */
    public static final String f83541m = "byte";

    /* renamed from: n  reason: collision with root package name */
    public static final String f83542n = "percent";

    /* renamed from: o  reason: collision with root package name */
    public static final String f83543o = "unknown";
    @h

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f83544a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private String f83545b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private Collection<io.sentry.profilemeasurements.b> f83546c;

    /* compiled from: ProfileMeasurement.java */
    /* renamed from: io.sentry.profilemeasurements.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0712a implements c1<a> {
        @Override // io.sentry.c1
        @g
        /* renamed from: b */
        public a a(@g i1 i1Var, @g o0 o0Var) throws Exception {
            i1Var.b();
            a aVar = new a();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                if (I.equals("values")) {
                    List z02 = i1Var.z0(o0Var, new b.a());
                    if (z02 != null) {
                        aVar.f83546c = z02;
                    }
                } else if (!I.equals("unit")) {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    i1Var.G0(o0Var, concurrentHashMap, I);
                } else {
                    String E0 = i1Var.E0();
                    if (E0 != null) {
                        aVar.f83545b = E0;
                    }
                }
            }
            aVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return aVar;
        }
    }

    /* compiled from: ProfileMeasurement.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83547a = "unit";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83548b = "values";
    }

    public a() {
        this("unknown", new ArrayList());
    }

    @g
    public String c() {
        return this.f83545b;
    }

    @g
    public Collection<io.sentry.profilemeasurements.b> d() {
        return this.f83546c;
    }

    public void e(@g String str) {
        this.f83545b = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return l.a(this.f83544a, aVar.f83544a) && this.f83545b.equals(aVar.f83545b) && new ArrayList(this.f83546c).equals(new ArrayList(aVar.f83546c));
    }

    public void f(@g Collection<io.sentry.profilemeasurements.b> collection) {
        this.f83546c = collection;
    }

    @Override // io.sentry.o1
    @h
    public Map<String, Object> getUnknown() {
        return this.f83544a;
    }

    public int hashCode() {
        return l.b(this.f83544a, this.f83545b, this.f83546c);
    }

    @Override // io.sentry.m1
    public void serialize(@g k1 k1Var, @g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("unit").q0(o0Var, this.f83545b);
        k1Var.A("values").q0(o0Var, this.f83546c);
        Map<String, Object> map = this.f83544a;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83544a.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@h Map<String, Object> map) {
        this.f83544a = map;
    }

    public a(@g String str, @g Collection<io.sentry.profilemeasurements.b> collection) {
        this.f83545b = str;
        this.f83546c = collection;
    }
}
