package com.googlecode.mp4parser.authoring.builder;

import com.coremedia.iso.boxes.b1;
import com.coremedia.iso.boxes.c1;
import com.coremedia.iso.boxes.d0;
import com.coremedia.iso.boxes.d1;
import com.coremedia.iso.boxes.e0;
import com.coremedia.iso.boxes.f0;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.g1;
import com.coremedia.iso.boxes.h0;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.i0;
import com.coremedia.iso.boxes.i1;
import com.coremedia.iso.boxes.j;
import com.coremedia.iso.boxes.j0;
import com.coremedia.iso.boxes.l;
import com.coremedia.iso.boxes.m1;
import com.coremedia.iso.boxes.n;
import com.coremedia.iso.boxes.o;
import com.coremedia.iso.boxes.q;
import com.coremedia.iso.boxes.r;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s;
import com.coremedia.iso.boxes.t0;
import com.coremedia.iso.boxes.u0;
import com.coremedia.iso.boxes.v0;
import com.coremedia.iso.boxes.x;
import com.coremedia.iso.boxes.y;
import com.coremedia.iso.boxes.y0;
import com.coremedia.iso.boxes.z0;
import com.google.android.exoplayer2.i;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.f;
import com.googlecode.mp4parser.util.m;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: DefaultMp4Builder.java */
/* loaded from: classes2.dex */
public class b implements e {

    /* renamed from: f  reason: collision with root package name */
    private static Logger f35998f = Logger.getLogger(b.class.getName());

    /* renamed from: g  reason: collision with root package name */
    static final /* synthetic */ boolean f35999g = false;

    /* renamed from: a  reason: collision with root package name */
    Set<z0> f36000a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    Set<com.mp4parser.iso14496.part12.b> f36001b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    HashMap<com.googlecode.mp4parser.authoring.h, List<com.googlecode.mp4parser.authoring.f>> f36002c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    HashMap<com.googlecode.mp4parser.authoring.h, long[]> f36003d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private c f36004e;

    public static long r(long j4, long j10) {
        return j10 == 0 ? j4 : r(j10, j4 % j10);
    }

    private static long w(int[] iArr) {
        long j4 = 0;
        for (int i4 : iArr) {
            j4 += i4;
        }
        return j4;
    }

    private static long x(long[] jArr) {
        long j4 = 0;
        for (long j10 : jArr) {
            j4 += j10;
        }
        return j4;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.e
    public j a(com.googlecode.mp4parser.authoring.d dVar) {
        com.coremedia.iso.boxes.d next;
        if (this.f36004e == null) {
            this.f36004e = new h(dVar, 2);
        }
        f35998f.fine("Creating movie " + dVar);
        Iterator<com.googlecode.mp4parser.authoring.h> it = dVar.g().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.googlecode.mp4parser.authoring.h next2 = it.next();
            List<com.googlecode.mp4parser.authoring.f> F = next2.F();
            u(next2, F);
            int size = F.size();
            long[] jArr = new long[size];
            for (int i4 = 0; i4 < size; i4++) {
                jArr[i4] = F.get(i4).getSize();
            }
            this.f36003d.put(next2, jArr);
        }
        com.googlecode.mp4parser.d dVar2 = new com.googlecode.mp4parser.d();
        dVar2.D(e(dVar));
        HashMap hashMap = new HashMap();
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            hashMap.put(hVar, s(hVar, dVar));
        }
        h0 f10 = f(dVar, hashMap);
        dVar2.D(f10);
        long j4 = 0;
        for (t0 t0Var : m.f(f10, "trak/mdia/minf/stbl/stsz")) {
            j4 += x(t0Var.y());
        }
        C0280b c0280b = new C0280b(this, dVar, hashMap, j4, null);
        dVar2.D(c0280b);
        long b10 = c0280b.b();
        for (z0 z0Var : this.f36000a) {
            long[] v9 = z0Var.v();
            for (int i10 = 0; i10 < v9.length; i10++) {
                v9[i10] = v9[i10] + b10;
            }
        }
        for (com.mp4parser.iso14496.part12.b bVar : this.f36001b) {
            long size2 = bVar.getSize() + 44;
            j jVar = bVar;
            while (true) {
                j parent = jVar.getParent();
                Iterator<com.coremedia.iso.boxes.d> it2 = parent.y().iterator();
                while (it2.hasNext() && (next = it2.next()) != jVar) {
                    size2 += next.getSize();
                }
                if (!(parent instanceof com.coremedia.iso.boxes.d)) {
                    break;
                }
                jVar = parent;
            }
            long[] x9 = bVar.x();
            for (int i11 = 0; i11 < x9.length; i11++) {
                x9[i11] = x9[i11] + size2;
            }
            bVar.A(x9);
        }
        return dVar2;
    }

    protected void b(com.googlecode.mp4parser.authoring.tracks.h hVar, u0 u0Var, int[] iArr) {
        com.mp4parser.iso14496.part12.c cVar = new com.mp4parser.iso14496.part12.c();
        cVar.B(i.E1);
        cVar.setFlags(1);
        List<com.mp4parser.iso23001.part7.a> f02 = hVar.f0();
        if (hVar.Q()) {
            int size = f02.size();
            short[] sArr = new short[size];
            for (int i4 = 0; i4 < size; i4++) {
                sArr[i4] = (short) f02.get(i4).b();
            }
            cVar.F(sArr);
        } else {
            cVar.D(8);
            cVar.E(hVar.F().size());
        }
        com.mp4parser.iso14496.part12.b bVar = new com.mp4parser.iso14496.part12.b();
        com.googlecode.mp4parser.boxes.dece.d dVar = new com.googlecode.mp4parser.boxes.dece.d();
        dVar.C(hVar.Q());
        dVar.B(f02);
        long x9 = dVar.x();
        long[] jArr = new long[iArr.length];
        int i10 = 0;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            jArr[i11] = x9;
            int i12 = 0;
            while (i12 < iArr[i11]) {
                x9 += f02.get(i10).b();
                i12++;
                i10++;
                dVar = dVar;
            }
        }
        bVar.A(jArr);
        u0Var.D(cVar);
        u0Var.D(bVar);
        u0Var.D(dVar);
        this.f36001b.add(bVar);
    }

    protected void c(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        List<i.a> o9 = hVar.o();
        if (o9 == null || o9.isEmpty()) {
            return;
        }
        com.coremedia.iso.boxes.i iVar = new com.coremedia.iso.boxes.i();
        iVar.x(o9);
        u0Var.D(iVar);
    }

    protected com.coremedia.iso.boxes.d d(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
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

    protected s e(com.googlecode.mp4parser.authoring.d dVar) {
        LinkedList linkedList = new LinkedList();
        linkedList.add("isom");
        linkedList.add("iso2");
        linkedList.add(com.coremedia.iso.boxes.sampleentry.h.f10369y);
        return new s("isom", 0L, linkedList);
    }

    protected h0 f(com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map) {
        long duration;
        h0 h0Var = new h0();
        i0 i0Var = new i0();
        i0Var.J(new Date());
        i0Var.N(new Date());
        i0Var.M(dVar.c());
        long t9 = t(dVar);
        long j4 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            if (hVar.T() != null && !hVar.T().isEmpty()) {
                long j10 = 0;
                for (com.googlecode.mp4parser.authoring.c cVar : hVar.T()) {
                    j10 += (long) cVar.c();
                }
                duration = j10 * t(dVar);
            } else {
                duration = (hVar.getDuration() * t(dVar)) / hVar.a0().h();
            }
            if (duration > j4) {
                j4 = duration;
            }
        }
        i0Var.L(j4);
        i0Var.V(t9);
        long j11 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar2 : dVar.g()) {
            if (j11 < hVar2.a0().i()) {
                j11 = hVar2.a0().i();
            }
        }
        i0Var.O(j11 + 1);
        h0Var.D(i0Var);
        for (com.googlecode.mp4parser.authoring.h hVar3 : dVar.g()) {
            h0Var.D(p(hVar3, dVar, map));
        }
        com.coremedia.iso.boxes.d q9 = q(dVar);
        if (q9 != null) {
            h0Var.D(q9);
        }
        return h0Var;
    }

    protected void g(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        if (hVar.m0() == null || hVar.m0().isEmpty()) {
            return;
        }
        r0 r0Var = new r0();
        r0Var.w(hVar.m0());
        u0Var.D(r0Var);
    }

    protected com.coremedia.iso.boxes.d h(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map) {
        u0 u0Var = new u0();
        k(hVar, u0Var);
        n(hVar, u0Var);
        c(hVar, u0Var);
        l(hVar, u0Var);
        g(hVar, u0Var);
        j(hVar, map, u0Var);
        m(hVar, u0Var);
        i(hVar, dVar, map, u0Var);
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
        for (Map.Entry entry2 : hashMap.entrySet()) {
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.e eVar = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.e();
            eVar.z((List) entry2.getValue());
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.f fVar = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.f();
            fVar.z((String) entry2.getKey());
            f.a aVar = null;
            for (int i4 = 0; i4 < hVar.F().size(); i4++) {
                int i10 = 0;
                for (int i11 = 0; i11 < ((List) entry2.getValue()).size(); i11++) {
                    if (Arrays.binarySearch(hVar.V().get((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) ((List) entry2.getValue()).get(i11)), i4) >= 0) {
                        i10 = i11 + 1;
                    }
                }
                if (aVar != null && aVar.a() == i10) {
                    aVar.d(aVar.b() + 1);
                } else {
                    f.a aVar2 = new f.a(1L, i10);
                    fVar.v().add(aVar2);
                    aVar = aVar2;
                }
            }
            u0Var.D(eVar);
            u0Var.D(fVar);
        }
        if (hVar instanceof com.googlecode.mp4parser.authoring.tracks.h) {
            b((com.googlecode.mp4parser.authoring.tracks.h) hVar, u0Var, map.get(hVar));
        }
        o(hVar, u0Var);
        return u0Var;
    }

    protected void i(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map, u0 u0Var) {
        String str;
        int[] iArr;
        z0 z0Var;
        com.googlecode.mp4parser.authoring.h hVar2 = hVar;
        Map<com.googlecode.mp4parser.authoring.h, int[]> map2 = map;
        int[] iArr2 = map2.get(hVar2);
        z0 z0Var2 = new z0();
        this.f36000a.add(z0Var2);
        long[] jArr = new long[iArr2.length];
        String str2 = "Calculating chunk offsets for track_";
        if (f35998f.isLoggable(Level.FINE)) {
            Logger logger = f35998f;
            logger.fine("Calculating chunk offsets for track_" + hVar.a0().i());
        }
        int i4 = 0;
        long j4 = 0;
        while (i4 < iArr2.length) {
            if (f35998f.isLoggable(Level.FINER)) {
                Logger logger2 = f35998f;
                StringBuilder sb = new StringBuilder(str2);
                str = str2;
                sb.append(hVar.a0().i());
                sb.append(" chunk ");
                sb.append(i4);
                logger2.finer(sb.toString());
            } else {
                str = str2;
            }
            for (com.googlecode.mp4parser.authoring.h hVar3 : dVar.g()) {
                if (f35998f.isLoggable(Level.FINEST)) {
                    Logger logger3 = f35998f;
                    logger3.finest("Adding offsets of track_" + hVar3.a0().i());
                }
                int[] iArr3 = map2.get(hVar3);
                int i10 = 0;
                long j10 = 0;
                while (i10 < i4) {
                    j10 += iArr3[i10];
                    i10++;
                    hVar2 = hVar;
                }
                if (hVar3 == hVar2) {
                    jArr[i4] = j4;
                }
                int a10 = com.googlecode.mp4parser.util.c.a(j10);
                while (true) {
                    iArr = iArr2;
                    z0Var = z0Var2;
                    if (a10 >= iArr3[i4] + j10) {
                        break;
                    }
                    j4 += this.f36003d.get(hVar3)[a10];
                    a10++;
                    iArr2 = iArr;
                    z0Var2 = z0Var;
                }
                hVar2 = hVar;
                map2 = map;
                iArr2 = iArr;
                z0Var2 = z0Var;
            }
            i4++;
            str2 = str;
        }
        z0Var2.w(jArr);
        u0Var.D(z0Var2);
    }

    protected void j(com.googlecode.mp4parser.authoring.h hVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map, u0 u0Var) {
        int[] iArr = map.get(hVar);
        v0 v0Var = new v0();
        v0Var.x(new LinkedList());
        long j4 = -2147483648L;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (j4 != iArr[i4]) {
                v0Var.w().add(new v0.a(i4 + 1, iArr[i4], 1L));
                j4 = iArr[i4];
            }
        }
        u0Var.D(v0Var);
    }

    protected void k(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        u0Var.D(hVar.u());
    }

    protected void l(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        long[] z9 = hVar.z();
        if (z9 == null || z9.length <= 0) {
            return;
        }
        c1 c1Var = new c1();
        c1Var.w(z9);
        u0Var.D(c1Var);
    }

    protected void m(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        t0 t0Var = new t0();
        t0Var.A(this.f36003d.get(hVar));
        u0Var.D(t0Var);
    }

    protected void n(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        long[] c02;
        ArrayList arrayList = new ArrayList();
        d1.a aVar = null;
        for (long j4 : hVar.c0()) {
            if (aVar != null && aVar.b() == j4) {
                aVar.c(aVar.a() + 1);
            } else {
                aVar = new d1.a(1L, j4);
                arrayList.add(aVar);
            }
        }
        d1 d1Var = new d1();
        d1Var.x(arrayList);
        u0Var.D(d1Var);
    }

    protected void o(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        if (hVar.B() != null) {
            u0Var.D(hVar.B());
        }
    }

    protected f1 p(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map) {
        f1 f1Var = new f1();
        g1 g1Var = new g1();
        g1Var.M(true);
        g1Var.O(true);
        g1Var.Q(true);
        g1Var.P(true);
        g1Var.S(hVar.a0().f());
        g1Var.J(hVar.a0().b());
        g1Var.K(hVar.a0().a());
        if (hVar.T() != null && !hVar.T().isEmpty()) {
            long j4 = 0;
            for (com.googlecode.mp4parser.authoring.c cVar : hVar.T()) {
                j4 += (long) cVar.c();
            }
            g1Var.L(j4 * hVar.a0().h());
        } else {
            g1Var.L((hVar.getDuration() * t(dVar)) / hVar.a0().h());
        }
        g1Var.N(hVar.a0().c());
        g1Var.W(hVar.a0().k());
        g1Var.R(hVar.a0().e());
        g1Var.T(new Date());
        g1Var.U(hVar.a0().i());
        g1Var.V(hVar.a0().j());
        f1Var.D(g1Var);
        f1Var.D(d(hVar, dVar));
        d0 d0Var = new d0();
        f1Var.D(d0Var);
        e0 e0Var = new e0();
        e0Var.A(hVar.a0().a());
        e0Var.B(hVar.getDuration());
        e0Var.E(hVar.a0().h());
        e0Var.C(hVar.a0().d());
        d0Var.D(e0Var);
        x xVar = new x();
        d0Var.D(xVar);
        xVar.y(hVar.getHandler());
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
        n nVar = new n();
        o oVar = new o();
        nVar.D(oVar);
        l lVar = new l();
        lVar.setFlags(1);
        oVar.D(lVar);
        f0Var.D(nVar);
        f0Var.D(h(hVar, dVar, map));
        d0Var.D(f0Var);
        return f1Var;
    }

    protected com.coremedia.iso.boxes.d q(com.googlecode.mp4parser.authoring.d dVar) {
        return null;
    }

    int[] s(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        long j4;
        long[] a10 = this.f36004e.a(hVar);
        int[] iArr = new int[a10.length];
        int i4 = 0;
        while (i4 < a10.length) {
            long j10 = a10[i4] - 1;
            int i10 = i4 + 1;
            if (a10.length == i10) {
                j4 = hVar.F().size();
            } else {
                j4 = a10[i10] - 1;
            }
            iArr[i4] = com.googlecode.mp4parser.util.c.a(j4 - j10);
            i4 = i10;
        }
        return iArr;
    }

    public long t(com.googlecode.mp4parser.authoring.d dVar) {
        long h4 = dVar.g().iterator().next().a0().h();
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            h4 = r(hVar.a0().h(), h4);
        }
        return h4;
    }

    protected List<com.googlecode.mp4parser.authoring.f> u(com.googlecode.mp4parser.authoring.h hVar, List<com.googlecode.mp4parser.authoring.f> list) {
        return this.f36002c.put(hVar, list);
    }

    public void v(c cVar) {
        this.f36004e = cVar;
    }

    /* compiled from: DefaultMp4Builder.java */
    /* renamed from: com.googlecode.mp4parser.authoring.builder.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class C0280b implements com.coremedia.iso.boxes.d {

        /* renamed from: a  reason: collision with root package name */
        List<com.googlecode.mp4parser.authoring.h> f36005a;

        /* renamed from: b  reason: collision with root package name */
        List<List<com.googlecode.mp4parser.authoring.f>> f36006b;

        /* renamed from: c  reason: collision with root package name */
        j f36007c;

        /* renamed from: d  reason: collision with root package name */
        long f36008d;

        private C0280b(com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map, long j4) {
            this.f36006b = new ArrayList();
            this.f36008d = j4;
            this.f36005a = dVar.g();
            for (int i4 = 0; i4 < map.values().iterator().next().length; i4++) {
                for (com.googlecode.mp4parser.authoring.h hVar : this.f36005a) {
                    int[] iArr = map.get(hVar);
                    long j10 = 0;
                    for (int i10 = 0; i10 < i4; i10++) {
                        j10 += iArr[i10];
                    }
                    this.f36006b.add(b.this.f36002c.get(hVar).subList(com.googlecode.mp4parser.util.c.a(j10), com.googlecode.mp4parser.util.c.a(j10 + iArr[i4])));
                }
            }
        }

        private boolean c(long j4) {
            return j4 + 8 < KSYMediaMeta.AV_CH_WIDE_RIGHT;
        }

        @Override // com.coremedia.iso.boxes.d
        public void a(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            long size = getSize();
            if (c(size)) {
                com.coremedia.iso.i.i(allocate, size);
            } else {
                com.coremedia.iso.i.i(allocate, 1L);
            }
            allocate.put(com.coremedia.iso.f.J(com.coremedia.iso.boxes.mdat.a.f10244g));
            if (c(size)) {
                allocate.put(new byte[8]);
            } else {
                com.coremedia.iso.i.l(allocate, size);
            }
            allocate.rewind();
            writableByteChannel.write(allocate);
            for (List<com.googlecode.mp4parser.authoring.f> list : this.f36006b) {
                for (com.googlecode.mp4parser.authoring.f fVar : list) {
                    fVar.b(writableByteChannel);
                }
            }
        }

        public long b() {
            com.coremedia.iso.boxes.d next;
            long j4 = 16;
            j jVar = this;
            while (jVar instanceof com.coremedia.iso.boxes.d) {
                C0280b c0280b = jVar;
                Iterator<com.coremedia.iso.boxes.d> it = c0280b.getParent().y().iterator();
                while (it.hasNext() && jVar != (next = it.next())) {
                    j4 += next.getSize();
                }
                jVar = c0280b.getParent();
            }
            return j4;
        }

        @Override // com.coremedia.iso.boxes.d
        public j getParent() {
            return this.f36007c;
        }

        @Override // com.coremedia.iso.boxes.d
        public long getSize() {
            return this.f36008d + 16;
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
            this.f36007c = jVar;
        }

        /* synthetic */ C0280b(b bVar, com.googlecode.mp4parser.authoring.d dVar, Map map, long j4, C0280b c0280b) {
            this(dVar, map, j4);
        }
    }
}
