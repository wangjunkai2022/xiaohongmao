package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: AppendTrack.java */
/* loaded from: classes2.dex */
public class e extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: f  reason: collision with root package name */
    private static com.googlecode.mp4parser.util.j f36247f = com.googlecode.mp4parser.util.j.a(e.class);

    /* renamed from: d  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h[] f36248d;

    /* renamed from: e  reason: collision with root package name */
    s0 f36249e;

    public e(com.googlecode.mp4parser.authoring.h... hVarArr) throws IOException {
        super(a(hVarArr));
        this.f36248d = hVarArr;
        for (com.googlecode.mp4parser.authoring.h hVar : hVarArr) {
            s0 s0Var = this.f36249e;
            if (s0Var == null) {
                s0 s0Var2 = new s0();
                this.f36249e = s0Var2;
                s0Var2.D((com.coremedia.iso.boxes.d) hVar.u().h(com.coremedia.iso.boxes.sampleentry.f.class).get(0));
            } else {
                this.f36249e = i(s0Var, hVar.u());
            }
        }
    }

    public static String a(com.googlecode.mp4parser.authoring.h... hVarArr) {
        String str = "";
        for (com.googlecode.mp4parser.authoring.h hVar : hVarArr) {
            str = String.valueOf(str) + hVar.getName() + " + ";
        }
        return str.substring(0, str.length() - 3);
    }

    private com.coremedia.iso.boxes.sampleentry.c b(com.coremedia.iso.boxes.sampleentry.c cVar, com.coremedia.iso.boxes.sampleentry.c cVar2) {
        com.coremedia.iso.boxes.sampleentry.c cVar3 = new com.coremedia.iso.boxes.sampleentry.c(cVar2.getType());
        if (cVar.J() == cVar2.J()) {
            cVar3.p0(cVar.J());
            if (cVar.K() == cVar2.K()) {
                cVar3.q0(cVar.K());
                if (cVar.L() == cVar2.L()) {
                    cVar3.r0(cVar.L());
                    if (cVar.M() == cVar2.M()) {
                        cVar3.s0(cVar.M());
                        if (cVar.X() == cVar2.X()) {
                            cVar3.u0(cVar.X());
                            if (cVar.W() == cVar2.W()) {
                                cVar3.t0(cVar.W());
                                if (cVar.g0() == cVar2.g0()) {
                                    cVar3.x0(cVar.g0());
                                    if (cVar.h0() == cVar2.h0()) {
                                        cVar3.y0(cVar.h0());
                                        if (cVar.l0() == cVar2.l0()) {
                                            cVar3.z0(cVar.l0());
                                            if (cVar.n0() == cVar2.n0()) {
                                                cVar3.A0(cVar.n0());
                                                if (Arrays.equals(cVar.o0(), cVar2.o0())) {
                                                    cVar3.B0(cVar.o0());
                                                    if (cVar.y().size() == cVar2.y().size()) {
                                                        Iterator<com.coremedia.iso.boxes.d> it = cVar2.y().iterator();
                                                        for (com.coremedia.iso.boxes.d dVar : cVar.y()) {
                                                            com.coremedia.iso.boxes.d next = it.next();
                                                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                                            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                                            try {
                                                                dVar.a(Channels.newChannel(byteArrayOutputStream));
                                                                next.a(Channels.newChannel(byteArrayOutputStream2));
                                                                if (Arrays.equals(byteArrayOutputStream.toByteArray(), byteArrayOutputStream2.toByteArray())) {
                                                                    cVar3.D(dVar);
                                                                } else if (com.googlecode.mp4parser.boxes.mp4.b.f36737z.equals(dVar.getType()) && com.googlecode.mp4parser.boxes.mp4.b.f36737z.equals(next.getType())) {
                                                                    com.googlecode.mp4parser.boxes.mp4.b bVar = (com.googlecode.mp4parser.boxes.mp4.b) dVar;
                                                                    bVar.z(d(bVar.A(), ((com.googlecode.mp4parser.boxes.mp4.b) next).A()));
                                                                    cVar3.D(dVar);
                                                                }
                                                            } catch (IOException e4) {
                                                                f36247f.d(e4.getMessage());
                                                                return null;
                                                            }
                                                        }
                                                    }
                                                    return cVar3;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            return null;
                        }
                        f36247f.c("ChannelCount differ");
                    }
                    return null;
                }
                f36247f.c("BytesPerSample differ");
            }
            return null;
        }
        f36247f.c("BytesPerFrame differ");
        return null;
    }

    private com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h d(com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b bVar, com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b bVar2) {
        if ((bVar instanceof com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h) && (bVar2 instanceof com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h)) {
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h hVar = (com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h) bVar;
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h hVar2 = (com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h) bVar2;
            if (hVar.o() != hVar2.o()) {
                return null;
            }
            hVar.p();
            hVar2.p();
            if (hVar.h() == hVar2.h() && hVar.i() == hVar2.i() && hVar.r() == hVar2.r() && hVar.s() == hVar2.s() && hVar.k() == hVar2.k() && hVar.m() == hVar2.m()) {
                hVar.n();
                hVar2.n();
                if (hVar.q() != null) {
                    hVar.q().equals(hVar2.q());
                } else {
                    hVar2.q();
                }
                if (hVar.g() == null ? hVar2.g() != null : !hVar.g().equals(hVar2.g())) {
                    com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e g4 = hVar.g();
                    com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e g10 = hVar2.g();
                    if (g4.g() != null && g10.g() != null && !g4.g().equals(g10.g())) {
                        return null;
                    }
                    if (g4.h() != g10.h()) {
                        g4.s((g4.h() + g10.h()) / 2);
                    }
                    g4.i();
                    g10.i();
                    if (g4.j() == null ? g10.j() != null : !g4.j().equals(g10.j())) {
                        return null;
                    }
                    if (g4.k() != g10.k()) {
                        g4.u(Math.max(g4.k(), g10.k()));
                    }
                    if (!g4.m().equals(g10.m()) || g4.l() != g10.l() || g4.n() != g10.n() || g4.o() != g10.o()) {
                        return null;
                    }
                }
                if (hVar.j() == null ? hVar2.j() == null : hVar.j().equals(hVar2.j())) {
                    if (hVar.l() == null ? hVar2.l() == null : hVar.l().equals(hVar2.l())) {
                        return hVar;
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        f36247f.c("I can only merge ESDescriptors");
        return null;
    }

    private com.coremedia.iso.boxes.sampleentry.f h(com.coremedia.iso.boxes.sampleentry.f fVar, com.coremedia.iso.boxes.sampleentry.f fVar2) {
        if (fVar.getType().equals(fVar2.getType())) {
            if ((fVar instanceof com.coremedia.iso.boxes.sampleentry.h) && (fVar2 instanceof com.coremedia.iso.boxes.sampleentry.h)) {
                return k((com.coremedia.iso.boxes.sampleentry.h) fVar, (com.coremedia.iso.boxes.sampleentry.h) fVar2);
            }
            if ((fVar instanceof com.coremedia.iso.boxes.sampleentry.c) && (fVar2 instanceof com.coremedia.iso.boxes.sampleentry.c)) {
                return b((com.coremedia.iso.boxes.sampleentry.c) fVar, (com.coremedia.iso.boxes.sampleentry.c) fVar2);
            }
            return null;
        }
        return null;
    }

    private s0 i(s0 s0Var, s0 s0Var2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            s0Var.a(Channels.newChannel(byteArrayOutputStream));
            s0Var2.a(Channels.newChannel(byteArrayOutputStream2));
            if (!Arrays.equals(byteArrayOutputStream2.toByteArray(), byteArrayOutputStream.toByteArray())) {
                com.coremedia.iso.boxes.sampleentry.f h4 = h((com.coremedia.iso.boxes.sampleentry.f) s0Var.h(com.coremedia.iso.boxes.sampleentry.f.class).get(0), (com.coremedia.iso.boxes.sampleentry.f) s0Var2.h(com.coremedia.iso.boxes.sampleentry.f.class).get(0));
                if (h4 == null) {
                    throw new IOException("Cannot merge " + s0Var.h(com.coremedia.iso.boxes.sampleentry.f.class).get(0) + " and " + s0Var2.h(com.coremedia.iso.boxes.sampleentry.f.class).get(0));
                }
                s0Var.b(Collections.singletonList(h4));
            }
            return s0Var;
        } catch (IOException e4) {
            f36247f.c(e4.getMessage());
            return null;
        }
    }

    private com.coremedia.iso.boxes.sampleentry.h k(com.coremedia.iso.boxes.sampleentry.h hVar, com.coremedia.iso.boxes.sampleentry.h hVar2) {
        com.coremedia.iso.boxes.sampleentry.h hVar3 = new com.coremedia.iso.boxes.sampleentry.h();
        if (hVar.W() == hVar2.W()) {
            hVar3.n0(hVar.W());
            hVar3.d0(hVar.J());
            if (hVar.K() == hVar2.K()) {
                hVar3.g0(hVar.K());
                if (hVar.L() == hVar2.L()) {
                    hVar3.h0(hVar.L());
                    if (hVar.M() == hVar2.M()) {
                        hVar3.l0(hVar.M());
                        if (hVar.b0() == hVar2.b0()) {
                            hVar3.q0(hVar.b0());
                            if (hVar.X() == hVar2.X()) {
                                hVar3.p0(hVar.X());
                                if (hVar.W() == hVar2.W()) {
                                    hVar3.n0(hVar.W());
                                    if (hVar.y().size() == hVar2.y().size()) {
                                        Iterator<com.coremedia.iso.boxes.d> it = hVar2.y().iterator();
                                        for (com.coremedia.iso.boxes.d dVar : hVar.y()) {
                                            com.coremedia.iso.boxes.d next = it.next();
                                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                            try {
                                                dVar.a(Channels.newChannel(byteArrayOutputStream));
                                                next.a(Channels.newChannel(byteArrayOutputStream2));
                                                if (Arrays.equals(byteArrayOutputStream.toByteArray(), byteArrayOutputStream2.toByteArray())) {
                                                    hVar3.D(dVar);
                                                } else if ((dVar instanceof com.googlecode.mp4parser.boxes.mp4.a) && (next instanceof com.googlecode.mp4parser.boxes.mp4.a)) {
                                                    com.googlecode.mp4parser.boxes.mp4.a aVar = (com.googlecode.mp4parser.boxes.mp4.a) dVar;
                                                    aVar.z(d(aVar.w(), ((com.googlecode.mp4parser.boxes.mp4.a) next).w()));
                                                    hVar3.D(dVar);
                                                }
                                            } catch (IOException e4) {
                                                f36247f.d(e4.getMessage());
                                                return null;
                                            }
                                        }
                                    }
                                    return hVar3;
                                }
                                f36247f.c("horizontal resolution differs");
                                return null;
                            }
                            f36247f.c("vert resolution differs");
                            return null;
                        }
                        f36247f.c("width differs");
                        return null;
                    }
                    f36247f.c("height differs");
                    return null;
                }
                f36247f.c("frame count differs");
                return null;
            }
            f36247f.c("Depth differs");
            return null;
        }
        f36247f.c("Horizontal Resolution differs");
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36248d[0].B();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        ArrayList arrayList = new ArrayList();
        for (com.googlecode.mp4parser.authoring.h hVar : this.f36248d) {
            arrayList.addAll(hVar.F());
        }
        return arrayList;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36248d[0].a0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] c0() {
        long[] jArr;
        int i4 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar : this.f36248d) {
            i4 += hVar.c0().length;
        }
        jArr = new long[i4];
        int i10 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar2 : this.f36248d) {
            long[] c02 = hVar2.c0();
            int length = c02.length;
            int i11 = 0;
            while (i11 < length) {
                jArr[i10] = c02[i11];
                i11++;
                i10++;
            }
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        for (com.googlecode.mp4parser.authoring.h hVar : this.f36248d) {
            hVar.close();
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36248d[0].getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        if (this.f36248d[0].m0() == null || this.f36248d[0].m0().isEmpty()) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (com.googlecode.mp4parser.authoring.h hVar : this.f36248d) {
            linkedList.addAll(hVar.m0());
        }
        return linkedList;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        if (this.f36248d[0].o() == null || this.f36248d[0].o().isEmpty()) {
            return null;
        }
        LinkedList<int[]> linkedList = new LinkedList();
        for (com.googlecode.mp4parser.authoring.h hVar : this.f36248d) {
            linkedList.add(com.coremedia.iso.boxes.i.v(hVar.o()));
        }
        LinkedList linkedList2 = new LinkedList();
        for (int[] iArr : linkedList) {
            for (int i4 : iArr) {
                if (!linkedList2.isEmpty() && ((i.a) linkedList2.getLast()).b() == i4) {
                    i.a aVar = (i.a) linkedList2.getLast();
                    aVar.c(aVar.a() + 1);
                } else {
                    linkedList2.add(new i.a(1, i4));
                }
            }
        }
        return linkedList2;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36249e;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        if (this.f36248d[0].z() == null || this.f36248d[0].z().length <= 0) {
            return null;
        }
        int i4 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar : this.f36248d) {
            i4 += hVar.z().length;
        }
        long[] jArr = new long[i4];
        long j4 = 0;
        int i10 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar2 : this.f36248d) {
            long[] z9 = hVar2.z();
            int length = z9.length;
            int i11 = 0;
            while (i11 < length) {
                jArr[i10] = z9[i11] + j4;
                i11++;
                i10++;
            }
            j4 += hVar2.F().size();
        }
        return jArr;
    }
}
