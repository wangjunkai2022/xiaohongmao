package io.sentry;

import io.sentry.m5;
import io.sentry.protocol.l;
import io.sentry.protocol.n;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import m8.a;

/* compiled from: SentryEnvelopeHeader.java */
@a.c
/* loaded from: classes4.dex */
public final class m3 implements m1, o1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.n f83442a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.protocol.l f83443b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final m5 f83444c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Object> f83445d;

    /* compiled from: SentryEnvelopeHeader.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<m3> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public m3 a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            io.sentry.protocol.n nVar = null;
            io.sentry.protocol.l lVar = null;
            m5 m5Var = null;
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case 113722:
                        if (I.equals("sdk")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 110620997:
                        if (I.equals("trace")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 278118624:
                        if (I.equals("event_id")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        lVar = (io.sentry.protocol.l) i1Var.D0(o0Var, new l.a());
                        break;
                    case 1:
                        m5Var = (m5) i1Var.D0(o0Var, new m5.b());
                        break;
                    case 2:
                        nVar = (io.sentry.protocol.n) i1Var.D0(o0Var, new n.a());
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        i1Var.G0(o0Var, hashMap, I);
                        break;
                }
            }
            m3 m3Var = new m3(nVar, lVar, m5Var);
            m3Var.setUnknown(hashMap);
            i1Var.p();
            return m3Var;
        }
    }

    /* compiled from: SentryEnvelopeHeader.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83446a = "event_id";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83447b = "sdk";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83448c = "trace";
    }

    public m3(@m8.h io.sentry.protocol.n nVar, @m8.h io.sentry.protocol.l lVar) {
        this(nVar, lVar, null);
    }

    @m8.h
    public io.sentry.protocol.n a() {
        return this.f83442a;
    }

    @m8.h
    public io.sentry.protocol.l b() {
        return this.f83443b;
    }

    @m8.h
    public m5 c() {
        return this.f83444c;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83445d;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83442a != null) {
            k1Var.A("event_id").q0(o0Var, this.f83442a);
        }
        if (this.f83443b != null) {
            k1Var.A("sdk").q0(o0Var, this.f83443b);
        }
        if (this.f83444c != null) {
            k1Var.A("trace").q0(o0Var, this.f83444c);
        }
        Map<String, Object> map = this.f83445d;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83445d.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83445d = map;
    }

    public m3(@m8.h io.sentry.protocol.n nVar, @m8.h io.sentry.protocol.l lVar, @m8.h m5 m5Var) {
        this.f83442a = nVar;
        this.f83443b = lVar;
        this.f83444c = m5Var;
    }

    public m3(@m8.h io.sentry.protocol.n nVar) {
        this(nVar, null);
    }

    public m3() {
        this(new io.sentry.protocol.n());
    }
}
