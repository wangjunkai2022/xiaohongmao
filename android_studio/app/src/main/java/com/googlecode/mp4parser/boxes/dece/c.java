package com.googlecode.mp4parser.boxes.dece;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.googlecode.mp4parser.j;
import com.qennnsad.aknkaksd.util.a1;
import java.nio.ByteBuffer;
import java.util.LinkedHashMap;
import java.util.Map;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: ContentInformationBox.java */
/* loaded from: classes2.dex */
public class c extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;
    private static final /* synthetic */ c.b H = null;
    private static final /* synthetic */ c.b I = null;
    private static final /* synthetic */ c.b J = null;
    private static final /* synthetic */ c.b K = null;
    private static final /* synthetic */ c.b L = null;
    private static final /* synthetic */ c.b M = null;

    /* renamed from: y  reason: collision with root package name */
    public static final String f36662y = "cinf";

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36663z = null;

    /* renamed from: r  reason: collision with root package name */
    String f36664r;

    /* renamed from: s  reason: collision with root package name */
    String f36665s;

    /* renamed from: t  reason: collision with root package name */
    String f36666t;

    /* renamed from: u  reason: collision with root package name */
    String f36667u;

    /* renamed from: v  reason: collision with root package name */
    String f36668v;

    /* renamed from: w  reason: collision with root package name */
    Map<String, String> f36669w;

    /* renamed from: x  reason: collision with root package name */
    Map<String, String> f36670x;

    /* compiled from: ContentInformationBox.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f36671a;

        /* renamed from: b  reason: collision with root package name */
        String f36672b;

        public a(String str, String str2) {
            this.f36671a = str;
            this.f36672b = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            String str = this.f36671a;
            if (str == null ? aVar.f36671a == null : str.equals(aVar.f36671a)) {
                String str2 = this.f36672b;
                String str3 = aVar.f36672b;
                return str2 == null ? str3 == null : str2.equals(str3);
            }
            return false;
        }

        public int hashCode() {
            String str = this.f36671a;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f36672b;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }
    }

    static {
        s();
    }

    public c() {
        super(f36662y);
        this.f36669w = new LinkedHashMap();
        this.f36670x = new LinkedHashMap();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("ContentInformationBox.java", c.class);
        f36663z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMimeSubtypeName", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 144);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMimeSubtypeName", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "mimeSubtypeName", "", "void"), 148);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBrandEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.util.Map"), 184);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBrandEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.util.Map", "brandEntries", "", "void"), 188);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getIdEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.util.Map"), 192);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setIdEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.util.Map", "idEntries", "", "void"), 196);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getProfileLevelIdc", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 152);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setProfileLevelIdc", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "profileLevelIdc", "", "void"), 156);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCodecs", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), a1.f54532a);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCodecs", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "codecs", "", "void"), 164);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getProtection", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 168);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setProtection", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "protection", "", "void"), h0.K);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguages", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 176);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguages", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "languages", "", "void"), com.facebook.imagepipeline.common.e.f12205e);
    }

    public String A() {
        j.b().c(e.v(B, this, this));
        return this.f36665s;
    }

    public String B() {
        j.b().c(e.v(F, this, this));
        return this.f36667u;
    }

    public void C(Map<String, String> map) {
        j.b().c(e.w(K, this, this, map));
        this.f36669w = map;
    }

    public void D(String str) {
        j.b().c(e.w(E, this, this, str));
        this.f36666t = str;
    }

    public void E(Map<String, String> map) {
        j.b().c(e.w(M, this, this, map));
        this.f36670x = map;
    }

    public void F(String str) {
        j.b().c(e.w(I, this, this, str));
        this.f36668v = str;
    }

    public void G(String str) {
        j.b().c(e.w(A, this, this, str));
        this.f36664r = str;
    }

    public void H(String str) {
        j.b().c(e.w(C, this, this, str));
        this.f36665s = str;
    }

    public void I(String str) {
        j.b().c(e.w(G, this, this, str));
        this.f36667u = str;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36664r = g.g(byteBuffer);
        this.f36665s = g.g(byteBuffer);
        this.f36666t = g.g(byteBuffer);
        this.f36667u = g.g(byteBuffer);
        this.f36668v = g.g(byteBuffer);
        int p9 = g.p(byteBuffer);
        while (true) {
            int i4 = p9 - 1;
            if (p9 <= 0) {
                break;
            }
            this.f36669w.put(g.g(byteBuffer), g.g(byteBuffer));
            p9 = i4;
        }
        int p10 = g.p(byteBuffer);
        while (true) {
            int i10 = p10 - 1;
            if (p10 <= 0) {
                return;
            }
            this.f36670x.put(g.g(byteBuffer), g.g(byteBuffer));
            p10 = i10;
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.o(byteBuffer, this.f36664r);
        i.o(byteBuffer, this.f36665s);
        i.o(byteBuffer, this.f36666t);
        i.o(byteBuffer, this.f36667u);
        i.o(byteBuffer, this.f36668v);
        i.m(byteBuffer, this.f36669w.size());
        for (Map.Entry<String, String> entry : this.f36669w.entrySet()) {
            i.o(byteBuffer, entry.getKey());
            i.o(byteBuffer, entry.getValue());
        }
        i.m(byteBuffer, this.f36670x.size());
        for (Map.Entry<String, String> entry2 : this.f36670x.entrySet()) {
            i.o(byteBuffer, entry2.getKey());
            i.o(byteBuffer, entry2.getValue());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        long c10 = l.c(this.f36664r) + 1 + 4 + l.c(this.f36665s) + 1 + l.c(this.f36666t) + 1 + l.c(this.f36667u) + 1 + l.c(this.f36668v) + 1 + 1;
        for (Map.Entry<String, String> entry : this.f36669w.entrySet()) {
            c10 = c10 + l.c(entry.getKey()) + 1 + l.c(entry.getValue()) + 1;
        }
        long j4 = c10 + 1;
        for (Map.Entry<String, String> entry2 : this.f36670x.entrySet()) {
            j4 = j4 + l.c(entry2.getKey()) + 1 + l.c(entry2.getValue()) + 1;
        }
        return j4;
    }

    public Map<String, String> v() {
        j.b().c(e.v(J, this, this));
        return this.f36669w;
    }

    public String w() {
        j.b().c(e.v(D, this, this));
        return this.f36666t;
    }

    public Map<String, String> x() {
        j.b().c(e.v(L, this, this));
        return this.f36670x;
    }

    public String y() {
        j.b().c(e.v(H, this, this));
        return this.f36668v;
    }

    public String z() {
        j.b().c(e.v(f36663z, this, this));
        return this.f36664r;
    }
}
