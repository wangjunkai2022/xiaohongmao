package com.googlecode.mp4parser.authoring.builder;

import com.coremedia.iso.boxes.b1;
import com.coremedia.iso.boxes.d0;
import com.coremedia.iso.boxes.d1;
import com.coremedia.iso.boxes.e0;
import com.coremedia.iso.boxes.f0;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.fragment.k;
import com.coremedia.iso.boxes.fragment.m;
import com.coremedia.iso.boxes.fragment.n;
import com.coremedia.iso.boxes.g1;
import com.coremedia.iso.boxes.h0;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.i0;
import com.coremedia.iso.boxes.i1;
import com.coremedia.iso.boxes.j;
import com.coremedia.iso.boxes.j0;
import com.coremedia.iso.boxes.l;
import com.coremedia.iso.boxes.m1;
import com.coremedia.iso.boxes.o;
import com.coremedia.iso.boxes.q;
import com.coremedia.iso.boxes.r;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.t0;
import com.coremedia.iso.boxes.u0;
import com.coremedia.iso.boxes.v0;
import com.coremedia.iso.boxes.x;
import com.coremedia.iso.boxes.x0;
import com.coremedia.iso.boxes.y;
import com.coremedia.iso.boxes.y0;
import com.coremedia.iso.boxes.z0;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.f;
import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* compiled from: FragmentedMp4Builder.java */
/* loaded from: classes2.dex */
public class d implements e {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f36010b = Logger.getLogger(d.class.getName());

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f36011c = false;

    /* renamed from: a  reason: collision with root package name */
    protected c f36012a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentedMp4Builder.java */
    /* loaded from: classes2.dex */
    public class a implements Comparator<com.googlecode.mp4parser.authoring.h> {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ Map f36014b;

        /* renamed from: c  reason: collision with root package name */
        private final /* synthetic */ int f36015c;

        a(Map map, int i4) {
            this.f36014b = map;
            this.f36015c = i4;
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.h hVar2) {
            long j4 = ((long[]) this.f36014b.get(hVar))[this.f36015c];
            long j10 = ((long[]) this.f36014b.get(hVar2))[this.f36015c];
            long[] c02 = hVar.c0();
            long[] c03 = hVar2.c0();
            long j11 = 0;
            for (int i4 = 1; i4 < j4; i4++) {
                j11 += c02[i4 - 1];
            }
            long j12 = 0;
            for (int i10 = 1; i10 < j10; i10++) {
                j12 += c03[i10 - 1];
            }
            return (int) (((j11 / hVar.a0().h()) - (j12 / hVar2.a0().h())) * 100.0d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentedMp4Builder.java */
    /* loaded from: classes2.dex */
    public class b implements com.coremedia.iso.boxes.d {

        /* renamed from: a  reason: collision with root package name */
        j f36016a;

        /* renamed from: b  reason: collision with root package name */
        long f36017b = -1;

        /* renamed from: d  reason: collision with root package name */
        private final /* synthetic */ long f36019d;

        /* renamed from: e  reason: collision with root package name */
        private final /* synthetic */ long f36020e;

        /* renamed from: f  reason: collision with root package name */
        private final /* synthetic */ com.googlecode.mp4parser.authoring.h f36021f;

        /* renamed from: g  reason: collision with root package name */
        private final /* synthetic */ int f36022g;

        b(long j4, long j10, com.googlecode.mp4parser.authoring.h hVar, int i4) {
            this.f36019d = j4;
            this.f36020e = j10;
            this.f36021f = hVar;
            this.f36022g = i4;
        }

        @Override // com.coremedia.iso.boxes.d
        public void a(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer allocate = ByteBuffer.allocate(8);
            i.i(allocate, com.googlecode.mp4parser.util.c.a(getSize()));
            allocate.put(com.coremedia.iso.f.J(getType()));
            allocate.rewind();
            writableByteChannel.write(allocate);
            for (com.googlecode.mp4parser.authoring.f fVar : d.this.H(this.f36019d, this.f36020e, this.f36021f, this.f36022g)) {
                fVar.b(writableByteChannel);
            }
        }

        @Override // com.coremedia.iso.boxes.d
        public j getParent() {
            return this.f36016a;
        }

        @Override // com.coremedia.iso.boxes.d
        public long getSize() {
            long j4 = this.f36017b;
            if (j4 != -1) {
                return j4;
            }
            long j10 = 8;
            for (com.googlecode.mp4parser.authoring.f fVar : d.this.H(this.f36019d, this.f36020e, this.f36021f, this.f36022g)) {
                j10 += fVar.getSize();
            }
            this.f36017b = j10;
            return j10;
        }

        @Override // com.coremedia.iso.boxes.d
        public String getType() {
            return com.coremedia.iso.boxes.mdat.a.f10244g;
        }

        @Override // com.coremedia.iso.boxes.d
        public long k() {
            throw new RuntimeException("Doesn't have any meaning for programmatically created boxes");
        }

        @Override // com.coremedia.iso.boxes.d
        public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) throws IOException {
        }

        @Override // com.coremedia.iso.boxes.d
        public void r(j jVar) {
            this.f36016a = jVar;
        }
    }

    private long I(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        return (hVar.getDuration() * dVar.e()) / hVar.a0().h();
    }

    protected void A(long j4, long j10, com.googlecode.mp4parser.authoring.h hVar, int i4, com.coremedia.iso.boxes.fragment.c cVar) {
        k kVar = new k();
        cVar.D(kVar);
        x(j4, j10, hVar, i4, kVar);
        w(j4, hVar, kVar);
        D(j4, j10, hVar, i4, kVar);
        if (hVar instanceof com.googlecode.mp4parser.authoring.tracks.h) {
            com.googlecode.mp4parser.authoring.tracks.h hVar2 = (com.googlecode.mp4parser.authoring.tracks.h) hVar;
            s(j4, j10, hVar2, i4, kVar);
            t(j4, j10, hVar2, i4, kVar);
            r(j4, j10, hVar2, i4, kVar);
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> entry : hVar.V().entrySet()) {
            String b10 = entry.getKey().b();
            List list = (List) hashMap.get(b10);
            if (list == null) {
                list = new ArrayList();
                hashMap.put(b10, list);
            }
            list.add(entry.getKey());
        }
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.e eVar = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.e();
            eVar.z((List) entry2.getValue());
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.f fVar = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.f();
            fVar.z((String) entry2.getKey());
            long j11 = 1;
            f.a aVar = null;
            for (int a10 = com.googlecode.mp4parser.util.c.a(j4 - 1); a10 < com.googlecode.mp4parser.util.c.a(j10 - j11); a10++) {
                int i10 = 0;
                int i11 = 0;
                while (i10 < ((List) entry2.getValue()).size()) {
                    Iterator it2 = it;
                    i11 = Arrays.binarySearch(hVar.V().get((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) ((List) entry2.getValue()).get(i10)), (long) a10) >= 0 ? i10 + 1 : i11;
                    i10++;
                    it = it2;
                    j11 = 1;
                }
                if (aVar != null && aVar.a() == i11) {
                    aVar.d(aVar.b() + j11);
                } else {
                    f.a aVar2 = new f.a(j11, i11);
                    fVar.v().add(aVar2);
                    aVar = aVar2;
                }
            }
            kVar.D(eVar);
            kVar.D(fVar);
        }
    }

    protected com.coremedia.iso.boxes.d B(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        Logger logger = f36010b;
        logger.fine("Creating Track " + hVar);
        f1 f1Var = new f1();
        f1Var.D(z(dVar, hVar));
        com.coremedia.iso.boxes.d c10 = c(hVar, dVar);
        if (c10 != null) {
            f1Var.D(c10);
        }
        f1Var.D(h(hVar, dVar));
        return f1Var;
    }

    protected com.coremedia.iso.boxes.d C(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        com.coremedia.iso.boxes.fragment.i iVar = new com.coremedia.iso.boxes.fragment.i();
        iVar.F(hVar.a0().i());
        iVar.B(1L);
        iVar.C(0L);
        iVar.E(0L);
        com.coremedia.iso.boxes.fragment.g gVar = new com.coremedia.iso.boxes.fragment.g();
        if ("soun".equals(hVar.getHandler()) || "subt".equals(hVar.getHandler())) {
            gVar.k(2);
            gVar.m(2);
        }
        iVar.D(gVar);
        return iVar;
    }

    protected void D(long j4, long j10, com.googlecode.mp4parser.authoring.h hVar, int i4, k kVar) {
        long[] jArr;
        long j11;
        n nVar = new n();
        nVar.setVersion(1);
        long[] G = G(j4, j10, hVar, i4);
        nVar.L(true);
        nVar.N(true);
        ArrayList arrayList = new ArrayList(com.googlecode.mp4parser.util.c.a(j10 - j4));
        List<i.a> o9 = hVar.o();
        i.a[] aVarArr = (o9 == null || o9.size() <= 0) ? null : (i.a[]) o9.toArray(new i.a[o9.size()]);
        long a10 = aVarArr != null ? aVarArr[0].a() : -1;
        nVar.K(a10 > 0);
        long j12 = 1;
        int i10 = 0;
        while (j12 < j4) {
            long[] jArr2 = G;
            if (aVarArr != null) {
                a10--;
                j11 = 0;
                if (a10 == 0) {
                    if (aVarArr.length - i10 > 1) {
                        i10++;
                        a10 = aVarArr[i10].a();
                    }
                    j12++;
                    G = jArr2;
                }
            } else {
                j11 = 0;
            }
            j12++;
            G = jArr2;
        }
        boolean z9 = ((hVar.m0() == null || hVar.m0().isEmpty()) && (hVar.z() == null || hVar.z().length == 0)) ? false : true;
        nVar.M(z9);
        int i11 = 0;
        while (i11 < G.length) {
            n.a aVar = new n.a();
            aVar.p(G[i11]);
            if (z9) {
                com.coremedia.iso.boxes.fragment.g gVar = new com.coremedia.iso.boxes.fragment.g();
                if (hVar.m0() != null && !hVar.m0().isEmpty()) {
                    r0.a aVar2 = hVar.m0().get(i11);
                    gVar.k(aVar2.c());
                    gVar.m(aVar2.e());
                    gVar.l(aVar2.d());
                }
                if (hVar.z() == null || hVar.z().length <= 0) {
                    jArr = G;
                } else {
                    jArr = G;
                    if (Arrays.binarySearch(hVar.z(), j4 + i11) >= 0) {
                        gVar.n(false);
                        gVar.k(2);
                    } else {
                        gVar.n(true);
                        gVar.k(1);
                    }
                }
                aVar.o(gVar);
            } else {
                jArr = G;
            }
            aVar.n(hVar.c0()[com.googlecode.mp4parser.util.c.a((j4 + i11) - 1)]);
            if (aVarArr != null) {
                aVar.m(aVarArr[i10].b());
                a10--;
                if (a10 == 0 && aVarArr.length - i10 > 1) {
                    i10++;
                    a10 = aVarArr[i10].a();
                }
            }
            arrayList.add(aVar);
            i11++;
            G = jArr;
        }
        nVar.I(arrayList);
        kVar.D(nVar);
    }

    public Date E() {
        return new Date();
    }

    public c F() {
        return this.f36012a;
    }

    protected long[] G(long j4, long j10, com.googlecode.mp4parser.authoring.h hVar, int i4) {
        List<com.googlecode.mp4parser.authoring.f> H = H(j4, j10, hVar, i4);
        int size = H.size();
        long[] jArr = new long[size];
        for (int i10 = 0; i10 < size; i10++) {
            jArr[i10] = H.get(i10).getSize();
        }
        return jArr;
    }

    protected List<com.googlecode.mp4parser.authoring.f> H(long j4, long j10, com.googlecode.mp4parser.authoring.h hVar, int i4) {
        return hVar.F().subList(com.googlecode.mp4parser.util.c.a(j4) - 1, com.googlecode.mp4parser.util.c.a(j10) - 1);
    }

    public void J(c cVar) {
        this.f36012a = cVar;
    }

    protected List<com.googlecode.mp4parser.authoring.h> K(List<com.googlecode.mp4parser.authoring.h> list, int i4, Map<com.googlecode.mp4parser.authoring.h, long[]> map) {
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList, new a(map, i4));
        return linkedList;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.e
    public j a(com.googlecode.mp4parser.authoring.d dVar) {
        Logger logger = f36010b;
        logger.fine("Creating movie " + dVar);
        if (this.f36012a == null) {
            com.googlecode.mp4parser.authoring.h hVar = null;
            Iterator<com.googlecode.mp4parser.authoring.h> it = dVar.g().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.googlecode.mp4parser.authoring.h next = it.next();
                if (next.getHandler().equals("vide")) {
                    hVar = next;
                    break;
                }
            }
            this.f36012a = new g(dVar, hVar, -1);
        }
        com.googlecode.mp4parser.d dVar2 = new com.googlecode.mp4parser.d();
        dVar2.D(e(dVar));
        dVar2.D(o(dVar));
        for (com.coremedia.iso.boxes.d dVar3 : n(dVar)) {
            dVar2.D(dVar3);
        }
        dVar2.D(k(dVar, dVar2));
        return dVar2;
    }

    protected com.coremedia.iso.boxes.n b(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        com.coremedia.iso.boxes.n nVar = new com.coremedia.iso.boxes.n();
        o oVar = new o();
        nVar.D(oVar);
        l lVar = new l();
        lVar.setFlags(1);
        oVar.D(lVar);
        return nVar;
    }

    protected com.coremedia.iso.boxes.d c(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        if (hVar.T() == null || hVar.T().size() <= 0) {
            return null;
        }
        r rVar = new r();
        rVar.setVersion(1);
        ArrayList arrayList = new ArrayList();
        for (com.googlecode.mp4parser.authoring.c cVar : hVar.T()) {
            arrayList.add(new r.a(rVar, Math.round(cVar.c() * dVar.e()), (cVar.b() * hVar.a0().h()) / cVar.d(), cVar.a()));
        }
        rVar.w(arrayList);
        q qVar = new q();
        qVar.D(rVar);
        return qVar;
    }

    protected int d(List<com.coremedia.iso.boxes.d> list, com.googlecode.mp4parser.authoring.h hVar, long[] jArr, int i4, int i10) {
        if (i4 < jArr.length) {
            long j4 = jArr[i4];
            int i11 = i4 + 1;
            long size = i11 < jArr.length ? jArr[i11] : hVar.F().size() + 1;
            if (j4 != size) {
                long j10 = size;
                list.add(m(j4, j10, hVar, i10));
                int i12 = i10 + 1;
                list.add(f(j4, j10, hVar, i10));
                return i12;
            }
            return i10;
        }
        return i10;
    }

    public com.coremedia.iso.boxes.d e(com.googlecode.mp4parser.authoring.d dVar) {
        LinkedList linkedList = new LinkedList();
        linkedList.add("isom");
        linkedList.add("iso2");
        linkedList.add(com.coremedia.iso.boxes.sampleentry.h.f10369y);
        return new s("isom", 0L, linkedList);
    }

    protected com.coremedia.iso.boxes.d f(long j4, long j10, com.googlecode.mp4parser.authoring.h hVar, int i4) {
        return new b(j4, j10, hVar, i4);
    }

    protected com.coremedia.iso.boxes.d g(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        e0 e0Var = new e0();
        e0Var.A(hVar.a0().a());
        e0Var.D(E());
        e0Var.B(0L);
        e0Var.E(hVar.a0().h());
        e0Var.C(hVar.a0().d());
        return e0Var;
    }

    protected com.coremedia.iso.boxes.d h(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        d0 d0Var = new d0();
        d0Var.D(g(dVar, hVar));
        d0Var.D(i(hVar, dVar));
        d0Var.D(l(hVar, dVar));
        return d0Var;
    }

    protected com.coremedia.iso.boxes.d i(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        x xVar = new x();
        xVar.y(hVar.getHandler());
        return xVar;
    }

    protected void j(long j4, long j10, com.googlecode.mp4parser.authoring.h hVar, int i4, com.coremedia.iso.boxes.fragment.c cVar) {
        com.coremedia.iso.boxes.fragment.d dVar = new com.coremedia.iso.boxes.fragment.d();
        dVar.w(i4);
        cVar.D(dVar);
    }

    protected com.coremedia.iso.boxes.d k(com.googlecode.mp4parser.authoring.d dVar, j jVar) {
        com.coremedia.iso.boxes.fragment.e eVar = new com.coremedia.iso.boxes.fragment.e();
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            eVar.D(y(hVar, jVar));
        }
        com.coremedia.iso.boxes.fragment.f fVar = new com.coremedia.iso.boxes.fragment.f();
        eVar.D(fVar);
        fVar.w(eVar.getSize());
        return eVar;
    }

    protected com.coremedia.iso.boxes.d l(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        f0 f0Var = new f0();
        if (hVar.getHandler().equals("vide")) {
            f0Var.D(new m1());
        } else if (hVar.getHandler().equals("soun")) {
            f0Var.D(new y0());
        } else if (hVar.getHandler().equals("text")) {
            f0Var.D(new j0());
        } else if (hVar.getHandler().equals("subt")) {
            f0Var.D(new b1());
        } else if (hVar.getHandler().equals(i1.f10181o)) {
            f0Var.D(new y());
        } else if (hVar.getHandler().equals("sbtl")) {
            f0Var.D(new j0());
        }
        f0Var.D(b(dVar, hVar));
        f0Var.D(u(dVar, hVar));
        return f0Var;
    }

    protected com.coremedia.iso.boxes.d m(long j4, long j10, com.googlecode.mp4parser.authoring.h hVar, int i4) {
        com.coremedia.iso.boxes.fragment.c cVar = new com.coremedia.iso.boxes.fragment.c();
        j(j4, j10, hVar, i4, cVar);
        A(j4, j10, hVar, i4, cVar);
        n nVar = cVar.X().get(0);
        nVar.G(1);
        nVar.G((int) (cVar.getSize() + 8));
        return cVar;
    }

    protected List<com.coremedia.iso.boxes.d> n(com.googlecode.mp4parser.authoring.d dVar) {
        List<com.coremedia.iso.boxes.d> linkedList = new LinkedList<>();
        HashMap hashMap = new HashMap();
        int i4 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            long[] a10 = this.f36012a.a(hVar);
            hashMap.put(hVar, a10);
            i4 = Math.max(i4, a10.length);
        }
        int i10 = 1;
        int i11 = 0;
        while (i11 < i4) {
            int i12 = i10;
            for (com.googlecode.mp4parser.authoring.h hVar2 : K(dVar.g(), i11, hashMap)) {
                i12 = d(linkedList, hVar2, (long[]) hashMap.get(hVar2), i11, i12);
            }
            i11++;
            i10 = i12;
        }
        return linkedList;
    }

    protected com.coremedia.iso.boxes.d o(com.googlecode.mp4parser.authoring.d dVar) {
        h0 h0Var = new h0();
        h0Var.D(q(dVar));
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            h0Var.D(B(hVar, dVar));
        }
        h0Var.D(p(dVar));
        return h0Var;
    }

    protected com.coremedia.iso.boxes.d p(com.googlecode.mp4parser.authoring.d dVar) {
        com.coremedia.iso.boxes.fragment.a aVar = new com.coremedia.iso.boxes.fragment.a();
        com.coremedia.iso.boxes.fragment.b bVar = new com.coremedia.iso.boxes.fragment.b();
        bVar.setVersion(1);
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            long I = I(dVar, hVar);
            if (bVar.v() < I) {
                bVar.w(I);
            }
        }
        aVar.D(bVar);
        for (com.googlecode.mp4parser.authoring.h hVar2 : dVar.g()) {
            aVar.D(C(dVar, hVar2));
        }
        return aVar;
    }

    protected com.coremedia.iso.boxes.d q(com.googlecode.mp4parser.authoring.d dVar) {
        i0 i0Var = new i0();
        i0Var.setVersion(1);
        i0Var.J(E());
        i0Var.N(E());
        long j4 = 0;
        i0Var.L(0L);
        i0Var.V(dVar.e());
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            if (j4 < hVar.a0().i()) {
                j4 = hVar.a0().i();
            }
        }
        i0Var.O(j4 + 1);
        return i0Var;
    }

    protected void r(long j4, long j10, com.googlecode.mp4parser.authoring.tracks.h hVar, int i4, k kVar) {
        com.coremedia.iso.boxes.d next;
        x0 x0Var = (x0) m.e(hVar.u(), "enc.[0]/sinf[0]/schm[0]");
        com.mp4parser.iso14496.part12.b bVar = new com.mp4parser.iso14496.part12.b();
        kVar.D(bVar);
        bVar.y(com.google.android.exoplayer2.i.E1);
        bVar.setFlags(1);
        long j11 = 8;
        Iterator<com.coremedia.iso.boxes.d> it = kVar.y().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.coremedia.iso.boxes.d next2 = it.next();
            if (next2 instanceof com.googlecode.mp4parser.boxes.dece.d) {
                j11 += ((com.googlecode.mp4parser.boxes.dece.d) next2).x();
                break;
            }
            j11 += next2.getSize();
        }
        long j12 = j11 + 16;
        Iterator<com.coremedia.iso.boxes.d> it2 = ((com.coremedia.iso.boxes.fragment.c) kVar.getParent()).y().iterator();
        while (it2.hasNext() && (next = it2.next()) != kVar) {
            j12 += next.getSize();
        }
        bVar.A(new long[]{j12});
    }

    protected void s(long j4, long j10, com.googlecode.mp4parser.authoring.tracks.h hVar, int i4, k kVar) {
        s0 u9 = hVar.u();
        x0 x0Var = (x0) m.e(u9, "enc.[0]/sinf[0]/schm[0]");
        com.mp4parser.iso23001.part7.c cVar = (com.mp4parser.iso23001.part7.c) m.e(u9, "enc.[0]/sinf[0]/schi[0]/tenc[0]");
        com.mp4parser.iso14496.part12.c cVar2 = new com.mp4parser.iso14496.part12.c();
        cVar2.B(com.google.android.exoplayer2.i.E1);
        cVar2.setFlags(1);
        if (hVar.Q()) {
            int a10 = com.googlecode.mp4parser.util.c.a(j10 - j4);
            short[] sArr = new short[a10];
            List<com.mp4parser.iso23001.part7.a> subList = hVar.f0().subList(com.googlecode.mp4parser.util.c.a(j4 - 1), com.googlecode.mp4parser.util.c.a(j10 - 1));
            for (int i10 = 0; i10 < a10; i10++) {
                sArr[i10] = (short) subList.get(i10).b();
            }
            cVar2.F(sArr);
        } else {
            cVar2.D(cVar.w());
            cVar2.E(com.googlecode.mp4parser.util.c.a(j10 - j4));
        }
        kVar.D(cVar2);
    }

    protected void t(long j4, long j10, com.googlecode.mp4parser.authoring.tracks.h hVar, int i4, k kVar) {
        com.googlecode.mp4parser.boxes.dece.d dVar = new com.googlecode.mp4parser.boxes.dece.d();
        dVar.C(hVar.Q());
        dVar.B(hVar.f0().subList(com.googlecode.mp4parser.util.c.a(j4 - 1), com.googlecode.mp4parser.util.c.a(j10 - 1)));
        kVar.D(dVar);
    }

    protected com.coremedia.iso.boxes.d u(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        u0 u0Var = new u0();
        v(hVar, u0Var);
        u0Var.D(new d1());
        u0Var.D(new v0());
        u0Var.D(new t0());
        u0Var.D(new z0());
        return u0Var;
    }

    protected void v(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        u0Var.D(hVar.u());
    }

    protected void w(long j4, com.googlecode.mp4parser.authoring.h hVar, k kVar) {
        com.coremedia.iso.boxes.fragment.j jVar = new com.coremedia.iso.boxes.fragment.j();
        jVar.setVersion(1);
        long[] c02 = hVar.c0();
        long j10 = 0;
        for (int i4 = 1; i4 < j4; i4++) {
            j10 += c02[i4 - 1];
        }
        jVar.w(j10);
        kVar.D(jVar);
    }

    protected void x(long j4, long j10, com.googlecode.mp4parser.authoring.h hVar, int i4, k kVar) {
        com.coremedia.iso.boxes.fragment.l lVar = new com.coremedia.iso.boxes.fragment.l();
        lVar.L(new com.coremedia.iso.boxes.fragment.g());
        lVar.I(-1L);
        lVar.P(hVar.a0().i());
        lVar.J(true);
        kVar.D(lVar);
    }

    protected com.coremedia.iso.boxes.d y(com.googlecode.mp4parser.authoring.h hVar, j jVar) {
        com.coremedia.iso.boxes.fragment.g x9;
        com.coremedia.iso.boxes.fragment.m mVar;
        LinkedList linkedList;
        com.coremedia.iso.boxes.fragment.i iVar;
        Iterator<com.coremedia.iso.boxes.d> it;
        int i4;
        int i10;
        int i11;
        List list;
        List list2;
        com.coremedia.iso.boxes.d dVar;
        LinkedList linkedList2;
        com.coremedia.iso.boxes.fragment.m mVar2 = new com.coremedia.iso.boxes.fragment.m();
        mVar2.setVersion(1);
        LinkedList linkedList3 = new LinkedList();
        r4 = null;
        for (com.coremedia.iso.boxes.fragment.i iVar2 : m.h(jVar, "moov/mvex/trex")) {
            com.coremedia.iso.boxes.fragment.i iVar3 = iVar2;
            mVar2 = mVar2;
            linkedList3 = linkedList3;
            if (iVar2.A() != hVar.a0().i()) {
                iVar2 = iVar3;
            }
        }
        Iterator<com.coremedia.iso.boxes.d> it2 = jVar.y().iterator();
        long j4 = 0;
        long j10 = 0;
        while (it2.hasNext()) {
            com.coremedia.iso.boxes.d next = it2.next();
            if (next instanceof com.coremedia.iso.boxes.fragment.c) {
                List h4 = ((com.coremedia.iso.boxes.fragment.c) next).h(k.class);
                int i12 = 0;
                int i13 = 0;
                while (i13 < h4.size()) {
                    k kVar = (k) h4.get(i13);
                    if (kVar.J().A() == hVar.a0().i()) {
                        List h10 = kVar.h(n.class);
                        int i14 = 0;
                        while (i14 < h10.size()) {
                            LinkedList linkedList4 = new LinkedList();
                            n nVar = (n) h10.get(i14);
                            long j11 = j10;
                            int i15 = 0;
                            while (i15 < nVar.w().size()) {
                                n.a aVar = nVar.w().get(i15);
                                if (i15 == 0 && nVar.B()) {
                                    x9 = nVar.x();
                                } else if (nVar.E()) {
                                    x9 = aVar.k();
                                } else {
                                    x9 = iVar2.x();
                                }
                                if (x9 == null && hVar.getHandler().equals("vide")) {
                                    throw new RuntimeException("Cannot find SampleFlags for video track but it's required to build tfra");
                                }
                                if (x9 == null || x9.d() == 2) {
                                    mVar = mVar2;
                                    linkedList = linkedList3;
                                    iVar = iVar2;
                                    it = it2;
                                    i4 = i15;
                                    i10 = i14;
                                    i11 = i13;
                                    list = h10;
                                    list2 = h4;
                                    dVar = next;
                                    linkedList2 = linkedList4;
                                    linkedList2.add(new m.a(j11, j4, i13 + 1, i14 + 1, i15 + 1));
                                } else {
                                    mVar = mVar2;
                                    linkedList = linkedList3;
                                    iVar = iVar2;
                                    it = it2;
                                    i4 = i15;
                                    i10 = i14;
                                    linkedList2 = linkedList4;
                                    i11 = i13;
                                    list = h10;
                                    list2 = h4;
                                    dVar = next;
                                }
                                j11 += aVar.j();
                                i15 = i4 + 1;
                                h4 = list2;
                                linkedList4 = linkedList2;
                                mVar2 = mVar;
                                linkedList3 = linkedList;
                                iVar2 = iVar;
                                it2 = it;
                                next = dVar;
                                i14 = i10;
                                i13 = i11;
                                h10 = list;
                                i12 = 0;
                            }
                            if (linkedList4.size() == nVar.w().size() && nVar.w().size() > 0) {
                                linkedList3.add((m.a) linkedList4.get(i12));
                            } else {
                                linkedList3.addAll(linkedList4);
                            }
                            i14++;
                            j10 = j11;
                        }
                        continue;
                    }
                    i13++;
                    h4 = h4;
                    mVar2 = mVar2;
                    linkedList3 = linkedList3;
                    iVar2 = iVar2;
                    it2 = it2;
                    next = next;
                    i12 = 0;
                }
                continue;
            }
            j4 += next.getSize();
            mVar2 = mVar2;
            linkedList3 = linkedList3;
            iVar2 = iVar2;
            it2 = it2;
        }
        mVar2.C(linkedList3);
        mVar2.G(hVar.a0().i());
        return mVar2;
    }

    protected com.coremedia.iso.boxes.d z(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        g1 g1Var = new g1();
        g1Var.setVersion(1);
        g1Var.setFlags(7);
        g1Var.J(hVar.a0().b());
        g1Var.K(hVar.a0().a());
        g1Var.L(0L);
        g1Var.N(hVar.a0().c());
        g1Var.W(hVar.a0().k());
        g1Var.R(hVar.a0().e());
        g1Var.T(E());
        g1Var.U(hVar.a0().i());
        g1Var.V(hVar.a0().j());
        return g1Var;
    }
}
