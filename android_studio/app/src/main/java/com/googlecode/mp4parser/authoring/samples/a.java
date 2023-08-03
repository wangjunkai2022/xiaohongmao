package com.googlecode.mp4parser.authoring.samples;

import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.h0;
import com.coremedia.iso.boxes.j;
import com.coremedia.iso.boxes.t0;
import com.coremedia.iso.boxes.v0;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.util.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DefaultMp4SampleList.java */
/* loaded from: classes2.dex */
public class a extends AbstractList<f> {

    /* renamed from: j  reason: collision with root package name */
    private static final long f36063j = 268435456;

    /* renamed from: a  reason: collision with root package name */
    j f36064a;

    /* renamed from: b  reason: collision with root package name */
    f1 f36065b;

    /* renamed from: c  reason: collision with root package name */
    ByteBuffer[][] f36066c;

    /* renamed from: d  reason: collision with root package name */
    int[] f36067d;

    /* renamed from: e  reason: collision with root package name */
    long[] f36068e;

    /* renamed from: f  reason: collision with root package name */
    long[] f36069f;

    /* renamed from: g  reason: collision with root package name */
    long[][] f36070g;

    /* renamed from: h  reason: collision with root package name */
    t0 f36071h;

    /* renamed from: i  reason: collision with root package name */
    int f36072i = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultMp4SampleList.java */
    /* renamed from: com.googlecode.mp4parser.authoring.samples.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0281a implements f {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ long f36074b;

        /* renamed from: c  reason: collision with root package name */
        private final /* synthetic */ ByteBuffer f36075c;

        /* renamed from: d  reason: collision with root package name */
        private final /* synthetic */ long f36076d;

        C0281a(long j4, ByteBuffer byteBuffer, long j10) {
            this.f36074b = j4;
            this.f36075c = byteBuffer;
            this.f36076d = j10;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            return (ByteBuffer) ((ByteBuffer) this.f36075c.position(c.a(this.f36076d))).slice().limit(c.a(this.f36074b));
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write(a());
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f36074b;
        }

        public String toString() {
            return "DefaultMp4Sample(size:" + this.f36074b + ")";
        }
    }

    public a(long j4, j jVar) {
        int i4;
        this.f36065b = null;
        this.f36066c = null;
        int i10 = 0;
        this.f36064a = jVar;
        for (f1 f1Var : ((h0) jVar.h(h0.class).get(0)).h(f1.class)) {
            if (f1Var.L().C() == j4) {
                this.f36065b = f1Var;
            }
        }
        f1 f1Var2 = this.f36065b;
        if (f1Var2 != null) {
            long[] v9 = f1Var2.K().J().v();
            this.f36068e = v9;
            this.f36069f = new long[v9.length];
            this.f36066c = new ByteBuffer[v9.length];
            this.f36070g = new long[v9.length];
            this.f36071h = this.f36065b.K().M();
            List<v0.a> w9 = this.f36065b.K().W().w();
            v0.a[] aVarArr = (v0.a[]) w9.toArray(new v0.a[w9.size()]);
            v0.a aVar = aVarArr[0];
            long a10 = aVar.a();
            int a11 = c.a(aVar.c());
            int size = size();
            int i11 = 0;
            int i12 = 1;
            int i13 = 0;
            int i14 = 1;
            do {
                i11++;
                if (i11 == a10) {
                    if (aVarArr.length > i12) {
                        v0.a aVar2 = aVarArr[i12];
                        i13 = a11;
                        a11 = c.a(aVar2.c());
                        i12++;
                        a10 = aVar2.a();
                    } else {
                        i13 = a11;
                        a11 = -1;
                        a10 = Long.MAX_VALUE;
                    }
                }
                this.f36070g[i11 - 1] = new long[i13];
                i14 += i13;
            } while (i14 <= size);
            this.f36067d = new int[i11 + 1];
            v0.a aVar3 = aVarArr[0];
            long a12 = aVar3.a();
            int a13 = c.a(aVar3.c());
            int i15 = 0;
            int i16 = 1;
            int i17 = 1;
            int i18 = 0;
            while (true) {
                i4 = i15 + 1;
                this.f36067d[i15] = i16;
                if (i4 == a12) {
                    if (aVarArr.length > i17) {
                        v0.a aVar4 = aVarArr[i17];
                        i18 = a13;
                        i17++;
                        a13 = c.a(aVar4.c());
                        a12 = aVar4.a();
                    } else {
                        i18 = a13;
                        a13 = -1;
                        a12 = Long.MAX_VALUE;
                    }
                }
                i16 += i18;
                if (i16 > size) {
                    break;
                }
                i15 = i4;
            }
            this.f36067d[i4] = Integer.MAX_VALUE;
            long j10 = 0;
            for (int i19 = 1; i19 <= this.f36071h.v(); i19++) {
                while (i19 == this.f36067d[i10]) {
                    i10++;
                    j10 = 0;
                }
                long[] jArr = this.f36069f;
                int i20 = i10 - 1;
                int i21 = i19 - 1;
                jArr[i20] = jArr[i20] + this.f36071h.x(i21);
                this.f36070g[i20][i19 - this.f36067d[i20]] = j10;
                j10 += this.f36071h.x(i21);
            }
            return;
        }
        throw new RuntimeException("This MP4 does not contain track " + j4);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public f get(int i4) {
        ByteBuffer byteBuffer;
        long j4;
        if (i4 < this.f36071h.v()) {
            int b10 = b(i4);
            int i10 = this.f36067d[b10] - 1;
            long j10 = b10;
            long j11 = this.f36068e[c.a(j10)];
            long[] jArr = this.f36070g[c.a(j10)];
            long j12 = jArr[i4 - i10];
            ByteBuffer[] byteBufferArr = this.f36066c[c.a(j10)];
            if (byteBufferArr == null) {
                ArrayList arrayList = new ArrayList();
                long j13 = 0;
                int i11 = 0;
                while (i11 < jArr.length) {
                    try {
                        long j14 = j10;
                        if ((jArr[i11] + this.f36071h.x(i11 + i10)) - j13 > f36063j) {
                            j4 = j12;
                            arrayList.add(this.f36064a.s(j11 + j13, jArr[i11] - j13));
                            j13 = jArr[i11];
                        } else {
                            j4 = j12;
                        }
                        i11++;
                        j12 = j4;
                        j10 = j14;
                    } catch (IOException e4) {
                        throw new IndexOutOfBoundsException(e4.getMessage());
                    }
                }
                arrayList.add(this.f36064a.s(j11 + j13, (-j13) + jArr[jArr.length - 1] + this.f36071h.x((i10 + jArr.length) - 1)));
                byteBufferArr = (ByteBuffer[]) arrayList.toArray(new ByteBuffer[arrayList.size()]);
                this.f36066c[c.a(j10)] = byteBufferArr;
            }
            int length = byteBufferArr.length;
            long j15 = j12;
            int i12 = 0;
            while (true) {
                if (i12 >= length) {
                    byteBuffer = null;
                    break;
                }
                ByteBuffer byteBuffer2 = byteBufferArr[i12];
                if (j15 < byteBuffer2.limit()) {
                    byteBuffer = byteBuffer2;
                    break;
                }
                j15 -= byteBuffer2.limit();
                i12++;
            }
            return new C0281a(this.f36071h.x(i4), byteBuffer, j15);
        }
        throw new IndexOutOfBoundsException();
    }

    synchronized int b(int i4) {
        int i10 = i4 + 1;
        int[] iArr = this.f36067d;
        int i11 = this.f36072i;
        if (i10 >= iArr[i11] && i10 < iArr[i11 + 1]) {
            return i11;
        }
        if (i10 < iArr[i11]) {
            this.f36072i = 0;
            while (true) {
                int[] iArr2 = this.f36067d;
                int i12 = this.f36072i;
                if (iArr2[i12 + 1] > i10) {
                    return i12;
                }
                this.f36072i = i12 + 1;
            }
        } else {
            this.f36072i = i11 + 1;
            while (true) {
                int[] iArr3 = this.f36067d;
                int i13 = this.f36072i;
                if (iArr3[i13 + 1] > i10) {
                    return i13;
                }
                this.f36072i = i13 + 1;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return c.a(this.f36065b.K().M().v());
    }
}
