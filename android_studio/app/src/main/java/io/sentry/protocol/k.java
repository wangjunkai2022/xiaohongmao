package io.sentry.protocol;

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

/* compiled from: SdkInfo.java */
/* loaded from: classes4.dex */
public final class k implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83738a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Integer f83739b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Integer f83740c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Integer f83741d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Object> f83742e;

    /* compiled from: SdkInfo.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<k> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public k a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            k kVar = new k();
            i1Var.b();
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case 270207856:
                        if (I.equals(b.f83743a)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 696101379:
                        if (I.equals(b.f83746d)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1111241618:
                        if (I.equals(b.f83744b)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1111483790:
                        if (I.equals(b.f83745c)) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        kVar.f83738a = i1Var.E0();
                        break;
                    case 1:
                        kVar.f83741d = i1Var.y0();
                        break;
                    case 2:
                        kVar.f83739b = i1Var.y0();
                        break;
                    case 3:
                        kVar.f83740c = i1Var.y0();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        i1Var.G0(o0Var, hashMap, I);
                        break;
                }
            }
            i1Var.p();
            kVar.setUnknown(hashMap);
            return kVar;
        }
    }

    /* compiled from: SdkInfo.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83743a = "sdk_name";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83744b = "version_major";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83745c = "version_minor";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83746d = "version_patchlevel";
    }

    @m8.h
    public String e() {
        return this.f83738a;
    }

    @m8.h
    public Integer f() {
        return this.f83739b;
    }

    @m8.h
    public Integer g() {
        return this.f83740c;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83742e;
    }

    @m8.h
    public Integer h() {
        return this.f83741d;
    }

    public void i(@m8.h String str) {
        this.f83738a = str;
    }

    public void j(@m8.h Integer num) {
        this.f83739b = num;
    }

    public void k(@m8.h Integer num) {
        this.f83740c = num;
    }

    public void l(@m8.h Integer num) {
        this.f83741d = num;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83738a != null) {
            k1Var.A(b.f83743a).l0(this.f83738a);
        }
        if (this.f83739b != null) {
            k1Var.A(b.f83744b).h0(this.f83739b);
        }
        if (this.f83740c != null) {
            k1Var.A(b.f83745c).h0(this.f83740c);
        }
        if (this.f83741d != null) {
            k1Var.A(b.f83746d).h0(this.f83741d);
        }
        Map<String, Object> map = this.f83742e;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83742e.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83742e = map;
    }
}
