package io.sentry.clientreport;

import io.sentry.SentryLevel;
import io.sentry.c1;
import io.sentry.clientreport.e;
import io.sentry.i1;
import io.sentry.k;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m8.a;

/* compiled from: ClientReport.java */
@a.c
/* loaded from: classes4.dex */
public final class b implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Date f83066a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final List<e> f83067b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f83068c;

    /* compiled from: ClientReport.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<b> {
        private Exception c(String str, o0 o0Var) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            o0Var.b(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public b a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            ArrayList arrayList = new ArrayList();
            i1Var.b();
            Date date = null;
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                if (I.equals(C0710b.f83070b)) {
                    arrayList.addAll(i1Var.z0(o0Var, new e.a()));
                } else if (!I.equals("timestamp")) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    i1Var.G0(o0Var, hashMap, I);
                } else {
                    date = i1Var.u0(o0Var);
                }
            }
            i1Var.p();
            if (date != null) {
                if (!arrayList.isEmpty()) {
                    b bVar = new b(date, arrayList);
                    bVar.setUnknown(hashMap);
                    return bVar;
                }
                throw c(C0710b.f83070b, o0Var);
            }
            throw c("timestamp", o0Var);
        }
    }

    /* compiled from: ClientReport.java */
    /* renamed from: io.sentry.clientreport.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0710b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83069a = "timestamp";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83070b = "discarded_events";
    }

    public b(@m8.g Date date, @m8.g List<e> list) {
        this.f83066a = date;
        this.f83067b = list;
    }

    @m8.g
    public List<e> a() {
        return this.f83067b;
    }

    @m8.g
    public Date b() {
        return this.f83066a;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83068c;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("timestamp").l0(k.g(this.f83066a));
        k1Var.A(C0710b.f83070b).q0(o0Var, this.f83067b);
        Map<String, Object> map = this.f83068c;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83068c.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83068c = map;
    }
}
