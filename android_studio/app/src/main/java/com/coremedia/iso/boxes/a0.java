package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: ItemLocationBox.java */
/* loaded from: classes.dex */
public class a0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;
    private static final /* synthetic */ c.b H = null;
    private static final /* synthetic */ c.b I = null;

    /* renamed from: w  reason: collision with root package name */
    public static final String f9900w = "iloc";

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f9901x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f9902y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f9903z = null;

    /* renamed from: r  reason: collision with root package name */
    public int f9904r;

    /* renamed from: s  reason: collision with root package name */
    public int f9905s;

    /* renamed from: t  reason: collision with root package name */
    public int f9906t;

    /* renamed from: u  reason: collision with root package name */
    public int f9907u;

    /* renamed from: v  reason: collision with root package name */
    public List<b> f9908v;

    static {
        s();
    }

    public a0() {
        super(f9900w);
        this.f9904r = 8;
        this.f9905s = 8;
        this.f9906t = 8;
        this.f9907u = 0;
        this.f9908v = new LinkedList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ItemLocationBox.java", a0.class);
        f9901x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 119);
        f9902y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "offsetSize", "", "void"), 123);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "createItem", "com.coremedia.iso.boxes.ItemLocationBox", "int:int:int:long:java.util.List", "itemId:constructionMethod:dataReferenceIndex:baseOffset:extents", "", "com.coremedia.iso.boxes.ItemLocationBox$Item"), com.qennnsad.aknkaksd.util.a1.f54532a);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "createExtent", "com.coremedia.iso.boxes.ItemLocationBox", "long:long:long", "extentOffset:extentLength:extentIndex", "", "com.coremedia.iso.boxes.ItemLocationBox$Extent"), 285);
        f9903z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLengthSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 127);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLengthSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "lengthSize", "", "void"), 131);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBaseOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), com.google.android.exoplayer2.extractor.ts.h0.J);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBaseOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "baseOffsetSize", "", "void"), 139);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getIndexSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 143);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setIndexSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "indexSize", "", "void"), 147);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getItems", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "java.util.List"), 151);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setItems", "com.coremedia.iso.boxes.ItemLocationBox", "java.util.List", "items", "", "void"), 155);
    }

    public int A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f9907u;
    }

    public List<b> B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f9908v;
    }

    public int C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9903z, this, this));
        return this.f9905s;
    }

    public int D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9901x, this, this));
        return this.f9904r;
    }

    public void E(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9906t = i4;
    }

    public void F(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9907u = i4;
    }

    public void G(List<b> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, list));
        this.f9908v = list;
    }

    public void H(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9905s = i4;
    }

    public void I(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9902y, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9904r = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        this.f9904r = p9 >>> 4;
        this.f9905s = p9 & 15;
        int p10 = com.coremedia.iso.g.p(byteBuffer);
        this.f9906t = p10 >>> 4;
        if (getVersion() == 1) {
            this.f9907u = p10 & 15;
        }
        int i4 = com.coremedia.iso.g.i(byteBuffer);
        for (int i10 = 0; i10 < i4; i10++) {
            this.f9908v.add(new b(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.m(byteBuffer, (this.f9904r << 4) | this.f9905s);
        if (getVersion() == 1) {
            com.coremedia.iso.i.m(byteBuffer, (this.f9906t << 4) | this.f9907u);
        } else {
            com.coremedia.iso.i.m(byteBuffer, this.f9906t << 4);
        }
        com.coremedia.iso.i.f(byteBuffer, this.f9908v.size());
        for (b bVar : this.f9908v) {
            bVar.a(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        long j4 = 8;
        for (b bVar : this.f9908v) {
            j4 += bVar.b();
        }
        return j4;
    }

    public a v(long j4, long j10, long j11) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.y(I, this, this, new Object[]{org.aspectj.runtime.internal.e.m(j4), org.aspectj.runtime.internal.e.m(j10), org.aspectj.runtime.internal.e.m(j11)}));
        return new a(j4, j10, j11);
    }

    a w(ByteBuffer byteBuffer) {
        return new a(byteBuffer);
    }

    public b x(int i4, int i10, int i11, long j4, List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.y(H, this, this, new Object[]{org.aspectj.runtime.internal.e.k(i4), org.aspectj.runtime.internal.e.k(i10), org.aspectj.runtime.internal.e.k(i11), org.aspectj.runtime.internal.e.m(j4), list}));
        return new b(i4, i10, i11, j4, list);
    }

    b y(ByteBuffer byteBuffer) {
        return new b(byteBuffer);
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f9906t;
    }

    /* compiled from: ItemLocationBox.java */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public long f9909a;

        /* renamed from: b  reason: collision with root package name */
        public long f9910b;

        /* renamed from: c  reason: collision with root package name */
        public long f9911c;

        public a(long j4, long j10, long j11) {
            this.f9909a = j4;
            this.f9910b = j10;
            this.f9911c = j11;
        }

        public void a(ByteBuffer byteBuffer) {
            int i4;
            if (a0.this.getVersion() == 1 && (i4 = a0.this.f9907u) > 0) {
                com.coremedia.iso.j.a(this.f9911c, byteBuffer, i4);
            }
            com.coremedia.iso.j.a(this.f9909a, byteBuffer, a0.this.f9904r);
            com.coremedia.iso.j.a(this.f9910b, byteBuffer, a0.this.f9905s);
        }

        public int b() {
            a0 a0Var = a0.this;
            int i4 = a0Var.f9907u;
            if (i4 <= 0) {
                i4 = 0;
            }
            return i4 + a0Var.f9904r + a0Var.f9905s;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f9911c == aVar.f9911c && this.f9910b == aVar.f9910b && this.f9909a == aVar.f9909a;
        }

        public int hashCode() {
            long j4 = this.f9909a;
            long j10 = this.f9910b;
            long j11 = this.f9911c;
            return (((((int) (j4 ^ (j4 >>> 32))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)));
        }

        public String toString() {
            return "Extent{extentOffset=" + this.f9909a + ", extentLength=" + this.f9910b + ", extentIndex=" + this.f9911c + '}';
        }

        public a(ByteBuffer byteBuffer) {
            int i4;
            if (a0.this.getVersion() == 1 && (i4 = a0.this.f9907u) > 0) {
                this.f9911c = com.coremedia.iso.h.a(byteBuffer, i4);
            }
            this.f9909a = com.coremedia.iso.h.a(byteBuffer, a0.this.f9904r);
            this.f9910b = com.coremedia.iso.h.a(byteBuffer, a0.this.f9905s);
        }
    }

    /* compiled from: ItemLocationBox.java */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public int f9913a;

        /* renamed from: b  reason: collision with root package name */
        public int f9914b;

        /* renamed from: c  reason: collision with root package name */
        public int f9915c;

        /* renamed from: d  reason: collision with root package name */
        public long f9916d;

        /* renamed from: e  reason: collision with root package name */
        public List<a> f9917e;

        public b(ByteBuffer byteBuffer) {
            this.f9917e = new LinkedList();
            this.f9913a = com.coremedia.iso.g.i(byteBuffer);
            if (a0.this.getVersion() == 1) {
                this.f9914b = com.coremedia.iso.g.i(byteBuffer) & 15;
            }
            this.f9915c = com.coremedia.iso.g.i(byteBuffer);
            int i4 = a0.this.f9906t;
            if (i4 > 0) {
                this.f9916d = com.coremedia.iso.h.a(byteBuffer, i4);
            } else {
                this.f9916d = 0L;
            }
            int i10 = com.coremedia.iso.g.i(byteBuffer);
            for (int i11 = 0; i11 < i10; i11++) {
                this.f9917e.add(new a(byteBuffer));
            }
        }

        public void a(ByteBuffer byteBuffer) {
            com.coremedia.iso.i.f(byteBuffer, this.f9913a);
            if (a0.this.getVersion() == 1) {
                com.coremedia.iso.i.f(byteBuffer, this.f9914b);
            }
            com.coremedia.iso.i.f(byteBuffer, this.f9915c);
            int i4 = a0.this.f9906t;
            if (i4 > 0) {
                com.coremedia.iso.j.a(this.f9916d, byteBuffer, i4);
            }
            com.coremedia.iso.i.f(byteBuffer, this.f9917e.size());
            for (a aVar : this.f9917e) {
                aVar.a(byteBuffer);
            }
        }

        public int b() {
            int i4 = (a0.this.getVersion() == 1 ? 4 : 2) + 2 + a0.this.f9906t + 2;
            for (a aVar : this.f9917e) {
                i4 += aVar.b();
            }
            return i4;
        }

        public void c(long j4) {
            this.f9916d = j4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f9916d == bVar.f9916d && this.f9914b == bVar.f9914b && this.f9915c == bVar.f9915c && this.f9913a == bVar.f9913a) {
                List<a> list = this.f9917e;
                List<a> list2 = bVar.f9917e;
                return list == null ? list2 == null : list.equals(list2);
            }
            return false;
        }

        public int hashCode() {
            long j4 = this.f9916d;
            int i4 = ((((((this.f9913a * 31) + this.f9914b) * 31) + this.f9915c) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31;
            List<a> list = this.f9917e;
            return i4 + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "Item{baseOffset=" + this.f9916d + ", itemId=" + this.f9913a + ", constructionMethod=" + this.f9914b + ", dataReferenceIndex=" + this.f9915c + ", extents=" + this.f9917e + '}';
        }

        public b(int i4, int i10, int i11, long j4, List<a> list) {
            new LinkedList();
            this.f9913a = i4;
            this.f9914b = i10;
            this.f9915c = i11;
            this.f9916d = j4;
            this.f9917e = list;
        }
    }
}
