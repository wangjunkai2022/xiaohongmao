package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.d1;
import com.coremedia.iso.boxes.e0;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.fragment.k;
import com.coremedia.iso.boxes.fragment.l;
import com.coremedia.iso.boxes.fragment.n;
import com.coremedia.iso.boxes.g1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.i0;
import com.coremedia.iso.boxes.r;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.u0;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.f;
import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* compiled from: Mp4TrackImpl.java */
/* loaded from: classes2.dex */
public class e extends a {

    /* renamed from: d  reason: collision with root package name */
    f1 f36036d;

    /* renamed from: e  reason: collision with root package name */
    com.coremedia.iso.f[] f36037e;

    /* renamed from: f  reason: collision with root package name */
    private List<f> f36038f;

    /* renamed from: g  reason: collision with root package name */
    private s0 f36039g;

    /* renamed from: h  reason: collision with root package name */
    private long[] f36040h;

    /* renamed from: i  reason: collision with root package name */
    private List<i.a> f36041i;

    /* renamed from: j  reason: collision with root package name */
    private long[] f36042j;

    /* renamed from: k  reason: collision with root package name */
    private List<r0.a> f36043k;

    /* renamed from: l  reason: collision with root package name */
    private i f36044l;

    /* renamed from: m  reason: collision with root package name */
    private String f36045m;

    /* renamed from: n  reason: collision with root package name */
    private a1 f36046n;

    public e(String str, f1 f1Var, com.coremedia.iso.f... fVarArr) {
        super(str);
        Iterator it;
        long j4;
        Iterator it2;
        ArrayList arrayList;
        Iterator it3;
        Iterator it4;
        com.coremedia.iso.boxes.fragment.g x9;
        int i4;
        int i10 = 0;
        this.f36042j = new long[0];
        this.f36044l = new i();
        this.f36046n = null;
        long C = f1Var.L().C();
        this.f36038f = new com.coremedia.iso.boxes.mdat.b(f1Var, fVarArr);
        u0 K = f1Var.J().L().K();
        this.f36045m = f1Var.J().J().v();
        ArrayList arrayList2 = new ArrayList();
        this.f36041i = new ArrayList();
        this.f36043k = new ArrayList();
        arrayList2.addAll(K.b0().w());
        if (K.K() != null) {
            this.f36041i.addAll(K.K().w());
        }
        if (K.L() != null) {
            this.f36043k.addAll(K.L().v());
        }
        if (K.X() != null) {
            this.f36042j = K.X().v();
        }
        String str2 = a1.f9919s;
        this.f36046n = (a1) m.e(K, a1.f9919s);
        ArrayList<com.coremedia.iso.boxes.fragment.c> arrayList3 = new ArrayList();
        arrayList3.addAll(((com.coremedia.iso.boxes.d) f1Var.getParent()).getParent().h(com.coremedia.iso.boxes.fragment.c.class));
        int length = fVarArr.length;
        int i11 = 0;
        while (i11 < length) {
            ArrayList arrayList4 = arrayList3;
            arrayList4.addAll(fVarArr[i11].h(com.coremedia.iso.boxes.fragment.c.class));
            i11++;
            arrayList3 = arrayList4;
            C = C;
            i10 = 0;
        }
        this.f36039g = K.u();
        List h4 = f1Var.getParent().h(com.coremedia.iso.boxes.fragment.a.class);
        if (h4.size() > 0) {
            Iterator it5 = h4.iterator();
            while (it5.hasNext()) {
                for (com.coremedia.iso.boxes.fragment.i iVar : ((com.coremedia.iso.boxes.fragment.a) it5.next()).h(com.coremedia.iso.boxes.fragment.i.class)) {
                    if (iVar.A() == C) {
                        if (m.h(((com.coremedia.iso.boxes.d) f1Var.getParent()).getParent(), "/moof/traf/subs").size() > 0) {
                            this.f36046n = new a1();
                        }
                        LinkedList<Long> linkedList = new LinkedList();
                        Iterator it6 = arrayList3.iterator();
                        long j10 = 1;
                        while (it6.hasNext()) {
                            Iterator it7 = ((com.coremedia.iso.boxes.fragment.c) it6.next()).h(k.class).iterator();
                            while (it7.hasNext()) {
                                k kVar = (k) it7.next();
                                if (kVar.J().A() == C) {
                                    a1 a1Var = (a1) m.e(kVar, str2);
                                    if (a1Var != null) {
                                        j4 = C;
                                        long j11 = (j10 - i10) - 1;
                                        for (a1.a aVar : a1Var.v()) {
                                            a1.a aVar2 = new a1.a();
                                            Iterator it8 = it5;
                                            String str3 = str2;
                                            aVar2.c().addAll(aVar.c());
                                            long j12 = 0;
                                            if (j11 != 0) {
                                                aVar2.d(j11 + aVar.a());
                                            } else {
                                                j12 = j11;
                                                aVar2.d(aVar.a());
                                            }
                                            j11 = j12;
                                            this.f36046n.v().add(aVar2);
                                            it5 = it8;
                                            str2 = str3;
                                        }
                                        it = it5;
                                    } else {
                                        it = it5;
                                        j4 = C;
                                    }
                                    String str4 = str2;
                                    Iterator it9 = kVar.h(n.class).iterator();
                                    while (it9.hasNext()) {
                                        n nVar = (n) it9.next();
                                        l J = ((k) nVar.getParent()).J();
                                        int i12 = 1;
                                        boolean z9 = true;
                                        for (n.a aVar3 : nVar.w()) {
                                            if (nVar.D()) {
                                                if (arrayList2.size() != 0) {
                                                    it2 = it9;
                                                    if (((d1.a) arrayList2.get(arrayList2.size() - 1)).b() == aVar3.j()) {
                                                        d1.a aVar4 = (d1.a) arrayList2.get(arrayList2.size() - i12);
                                                        arrayList = arrayList3;
                                                        it3 = it6;
                                                        it4 = it7;
                                                        aVar4.c(aVar4.a() + 1);
                                                    }
                                                } else {
                                                    it2 = it9;
                                                }
                                                arrayList = arrayList3;
                                                it3 = it6;
                                                it4 = it7;
                                                arrayList2.add(new d1.a(1L, aVar3.j()));
                                            } else {
                                                it2 = it9;
                                                arrayList = arrayList3;
                                                it3 = it6;
                                                it4 = it7;
                                                if (J.C()) {
                                                    arrayList2.add(new d1.a(1L, J.w()));
                                                } else {
                                                    arrayList2.add(new d1.a(1L, iVar.w()));
                                                }
                                            }
                                            if (nVar.C()) {
                                                if (this.f36041i.size() != 0) {
                                                    List<i.a> list = this.f36041i;
                                                    i4 = 1;
                                                    if (list.get(list.size() - 1).b() == aVar3.i()) {
                                                        List<i.a> list2 = this.f36041i;
                                                        i.a aVar5 = list2.get(list2.size() - 1);
                                                        aVar5.c(aVar5.a() + 1);
                                                    }
                                                } else {
                                                    i4 = 1;
                                                }
                                                this.f36041i.add(new i.a(i4, com.googlecode.mp4parser.util.c.a(aVar3.i())));
                                            }
                                            if (nVar.E()) {
                                                x9 = aVar3.k();
                                            } else if (z9 && nVar.B()) {
                                                x9 = nVar.x();
                                            } else if (J.D()) {
                                                x9 = J.x();
                                            } else {
                                                x9 = iVar.x();
                                            }
                                            if (x9 != null && !x9.h()) {
                                                linkedList.add(Long.valueOf(j10));
                                            }
                                            j10++;
                                            arrayList3 = arrayList;
                                            it9 = it2;
                                            it6 = it3;
                                            it7 = it4;
                                            i12 = 1;
                                            z9 = false;
                                        }
                                    }
                                    it5 = it;
                                    C = j4;
                                    str2 = str4;
                                    i10 = 0;
                                }
                            }
                        }
                        long[] jArr = this.f36042j;
                        long[] jArr2 = new long[jArr.length + linkedList.size()];
                        this.f36042j = jArr2;
                        System.arraycopy(jArr, i10, jArr2, i10, jArr.length);
                        int length2 = jArr.length;
                        for (Long l10 : linkedList) {
                            this.f36042j[length2] = l10.longValue();
                            length2++;
                        }
                    }
                }
            }
            new ArrayList();
            new ArrayList();
            for (com.coremedia.iso.boxes.fragment.c cVar : arrayList3) {
                for (k kVar2 : cVar.h(k.class)) {
                    if (kVar2.J().A() == C) {
                        this.f35989c = a(m.h(kVar2, com.googlecode.mp4parser.boxes.mp4.samplegrouping.e.f36859t), m.h(kVar2, com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.f36868u), this.f35989c);
                    }
                }
            }
        } else {
            this.f35989c = a(K.h(com.googlecode.mp4parser.boxes.mp4.samplegrouping.e.class), K.h(com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.class), this.f35989c);
        }
        this.f36040h = d1.v(arrayList2);
        e0 K2 = f1Var.J().K();
        g1 L = f1Var.L();
        this.f36044l.t(L.C());
        this.f36044l.l(K2.v());
        this.f36044l.o(K2.x());
        this.f36044l.r(K2.y());
        this.f36044l.s(K2.z());
        this.f36044l.n(L.y());
        this.f36044l.v(L.E());
        this.f36044l.p(L.z());
        this.f36044l.q(L.A());
        r rVar = (r) m.e(f1Var, "edts/elst");
        i0 i0Var = (i0) m.e(f1Var, "../mvhd");
        if (rVar != null) {
            for (Iterator<r.a> it10 = rVar.v().iterator(); it10.hasNext(); it10 = it10) {
                r.a next = it10.next();
                this.f35988b.add(new c(next.c(), K2.z(), next.b(), next.d() / i0Var.H()));
                K2 = K2;
            }
        }
    }

    private Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> a(List<com.googlecode.mp4parser.boxes.mp4.samplegrouping.e> list, List<com.googlecode.mp4parser.boxes.mp4.samplegrouping.f> list2, Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> map) {
        for (com.googlecode.mp4parser.boxes.mp4.samplegrouping.e eVar : list) {
            boolean z9 = false;
            for (com.googlecode.mp4parser.boxes.mp4.samplegrouping.f fVar : list2) {
                if (fVar.w().equals(eVar.w().get(0).b())) {
                    int i4 = 0;
                    for (f.a aVar : fVar.v()) {
                        if (aVar.a() > 0) {
                            com.googlecode.mp4parser.boxes.mp4.samplegrouping.b bVar = eVar.w().get(aVar.a() - 1);
                            long[] jArr = map.get(bVar);
                            if (jArr == null) {
                                jArr = new long[0];
                            }
                            long[] jArr2 = new long[com.googlecode.mp4parser.util.c.a(aVar.b()) + jArr.length];
                            System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
                            for (int i10 = 0; i10 < aVar.b(); i10++) {
                                jArr2[jArr.length + i10] = i4 + i10;
                            }
                            map.put(bVar, jArr2);
                        }
                        i4 = (int) (i4 + aVar.b());
                    }
                    z9 = true;
                }
            }
            if (!z9) {
                throw new RuntimeException("Could not find SampleToGroupBox for " + eVar.w().get(0).b() + ".");
            }
        }
        return map;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36046n;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<f> F() {
        return this.f36038f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public i a0() {
        return this.f36044l;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] c0() {
        return this.f36040h;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        com.coremedia.iso.boxes.j parent = this.f36036d.getParent();
        if (parent instanceof com.googlecode.mp4parser.d) {
            ((com.googlecode.mp4parser.d) parent).close();
        }
        for (com.coremedia.iso.f fVar : this.f36037e) {
            fVar.close();
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36045m;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return this.f36043k;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return this.f36041i;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36039g;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        if (this.f36042j.length == this.f36038f.size()) {
            return null;
        }
        return this.f36042j;
    }
}
