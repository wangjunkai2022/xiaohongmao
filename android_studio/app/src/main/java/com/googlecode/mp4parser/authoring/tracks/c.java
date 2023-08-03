package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AbstractH26XTrack.java */
/* loaded from: classes2.dex */
public abstract class c extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: j  reason: collision with root package name */
    static int f36232j = 67107840;

    /* renamed from: d  reason: collision with root package name */
    private com.googlecode.mp4parser.e f36233d;

    /* renamed from: e  reason: collision with root package name */
    protected long[] f36234e;

    /* renamed from: f  reason: collision with root package name */
    protected List<i.a> f36235f;

    /* renamed from: g  reason: collision with root package name */
    protected List<r0.a> f36236g;

    /* renamed from: h  reason: collision with root package name */
    protected List<Integer> f36237h;

    /* renamed from: i  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f36238i;

    /* compiled from: AbstractH26XTrack.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f36239a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f36240b = 0;

        /* renamed from: c  reason: collision with root package name */
        com.googlecode.mp4parser.e f36241c;

        /* renamed from: d  reason: collision with root package name */
        ByteBuffer f36242d;

        /* renamed from: e  reason: collision with root package name */
        long f36243e;

        public a(com.googlecode.mp4parser.e eVar) throws IOException {
            this.f36241c = eVar;
            c();
        }

        public void a() {
            this.f36240b++;
        }

        public void b() {
            int i4 = this.f36240b + 3;
            this.f36240b = i4;
            this.f36243e = this.f36239a + i4;
        }

        public void c() throws IOException {
            com.googlecode.mp4parser.e eVar = this.f36241c;
            this.f36242d = eVar.e0(this.f36239a, Math.min(eVar.size() - this.f36239a, c.f36232j));
        }

        public ByteBuffer d() {
            long j4 = this.f36243e;
            long j10 = this.f36239a;
            if (j4 >= j10) {
                this.f36242d.position((int) (j4 - j10));
                ByteBuffer slice = this.f36242d.slice();
                slice.limit((int) (this.f36240b - (this.f36243e - this.f36239a)));
                return slice;
            }
            throw new RuntimeException("damn! NAL exceeds buffer");
        }

        public boolean e() throws IOException {
            int limit = this.f36242d.limit();
            int i4 = this.f36240b;
            if (limit - i4 >= 3) {
                return this.f36242d.get(i4) == 0 && this.f36242d.get(this.f36240b + 1) == 0 && (this.f36242d.get(this.f36240b + 2) == 0 || this.f36242d.get(this.f36240b + 2) == 1);
            } else if (this.f36239a + i4 + 3 > this.f36241c.size()) {
                return this.f36239a + ((long) this.f36240b) == this.f36241c.size();
            } else {
                this.f36239a = this.f36243e;
                this.f36240b = 0;
                c();
                return e();
            }
        }

        public boolean f() throws IOException {
            int limit = this.f36242d.limit();
            int i4 = this.f36240b;
            if (limit - i4 >= 3) {
                return this.f36242d.get(i4) == 0 && this.f36242d.get(this.f36240b + 1) == 0 && this.f36242d.get(this.f36240b + 2) == 1;
            } else if (this.f36239a + i4 + 3 < this.f36241c.size()) {
                return false;
            } else {
                throw new EOFException();
            }
        }
    }

    public c(com.googlecode.mp4parser.e eVar) {
        super(eVar.toString());
        this.f36235f = new ArrayList();
        this.f36236g = new ArrayList();
        this.f36237h = new ArrayList();
        this.f36238i = new com.googlecode.mp4parser.authoring.i();
        this.f36233d = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream a(InputStream inputStream) {
        return new k(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] h(ByteBuffer byteBuffer) {
        ByteBuffer duplicate = byteBuffer.duplicate();
        int remaining = duplicate.remaining();
        byte[] bArr = new byte[remaining];
        duplicate.get(bArr, 0, remaining);
        return bArr;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36238i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.googlecode.mp4parser.authoring.f b(List<? extends ByteBuffer> list) {
        byte[] bArr = new byte[list.size() * 4];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        for (ByteBuffer byteBuffer : list) {
            wrap.putInt(byteBuffer.remaining());
        }
        ByteBuffer[] byteBufferArr = new ByteBuffer[list.size() * 2];
        for (int i4 = 0; i4 < list.size(); i4++) {
            int i10 = i4 * 2;
            byteBufferArr[i10] = ByteBuffer.wrap(bArr, i4 * 4, 4);
            byteBufferArr[i10 + 1] = list.get(i4);
        }
        return new com.googlecode.mp4parser.authoring.g(byteBufferArr);
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36234e;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36233d.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuffer d(a aVar) throws IOException {
        while (!aVar.f()) {
            try {
                aVar.a();
            } catch (EOFException unused) {
                return null;
            }
        }
        aVar.b();
        while (!aVar.e()) {
            aVar.a();
        }
        return aVar.d();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return this.f36236g;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return this.f36235f;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        long[] jArr = new long[this.f36237h.size()];
        for (int i4 = 0; i4 < this.f36237h.size(); i4++) {
            jArr[i4] = this.f36237h.get(i4).intValue();
        }
        return jArr;
    }
}
