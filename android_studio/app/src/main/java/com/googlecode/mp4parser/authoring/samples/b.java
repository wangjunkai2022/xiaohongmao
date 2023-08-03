package com.googlecode.mp4parser.authoring.samples;

import com.coremedia.iso.boxes.d;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.fragment.i;
import com.coremedia.iso.boxes.fragment.k;
import com.coremedia.iso.boxes.fragment.l;
import com.coremedia.iso.boxes.fragment.n;
import com.coremedia.iso.boxes.j;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.util.c;
import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: FragmentedMp4SampleList.java */
/* loaded from: classes2.dex */
public class b extends AbstractList<f> {

    /* renamed from: a  reason: collision with root package name */
    j f36077a;

    /* renamed from: b  reason: collision with root package name */
    com.coremedia.iso.f[] f36078b;

    /* renamed from: c  reason: collision with root package name */
    f1 f36079c;

    /* renamed from: d  reason: collision with root package name */
    i f36080d;

    /* renamed from: e  reason: collision with root package name */
    private SoftReference<f>[] f36081e;

    /* renamed from: f  reason: collision with root package name */
    private List<k> f36082f;

    /* renamed from: h  reason: collision with root package name */
    private int[] f36084h;

    /* renamed from: g  reason: collision with root package name */
    private Map<n, SoftReference<ByteBuffer>> f36083g = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    private int f36085i = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentedMp4SampleList.java */
    /* loaded from: classes2.dex */
    public class a implements f {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ long f36087b;

        /* renamed from: c  reason: collision with root package name */
        private final /* synthetic */ ByteBuffer f36088c;

        /* renamed from: d  reason: collision with root package name */
        private final /* synthetic */ int f36089d;

        a(long j4, ByteBuffer byteBuffer, int i4) {
            this.f36087b = j4;
            this.f36088c = byteBuffer;
            this.f36089d = i4;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            return (ByteBuffer) ((ByteBuffer) this.f36088c.position(this.f36089d)).slice().limit(c.a(this.f36087b));
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write(a());
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f36087b;
        }
    }

    public b(long j4, j jVar, com.coremedia.iso.f... fVarArr) {
        this.f36079c = null;
        this.f36080d = null;
        this.f36077a = jVar;
        this.f36078b = fVarArr;
        for (f1 f1Var : m.h(jVar, "moov[0]/trak")) {
            if (f1Var.L().C() == j4) {
                this.f36079c = f1Var;
            }
        }
        if (this.f36079c != null) {
            for (i iVar : m.h(jVar, "moov[0]/mvex[0]/trex")) {
                if (iVar.A() == this.f36079c.L().C()) {
                    this.f36080d = iVar;
                }
            }
            this.f36081e = (SoftReference[]) Array.newInstance(SoftReference.class, size());
            c();
            return;
        }
        throw new RuntimeException("This MP4 does not contain track " + j4);
    }

    private int b(k kVar) {
        List<d> y9 = kVar.y();
        int i4 = 0;
        for (int i10 = 0; i10 < y9.size(); i10++) {
            d dVar = y9.get(i10);
            if (dVar instanceof n) {
                i4 += c.a(((n) dVar).z());
            }
        }
        return i4;
    }

    private List<k> c() {
        List<k> list = this.f36082f;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (com.coremedia.iso.boxes.fragment.c cVar : this.f36077a.h(com.coremedia.iso.boxes.fragment.c.class)) {
            for (k kVar : cVar.h(k.class)) {
                if (kVar.J().A() == this.f36079c.L().C()) {
                    arrayList.add(kVar);
                }
            }
        }
        com.coremedia.iso.f[] fVarArr = this.f36078b;
        if (fVarArr != null) {
            for (com.coremedia.iso.f fVar : fVarArr) {
                for (com.coremedia.iso.boxes.fragment.c cVar2 : fVar.h(com.coremedia.iso.boxes.fragment.c.class)) {
                    for (k kVar2 : cVar2.h(k.class)) {
                        if (kVar2.J().A() == this.f36079c.L().C()) {
                            arrayList.add(kVar2);
                        }
                    }
                }
            }
        }
        this.f36082f = arrayList;
        this.f36084h = new int[arrayList.size()];
        int i4 = 1;
        for (int i10 = 0; i10 < this.f36082f.size(); i10++) {
            this.f36084h[i10] = i4;
            i4 += b(this.f36082f.get(i10));
        }
        return arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public f get(int i4) {
        long j4;
        ByteBuffer byteBuffer;
        long z9;
        f fVar;
        SoftReference<f>[] softReferenceArr = this.f36081e;
        if (softReferenceArr[i4] == null || (fVar = softReferenceArr[i4].get()) == null) {
            int i10 = i4 + 1;
            int length = this.f36084h.length;
            while (true) {
                length--;
                if (i10 - this.f36084h[length] >= 0) {
                    break;
                }
            }
            k kVar = this.f36082f.get(length);
            int i11 = i10 - this.f36084h[length];
            com.coremedia.iso.boxes.fragment.c cVar = (com.coremedia.iso.boxes.fragment.c) kVar.getParent();
            int i12 = 0;
            for (d dVar : kVar.y()) {
                if (dVar instanceof n) {
                    n nVar = (n) dVar;
                    int i13 = i11 - i12;
                    if (nVar.w().size() < i13) {
                        i12 += nVar.w().size();
                    } else {
                        List<n.a> w9 = nVar.w();
                        l J = kVar.J();
                        boolean F = nVar.F();
                        boolean E = J.E();
                        long j10 = 0;
                        if (F) {
                            j4 = 0;
                        } else {
                            if (E) {
                                z9 = J.y();
                            } else {
                                i iVar = this.f36080d;
                                if (iVar != null) {
                                    z9 = iVar.z();
                                } else {
                                    throw new RuntimeException("File doesn't contain trex box but track fragments aren't fully self contained. Cannot determine sample size.");
                                }
                            }
                            j4 = z9;
                        }
                        SoftReference<ByteBuffer> softReference = this.f36083g.get(nVar);
                        ByteBuffer byteBuffer2 = softReference != null ? softReference.get() : null;
                        if (byteBuffer2 == null) {
                            j jVar = cVar;
                            if (J.B()) {
                                j10 = 0 + J.v();
                                jVar = cVar.getParent();
                            }
                            if (nVar.A()) {
                                j10 += nVar.v();
                            }
                            int i14 = 0;
                            for (n.a aVar : w9) {
                                i14 = F ? (int) (i14 + aVar.l()) : (int) (i14 + j4);
                            }
                            try {
                                ByteBuffer s9 = jVar.s(j10, i14);
                                this.f36083g.put(nVar, new SoftReference<>(s9));
                                byteBuffer = s9;
                            } catch (IOException e4) {
                                throw new RuntimeException(e4);
                            }
                        } else {
                            byteBuffer = byteBuffer2;
                        }
                        int i15 = 0;
                        for (int i16 = 0; i16 < i13; i16++) {
                            i15 = (int) (F ? i15 + w9.get(i16).l() : i15 + j4);
                        }
                        a aVar2 = new a(F ? w9.get(i13).l() : j4, byteBuffer, i15);
                        this.f36081e[i4] = new SoftReference<>(aVar2);
                        return aVar2;
                    }
                }
            }
            throw new RuntimeException("Couldn't find sample in the traf I was looking");
        }
        return fVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        int i4 = this.f36085i;
        if (i4 != -1) {
            return i4;
        }
        int i10 = 0;
        for (com.coremedia.iso.boxes.fragment.c cVar : this.f36077a.h(com.coremedia.iso.boxes.fragment.c.class)) {
            for (k kVar : cVar.h(k.class)) {
                if (kVar.J().A() == this.f36079c.L().C()) {
                    i10 = (int) (i10 + ((n) kVar.h(n.class).get(0)).z());
                }
            }
        }
        for (com.coremedia.iso.f fVar : this.f36078b) {
            for (com.coremedia.iso.boxes.fragment.c cVar2 : fVar.h(com.coremedia.iso.boxes.fragment.c.class)) {
                for (k kVar2 : cVar2.h(k.class)) {
                    if (kVar2.J().A() == this.f36079c.L().C()) {
                        i10 = (int) (i10 + ((n) kVar2.h(n.class).get(0)).z());
                    }
                }
            }
        }
        this.f36085i = i10;
        return i10;
    }
}
