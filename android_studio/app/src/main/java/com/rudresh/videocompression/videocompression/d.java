package com.rudresh.videocompression.videocompression;

import android.media.MediaCodec;
import android.media.MediaFormat;
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
import com.coremedia.iso.boxes.n;
import com.coremedia.iso.boxes.o;
import com.coremedia.iso.boxes.s;
import com.coremedia.iso.boxes.t0;
import com.coremedia.iso.boxes.u0;
import com.coremedia.iso.boxes.v0;
import com.coremedia.iso.boxes.x;
import com.coremedia.iso.boxes.z0;
import com.ksyun.media.player.KSYMediaMeta;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: MP4Builder.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private b f55249a = null;

    /* renamed from: b  reason: collision with root package name */
    private f f55250b = null;

    /* renamed from: c  reason: collision with root package name */
    private FileOutputStream f55251c = null;

    /* renamed from: d  reason: collision with root package name */
    private FileChannel f55252d = null;

    /* renamed from: e  reason: collision with root package name */
    private long f55253e = 0;

    /* renamed from: f  reason: collision with root package name */
    private long f55254f = 0;

    /* renamed from: g  reason: collision with root package name */
    private boolean f55255g = true;

    /* renamed from: h  reason: collision with root package name */
    private HashMap<k, long[]> f55256h = new HashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private ByteBuffer f55257i = null;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55258j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f55259k;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MP4Builder.java */
    /* loaded from: classes3.dex */
    public static class b implements com.coremedia.iso.boxes.d {

        /* renamed from: a  reason: collision with root package name */
        private com.coremedia.iso.boxes.j f55260a;

        /* renamed from: b  reason: collision with root package name */
        private long f55261b;

        /* renamed from: c  reason: collision with root package name */
        private long f55262c;

        private b() {
            this.f55261b = KSYMediaMeta.AV_CH_STEREO_RIGHT;
            this.f55262c = 0L;
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
        }

        public long b() {
            return this.f55261b;
        }

        public void e(long j4) {
            this.f55261b = j4;
        }

        public void f(long j4) {
            this.f55262c = j4;
        }

        @Override // com.coremedia.iso.boxes.d
        public com.coremedia.iso.boxes.j getParent() {
            return this.f55260a;
        }

        @Override // com.coremedia.iso.boxes.d
        public long getSize() {
            return this.f55261b + 16;
        }

        @Override // com.coremedia.iso.boxes.d
        public String getType() {
            return com.coremedia.iso.boxes.mdat.a.f10244g;
        }

        @Override // com.coremedia.iso.boxes.d
        public long k() {
            return this.f55262c;
        }

        @Override // com.coremedia.iso.boxes.d
        public void p(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j4, com.coremedia.iso.c cVar) {
        }

        @Override // com.coremedia.iso.boxes.d
        public void r(com.coremedia.iso.boxes.j jVar) {
            this.f55260a = jVar;
        }
    }

    private void o() throws Exception {
        long position = this.f55252d.position();
        this.f55252d.position(this.f55249a.k());
        this.f55249a.a(this.f55252d);
        this.f55252d.position(position);
        this.f55249a.f(0L);
        this.f55249a.e(0L);
        this.f55251c.flush();
        this.f55251c.getFD().sync();
    }

    public static long p(long j4, long j10) {
        return j10 == 0 ? j4 : p(j10, j4 % j10);
    }

    public int a(MediaFormat mediaFormat, boolean z9) {
        return this.f55250b.b(mediaFormat, z9);
    }

    protected void b(k kVar, u0 u0Var) {
        int[] i4 = kVar.i();
        if (i4 == null) {
            return;
        }
        i.a aVar = null;
        ArrayList arrayList = new ArrayList();
        for (int i10 : i4) {
            if (aVar != null && aVar.b() == i10) {
                aVar.c(aVar.a() + 1);
            } else {
                aVar = new i.a(1, i10);
                arrayList.add(aVar);
            }
        }
        com.coremedia.iso.boxes.i iVar = new com.coremedia.iso.boxes.i();
        iVar.x(arrayList);
        u0Var.D(iVar);
    }

    protected s c() {
        LinkedList linkedList = new LinkedList();
        linkedList.add("isom");
        linkedList.add("iso2");
        linkedList.add(com.coremedia.iso.boxes.sampleentry.h.f10369y);
        linkedList.add("mp41");
        return new s("isom", 512L, linkedList);
    }

    public d d(f fVar, boolean z9) throws Exception {
        this.f55250b = fVar;
        File c10 = fVar.c();
        FileOutputStream a10 = l.b.a(new FileOutputStream(c10), c10);
        this.f55251c = a10;
        this.f55252d = a10.getChannel();
        s c11 = c();
        c11.a(this.f55252d);
        long size = this.f55253e + c11.getSize();
        this.f55253e = size;
        this.f55254f += size;
        this.f55258j = z9;
        this.f55249a = new b();
        this.f55257i = ByteBuffer.allocateDirect(4);
        return this;
    }

    protected h0 e(f fVar) {
        h0 h0Var = new h0();
        i0 i0Var = new i0();
        i0Var.J(new Date());
        i0Var.N(new Date());
        i0Var.M(com.googlecode.mp4parser.util.l.f36990j);
        long r9 = r(fVar);
        Iterator<k> it = fVar.g().iterator();
        long j4 = 0;
        while (it.hasNext()) {
            k next = it.next();
            next.t();
            long d4 = (next.d() * r9) / next.n();
            if (d4 > j4) {
                j4 = d4;
            }
        }
        i0Var.L(j4);
        i0Var.V(r9);
        i0Var.O(fVar.g().size() + 1);
        h0Var.D(i0Var);
        Iterator<k> it2 = fVar.g().iterator();
        while (it2.hasNext()) {
            h0Var.D(m(it2.next(), fVar));
        }
        return h0Var;
    }

    protected com.coremedia.iso.boxes.d f(k kVar) {
        u0 u0Var = new u0();
        i(kVar, u0Var);
        l(kVar, u0Var);
        b(kVar, u0Var);
        j(kVar, u0Var);
        h(kVar, u0Var);
        k(kVar, u0Var);
        g(kVar, u0Var);
        return u0Var;
    }

    protected void g(k kVar, u0 u0Var) {
        ArrayList arrayList = new ArrayList();
        Iterator<h> it = kVar.l().iterator();
        long j4 = -1;
        while (it.hasNext()) {
            h next = it.next();
            long a10 = next.a();
            if (j4 != -1 && j4 != a10) {
                j4 = -1;
            }
            if (j4 == -1) {
                arrayList.add(Long.valueOf(a10));
            }
            j4 = next.b() + a10;
        }
        long[] jArr = new long[arrayList.size()];
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            jArr[i4] = ((Long) arrayList.get(i4)).longValue();
        }
        z0 z0Var = new z0();
        z0Var.w(jArr);
        u0Var.D(z0Var);
    }

    protected void h(k kVar, u0 u0Var) {
        v0 v0Var = new v0();
        v0Var.x(new LinkedList());
        int size = kVar.l().size();
        int i4 = -1;
        int i10 = 0;
        int i11 = 0;
        int i12 = 1;
        while (i10 < size) {
            h hVar = kVar.l().get(i10);
            i11++;
            if (i10 == size + (-1) || hVar.a() + hVar.b() != kVar.l().get(i10 + 1).a()) {
                if (i4 != i11) {
                    v0Var.w().add(new v0.a(i12, i11, 1L));
                    i4 = i11;
                }
                i12++;
                i11 = 0;
            }
            i10++;
        }
        u0Var.D(v0Var);
    }

    protected void i(k kVar, u0 u0Var) {
        u0Var.D(kVar.j());
    }

    protected void j(k kVar, u0 u0Var) {
        long[] m9 = kVar.m();
        if (m9 == null || m9.length <= 0) {
            return;
        }
        c1 c1Var = new c1();
        c1Var.w(m9);
        u0Var.D(c1Var);
    }

    protected void k(k kVar, u0 u0Var) {
        t0 t0Var = new t0();
        t0Var.A(this.f55256h.get(kVar));
        u0Var.D(t0Var);
    }

    protected void l(k kVar, u0 u0Var) {
        long[] k10;
        ArrayList arrayList = new ArrayList();
        d1.a aVar = null;
        for (long j4 : kVar.k()) {
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

    protected f1 m(k kVar, f fVar) {
        f1 f1Var = new f1();
        g1 g1Var = new g1();
        g1Var.M(true);
        g1Var.O(true);
        g1Var.Q(true);
        if (kVar.r()) {
            g1Var.S(com.googlecode.mp4parser.util.l.f36990j);
        } else {
            g1Var.S(fVar.f());
        }
        g1Var.J(0);
        g1Var.K(kVar.c());
        g1Var.L((kVar.d() * r(fVar)) / kVar.n());
        g1Var.N(kVar.f());
        g1Var.W(kVar.q());
        g1Var.R(0);
        g1Var.T(new Date());
        g1Var.U(kVar.o() + 1);
        g1Var.V(kVar.p());
        f1Var.D(g1Var);
        d0 d0Var = new d0();
        f1Var.D(d0Var);
        e0 e0Var = new e0();
        e0Var.A(kVar.c());
        e0Var.B(kVar.d());
        e0Var.E(kVar.n());
        e0Var.C("eng");
        d0Var.D(e0Var);
        x xVar = new x();
        xVar.z(kVar.r() ? "SoundHandle" : "VideoHandle");
        xVar.y(kVar.e());
        d0Var.D(xVar);
        f0 f0Var = new f0();
        f0Var.D(kVar.h());
        n nVar = new n();
        o oVar = new o();
        nVar.D(oVar);
        com.coremedia.iso.boxes.l lVar = new com.coremedia.iso.boxes.l();
        lVar.setFlags(1);
        oVar.D(lVar);
        f0Var.D(nVar);
        f0Var.D(f(kVar));
        d0Var.D(f0Var);
        return f1Var;
    }

    public void n() throws Exception {
        if (this.f55249a.b() != 0) {
            o();
        }
        Iterator<k> it = this.f55250b.g().iterator();
        while (it.hasNext()) {
            k next = it.next();
            ArrayList<h> l10 = next.l();
            int size = l10.size();
            long[] jArr = new long[size];
            for (int i4 = 0; i4 < size; i4++) {
                jArr[i4] = l10.get(i4).b();
            }
            this.f55256h.put(next, jArr);
        }
        e(this.f55250b).a(this.f55252d);
        this.f55251c.flush();
        this.f55251c.getFD().sync();
        this.f55252d.close();
        this.f55251c.close();
    }

    public long q(int i4) {
        return this.f55250b.e(i4);
    }

    public long r(f fVar) {
        long n9 = !fVar.g().isEmpty() ? fVar.g().iterator().next().n() : 0L;
        Iterator<k> it = fVar.g().iterator();
        while (it.hasNext()) {
            n9 = p(it.next().n(), n9);
        }
        return n9;
    }

    public long s(int i4, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, boolean z9) throws Exception {
        if (this.f55255g) {
            this.f55249a.e(0L);
            this.f55249a.a(this.f55252d);
            this.f55249a.f(this.f55253e);
            this.f55253e += 16;
            this.f55254f += 16;
            this.f55255g = false;
        }
        b bVar = this.f55249a;
        bVar.e(bVar.b() + bufferInfo.size);
        long j4 = this.f55254f + bufferInfo.size;
        this.f55254f = j4;
        boolean z10 = true;
        if (j4 >= 32768) {
            if (this.f55258j) {
                o();
                this.f55255g = true;
            }
            this.f55254f = 0L;
        } else {
            z10 = false;
        }
        this.f55250b.a(i4, this.f55253e, bufferInfo);
        if (z9) {
            this.f55257i.position(0);
            this.f55257i.putInt(bufferInfo.size - 4);
            this.f55257i.position(0);
            this.f55252d.write(this.f55257i);
            byteBuffer.position(bufferInfo.offset + 4);
        } else {
            byteBuffer.position(bufferInfo.offset);
        }
        byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
        this.f55252d.write(byteBuffer);
        this.f55253e += bufferInfo.size;
        if (z10) {
            this.f55251c.flush();
            this.f55251c.getFD().sync();
            return this.f55252d.position();
        }
        return 0L;
    }
}
