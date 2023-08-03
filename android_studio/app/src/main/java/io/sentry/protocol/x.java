package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.protocol.y;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ViewHierarchy.java */
/* loaded from: classes4.dex */
public final class x implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final String f83896a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final List<y> f83897b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f83898c;

    /* compiled from: ViewHierarchy.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<x> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public x a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            String str = null;
            List list = null;
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                if (I.equals("rendering_system")) {
                    str = i1Var.E0();
                } else if (!I.equals(b.f83900b)) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    i1Var.G0(o0Var, hashMap, I);
                } else {
                    list = i1Var.z0(o0Var, new y.a());
                }
            }
            i1Var.p();
            x xVar = new x(str, list);
            xVar.setUnknown(hashMap);
            return xVar;
        }
    }

    /* compiled from: ViewHierarchy.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83899a = "rendering_system";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83900b = "windows";
    }

    public x(@m8.h String str, @m8.h List<y> list) {
        this.f83896a = str;
        this.f83897b = list;
    }

    @m8.h
    public String a() {
        return this.f83896a;
    }

    @m8.h
    public List<y> b() {
        return this.f83897b;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83898c;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83896a != null) {
            k1Var.A("rendering_system").l0(this.f83896a);
        }
        if (this.f83897b != null) {
            k1Var.A(b.f83900b).q0(o0Var, this.f83897b);
        }
        Map<String, Object> map = this.f83898c;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83898c.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83898c = map;
    }
}
