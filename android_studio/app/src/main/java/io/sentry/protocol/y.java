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
import java.util.List;
import java.util.Map;

/* compiled from: ViewHierarchyNode.java */
/* loaded from: classes4.dex */
public final class y implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83901a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83902b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83903c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f83904d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Double f83905e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Double f83906f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Double f83907g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Double f83908h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private String f83909i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private Double f83910j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private List<y> f83911k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private Map<String, Object> f83912l;

    /* compiled from: ViewHierarchyNode.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<y> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public y a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            y yVar = new y();
            i1Var.b();
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1784982718:
                        if (I.equals("rendering_system")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1618432855:
                        if (I.equals(b.f83915c)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1221029593:
                        if (I.equals("height")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 120:
                        if (I.equals(b.f83919g)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 121:
                        if (I.equals(b.f83920h)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 114586:
                        if (I.equals(b.f83916d)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 3575610:
                        if (I.equals("type")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 92909918:
                        if (I.equals("alpha")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 113126854:
                        if (I.equals("width")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 1659526655:
                        if (I.equals(b.f83923k)) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 1941332754:
                        if (I.equals("visibility")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        yVar.f83901a = i1Var.E0();
                        break;
                    case 1:
                        yVar.f83903c = i1Var.E0();
                        break;
                    case 2:
                        yVar.f83906f = i1Var.v0();
                        break;
                    case 3:
                        yVar.f83907g = i1Var.v0();
                        break;
                    case 4:
                        yVar.f83908h = i1Var.v0();
                        break;
                    case 5:
                        yVar.f83904d = i1Var.E0();
                        break;
                    case 6:
                        yVar.f83902b = i1Var.E0();
                        break;
                    case 7:
                        yVar.f83910j = i1Var.v0();
                        break;
                    case '\b':
                        yVar.f83905e = i1Var.v0();
                        break;
                    case '\t':
                        yVar.f83911k = i1Var.z0(o0Var, this);
                        break;
                    case '\n':
                        yVar.f83909i = i1Var.E0();
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
            yVar.setUnknown(hashMap);
            return yVar;
        }
    }

    /* compiled from: ViewHierarchyNode.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83913a = "rendering_system";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83914b = "type";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83915c = "identifier";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83916d = "tag";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83917e = "width";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83918f = "height";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83919g = "x";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83920h = "y";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83921i = "visibility";

        /* renamed from: j  reason: collision with root package name */
        public static final String f83922j = "alpha";

        /* renamed from: k  reason: collision with root package name */
        public static final String f83923k = "children";
    }

    public void A(String str) {
        this.f83901a = str;
    }

    public void B(@m8.h String str) {
        this.f83904d = str;
    }

    public void C(String str) {
        this.f83902b = str;
    }

    public void D(@m8.h String str) {
        this.f83909i = str;
    }

    public void E(@m8.h Double d4) {
        this.f83905e = d4;
    }

    public void F(@m8.h Double d4) {
        this.f83907g = d4;
    }

    public void G(@m8.h Double d4) {
        this.f83908h = d4;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83912l;
    }

    @m8.h
    public Double l() {
        return this.f83910j;
    }

    @m8.h
    public List<y> m() {
        return this.f83911k;
    }

    @m8.h
    public Double n() {
        return this.f83906f;
    }

    @m8.h
    public String o() {
        return this.f83903c;
    }

    @m8.h
    public String p() {
        return this.f83901a;
    }

    @m8.h
    public String q() {
        return this.f83904d;
    }

    @m8.h
    public String r() {
        return this.f83902b;
    }

    @m8.h
    public String s() {
        return this.f83909i;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83901a != null) {
            k1Var.A("rendering_system").l0(this.f83901a);
        }
        if (this.f83902b != null) {
            k1Var.A("type").l0(this.f83902b);
        }
        if (this.f83903c != null) {
            k1Var.A(b.f83915c).l0(this.f83903c);
        }
        if (this.f83904d != null) {
            k1Var.A(b.f83916d).l0(this.f83904d);
        }
        if (this.f83905e != null) {
            k1Var.A("width").h0(this.f83905e);
        }
        if (this.f83906f != null) {
            k1Var.A("height").h0(this.f83906f);
        }
        if (this.f83907g != null) {
            k1Var.A(b.f83919g).h0(this.f83907g);
        }
        if (this.f83908h != null) {
            k1Var.A(b.f83920h).h0(this.f83908h);
        }
        if (this.f83909i != null) {
            k1Var.A("visibility").l0(this.f83909i);
        }
        if (this.f83910j != null) {
            k1Var.A("alpha").h0(this.f83910j);
        }
        List<y> list = this.f83911k;
        if (list != null && !list.isEmpty()) {
            k1Var.A(b.f83923k).q0(o0Var, this.f83911k);
        }
        Map<String, Object> map = this.f83912l;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.f83912l.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83912l = map;
    }

    @m8.h
    public Double t() {
        return this.f83905e;
    }

    @m8.h
    public Double u() {
        return this.f83907g;
    }

    @m8.h
    public Double v() {
        return this.f83908h;
    }

    public void w(@m8.h Double d4) {
        this.f83910j = d4;
    }

    public void x(@m8.h List<y> list) {
        this.f83911k = list;
    }

    public void y(@m8.h Double d4) {
        this.f83906f = d4;
    }

    public void z(@m8.h String str) {
        this.f83903c = str;
    }
}
