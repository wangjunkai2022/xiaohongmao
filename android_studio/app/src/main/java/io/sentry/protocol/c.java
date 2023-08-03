package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.k;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: DebugMeta.java */
/* loaded from: classes4.dex */
public final class c implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private k f83640a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private List<DebugImage> f83641b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f83642c;

    /* compiled from: DebugMeta.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<c> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public c a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            c cVar = new c();
            i1Var.b();
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                if (I.equals(b.f83644b)) {
                    cVar.f83641b = i1Var.z0(o0Var, new DebugImage.a());
                } else if (!I.equals(b.f83643a)) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    i1Var.G0(o0Var, hashMap, I);
                } else {
                    cVar.f83640a = (k) i1Var.D0(o0Var, new k.a());
                }
            }
            i1Var.p();
            cVar.setUnknown(hashMap);
            return cVar;
        }
    }

    /* compiled from: DebugMeta.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83643a = "sdk_info";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83644b = "images";
    }

    @m8.h
    public List<DebugImage> c() {
        return this.f83641b;
    }

    @m8.h
    public k d() {
        return this.f83640a;
    }

    public void e(@m8.h List<DebugImage> list) {
        this.f83641b = list != null ? new ArrayList(list) : null;
    }

    public void f(@m8.h k kVar) {
        this.f83640a = kVar;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83642c;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83640a != null) {
            k1Var.A(b.f83643a).q0(o0Var, this.f83640a);
        }
        if (this.f83641b != null) {
            k1Var.A(b.f83644b).q0(o0Var, this.f83641b);
        }
        Map<String, Object> map = this.f83642c;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83642c.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83642c = map;
    }
}
