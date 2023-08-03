package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.fragment.k;
import com.coremedia.iso.boxes.fragment.n;
import com.coremedia.iso.boxes.h0;
import com.coremedia.iso.boxes.x0;
import com.googlecode.mp4parser.util.m;
import com.mp4parser.iso23001.part7.a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* compiled from: CencMp4TrackImplImpl.java */
/* loaded from: classes2.dex */
public class b extends e implements com.googlecode.mp4parser.authoring.tracks.h {

    /* renamed from: q  reason: collision with root package name */
    static final /* synthetic */ boolean f35990q = false;

    /* renamed from: o  reason: collision with root package name */
    private List<com.mp4parser.iso23001.part7.a> f35991o;

    /* renamed from: p  reason: collision with root package name */
    private UUID f35992p;

    /* compiled from: CencMp4TrackImplImpl.java */
    /* loaded from: classes2.dex */
    private class a {

        /* renamed from: e  reason: collision with root package name */
        static final /* synthetic */ boolean f35993e = false;

        /* renamed from: a  reason: collision with root package name */
        private com.coremedia.iso.boxes.j f35994a;

        /* renamed from: b  reason: collision with root package name */
        private com.mp4parser.iso14496.part12.c f35995b;

        /* renamed from: c  reason: collision with root package name */
        private com.mp4parser.iso14496.part12.b f35996c;

        public a(com.coremedia.iso.boxes.j jVar) {
            this.f35994a = jVar;
        }

        public com.mp4parser.iso14496.part12.b c() {
            return this.f35996c;
        }

        public com.mp4parser.iso14496.part12.c d() {
            return this.f35995b;
        }

        public a e() {
            List h4 = this.f35994a.h(com.mp4parser.iso14496.part12.c.class);
            List h10 = this.f35994a.h(com.mp4parser.iso14496.part12.b.class);
            this.f35995b = null;
            this.f35996c = null;
            for (int i4 = 0; i4 < h4.size(); i4++) {
                if ((this.f35995b == null && ((com.mp4parser.iso14496.part12.c) h4.get(i4)).v() == null) || com.google.android.exoplayer2.i.E1.equals(((com.mp4parser.iso14496.part12.c) h4.get(i4)).v())) {
                    this.f35995b = (com.mp4parser.iso14496.part12.c) h4.get(i4);
                } else {
                    com.mp4parser.iso14496.part12.c cVar = this.f35995b;
                    if (cVar != null && cVar.v() == null && com.google.android.exoplayer2.i.E1.equals(((com.mp4parser.iso14496.part12.c) h4.get(i4)).v())) {
                        this.f35995b = (com.mp4parser.iso14496.part12.c) h4.get(i4);
                    } else {
                        throw new RuntimeException("Are there two cenc labeled saiz?");
                    }
                }
                if ((this.f35996c == null && ((com.mp4parser.iso14496.part12.b) h10.get(i4)).v() == null) || com.google.android.exoplayer2.i.E1.equals(((com.mp4parser.iso14496.part12.b) h10.get(i4)).v())) {
                    this.f35996c = (com.mp4parser.iso14496.part12.b) h10.get(i4);
                } else {
                    com.mp4parser.iso14496.part12.b bVar = this.f35996c;
                    if (bVar != null && bVar.v() == null && com.google.android.exoplayer2.i.E1.equals(((com.mp4parser.iso14496.part12.b) h10.get(i4)).v())) {
                        this.f35996c = (com.mp4parser.iso14496.part12.b) h10.get(i4);
                    } else {
                        throw new RuntimeException("Are there two cenc labeled saio?");
                    }
                }
            }
            return this;
        }
    }

    public b(String str, f1 f1Var, com.coremedia.iso.f... fVarArr) throws IOException {
        super(str, f1Var, fVarArr);
        long j4;
        int i4;
        com.coremedia.iso.boxes.j jVar;
        long j10;
        int i10;
        x0 x0Var = (x0) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]");
        this.f35991o = new ArrayList();
        long C = f1Var.L().C();
        if (f1Var.getParent().h(com.coremedia.iso.boxes.fragment.a.class).size() > 0) {
            Iterator it = ((com.coremedia.iso.boxes.d) f1Var.getParent()).getParent().h(com.coremedia.iso.boxes.fragment.c.class).iterator();
            while (it.hasNext()) {
                com.coremedia.iso.boxes.fragment.c cVar = (com.coremedia.iso.boxes.fragment.c) it.next();
                Iterator it2 = cVar.h(k.class).iterator();
                while (it2.hasNext()) {
                    k kVar = (k) it2.next();
                    if (kVar.J().A() == C) {
                        com.mp4parser.iso23001.part7.c cVar2 = (com.mp4parser.iso23001.part7.c) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
                        this.f35992p = cVar2.x();
                        if (kVar.J().B()) {
                            jVar = ((com.coremedia.iso.boxes.d) f1Var.getParent()).getParent();
                            j10 = kVar.J().v();
                        } else {
                            jVar = cVar;
                            j10 = 0;
                        }
                        a e4 = new a(kVar).e();
                        com.mp4parser.iso14496.part12.b c10 = e4.c();
                        com.mp4parser.iso14496.part12.c d4 = e4.d();
                        long[] x9 = c10.x();
                        List h4 = kVar.h(n.class);
                        long j11 = C;
                        int i11 = 0;
                        int i12 = 0;
                        while (i11 < x9.length) {
                            int size = ((n) h4.get(i11)).w().size();
                            long j12 = x9[i11];
                            Iterator it3 = it;
                            long[] jArr = x9;
                            List list = h4;
                            int i13 = i12;
                            long j13 = 0;
                            while (true) {
                                i10 = i12 + size;
                                if (i13 >= i10) {
                                    break;
                                }
                                j13 += d4.A(i13);
                                i13++;
                                cVar = cVar;
                                it2 = it2;
                            }
                            ByteBuffer s9 = jVar.s(j10 + j12, j13);
                            int i14 = i12;
                            while (i14 < i10) {
                                this.f35991o.add(b(cVar2.w(), s9, d4.A(i14)));
                                i14++;
                                i10 = i10;
                                cVar = cVar;
                                it2 = it2;
                            }
                            i11++;
                            x9 = jArr;
                            i12 = i10;
                            h4 = list;
                            it = it3;
                        }
                        C = j11;
                    }
                }
            }
            return;
        }
        com.mp4parser.iso23001.part7.c cVar3 = (com.mp4parser.iso23001.part7.c) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
        this.f35992p = cVar3.x();
        com.coremedia.iso.boxes.f fVar = (com.coremedia.iso.boxes.f) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/stco[0]");
        long[] v9 = f1Var.K().W().v((fVar == null ? (com.coremedia.iso.boxes.f) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/co64[0]") : fVar).v().length);
        a e10 = new a((com.coremedia.iso.boxes.j) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]")).e();
        com.mp4parser.iso14496.part12.b bVar = e10.f35996c;
        com.mp4parser.iso14496.part12.c cVar4 = e10.f35995b;
        com.coremedia.iso.boxes.j parent = ((h0) f1Var.getParent()).getParent();
        if (bVar.x().length == 1) {
            long j14 = bVar.x()[0];
            if (cVar4.x() > 0) {
                i4 = (cVar4.y() * cVar4.x()) + 0;
            } else {
                i4 = 0;
                for (int i15 = 0; i15 < cVar4.y(); i15++) {
                    i4 += cVar4.z()[i15];
                }
            }
            ByteBuffer s10 = parent.s(j14, i4);
            for (int i16 = 0; i16 < cVar4.y(); i16++) {
                this.f35991o.add(b(cVar3.w(), s10, cVar4.A(i16)));
            }
        } else if (bVar.x().length == v9.length) {
            int i17 = 0;
            for (int i18 = 0; i18 < v9.length; i18++) {
                long j15 = bVar.x()[i18];
                if (cVar4.x() > 0) {
                    j4 = (cVar4.y() * v9[i18]) + 0;
                } else {
                    j4 = 0;
                    for (int i19 = 0; i19 < v9[i18]; i19++) {
                        j4 += cVar4.A(i17 + i19);
                    }
                }
                ByteBuffer s11 = parent.s(j15, j4);
                for (int i20 = 0; i20 < v9[i18]; i20++) {
                    this.f35991o.add(b(cVar3.w(), s11, cVar4.A(i17 + i20)));
                }
                i17 = (int) (i17 + v9[i18]);
            }
        } else {
            throw new RuntimeException("Number of saio offsets must be either 1 or number of chunks");
        }
    }

    private com.mp4parser.iso23001.part7.a b(int i4, ByteBuffer byteBuffer, long j4) {
        com.mp4parser.iso23001.part7.a aVar = new com.mp4parser.iso23001.part7.a();
        if (j4 > 0) {
            byte[] bArr = new byte[i4];
            aVar.f47090a = bArr;
            byteBuffer.get(bArr);
            if (j4 > i4) {
                aVar.f47091b = new a.k[com.coremedia.iso.g.i(byteBuffer)];
                int i10 = 0;
                while (true) {
                    a.k[] kVarArr = aVar.f47091b;
                    if (i10 >= kVarArr.length) {
                        break;
                    }
                    kVarArr[i10] = aVar.a(com.coremedia.iso.g.i(byteBuffer), com.coremedia.iso.g.l(byteBuffer));
                    i10++;
                }
            }
        }
        return aVar;
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.h
    public boolean Q() {
        return false;
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.h
    public UUID Y() {
        return this.f35992p;
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.h
    public List<com.mp4parser.iso23001.part7.a> f0() {
        return this.f35991o;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "enc(" + super.getName() + ")";
    }

    public String toString() {
        return "CencMp4TrackImpl{handler='" + getHandler() + "'}";
    }
}
