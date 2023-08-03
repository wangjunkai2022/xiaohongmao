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

/* compiled from: Browser.java */
/* loaded from: classes4.dex */
public final class b implements o1, m1 {

    /* renamed from: d  reason: collision with root package name */
    public static final String f83634d = "browser";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83635a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83636b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f83637c;

    /* compiled from: Browser.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<b> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public b a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            b bVar = new b();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                if (I.equals("name")) {
                    bVar.f83635a = i1Var.E0();
                } else if (!I.equals("version")) {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    i1Var.G0(o0Var, concurrentHashMap, I);
                } else {
                    bVar.f83636b = i1Var.E0();
                }
            }
            bVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return bVar;
        }
    }

    /* compiled from: Browser.java */
    /* renamed from: io.sentry.protocol.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0715b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83638a = "name";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83639b = "version";
    }

    public b() {
    }

    @m8.h
    public String c() {
        return this.f83635a;
    }

    @m8.h
    public String d() {
        return this.f83636b;
    }

    public void e(@m8.h String str) {
        this.f83635a = str;
    }

    public void f(@m8.h String str) {
        this.f83636b = str;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83637c;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83635a != null) {
            k1Var.A("name").l0(this.f83635a);
        }
        if (this.f83636b != null) {
            k1Var.A("version").l0(this.f83636b);
        }
        Map<String, Object> map = this.f83637c;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83637c.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83637c = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@m8.g b bVar) {
        this.f83635a = bVar.f83635a;
        this.f83636b = bVar.f83636b;
        this.f83637c = io.sentry.util.a.e(bVar.f83637c);
    }
}
