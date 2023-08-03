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
import m8.a;

/* compiled from: TransactionInfo.java */
@a.c
/* loaded from: classes4.dex */
public final class v implements m1, o1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final String f83879a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Object> f83880b;

    /* compiled from: TransactionInfo.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<v> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public v a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            String str = null;
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                if (!I.equals(b.f83881a)) {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    i1Var.G0(o0Var, concurrentHashMap, I);
                } else {
                    str = i1Var.E0();
                }
            }
            v vVar = new v(str);
            vVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return vVar;
        }
    }

    /* compiled from: TransactionInfo.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83881a = "source";
    }

    public v(@m8.h String str) {
        this.f83879a = str;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83880b;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83879a != null) {
            k1Var.A(b.f83881a).q0(o0Var, this.f83879a);
        }
        Map<String, Object> map = this.f83880b;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83880b.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83880b = map;
    }
}
