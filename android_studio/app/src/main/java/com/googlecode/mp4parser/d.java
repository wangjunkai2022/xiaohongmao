package com.googlecode.mp4parser;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: BasicContainer.java */
/* loaded from: classes2.dex */
public class d implements com.coremedia.iso.boxes.j, Iterator<com.coremedia.iso.boxes.d>, Closeable {

    /* renamed from: h  reason: collision with root package name */
    private static final com.coremedia.iso.boxes.d f36942h = new a("eof ");

    /* renamed from: i  reason: collision with root package name */
    private static com.googlecode.mp4parser.util.j f36943i = com.googlecode.mp4parser.util.j.a(d.class);

    /* renamed from: a  reason: collision with root package name */
    protected com.coremedia.iso.c f36944a;

    /* renamed from: b  reason: collision with root package name */
    protected e f36945b;

    /* renamed from: c  reason: collision with root package name */
    com.coremedia.iso.boxes.d f36946c = null;

    /* renamed from: d  reason: collision with root package name */
    long f36947d = 0;

    /* renamed from: e  reason: collision with root package name */
    long f36948e = 0;

    /* renamed from: f  reason: collision with root package name */
    long f36949f = 0;

    /* renamed from: g  reason: collision with root package name */
    private List<com.coremedia.iso.boxes.d> f36950g = new ArrayList();

    /* compiled from: BasicContainer.java */
    /* loaded from: classes2.dex */
    class a extends com.googlecode.mp4parser.a {
        a(String str) {
            super(str);
        }

        @Override // com.googlecode.mp4parser.a
        protected void b(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.a
        protected void c(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.a
        protected long e() {
            return 0L;
        }
    }

    @Override // com.coremedia.iso.boxes.j
    public final void A(WritableByteChannel writableByteChannel) throws IOException {
        for (com.coremedia.iso.boxes.d dVar : y()) {
            dVar.a(writableByteChannel);
        }
    }

    public void D(com.coremedia.iso.boxes.d dVar) {
        if (dVar != null) {
            this.f36950g = new ArrayList(y());
            dVar.r(this);
            this.f36950g.add(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long E() {
        long j4 = 0;
        for (int i4 = 0; i4 < y().size(); i4++) {
            j4 += this.f36950g.get(i4).getSize();
        }
        return j4;
    }

    public void G(e eVar, long j4, com.coremedia.iso.c cVar) throws IOException {
        this.f36945b = eVar;
        long C = eVar.C();
        this.f36948e = C;
        this.f36947d = C;
        eVar.S(eVar.C() + j4);
        this.f36949f = eVar.C();
        this.f36944a = cVar;
    }

    @Override // java.util.Iterator
    /* renamed from: H */
    public com.coremedia.iso.boxes.d next() {
        com.coremedia.iso.boxes.d a10;
        com.coremedia.iso.boxes.d dVar = this.f36946c;
        if (dVar != null && dVar != f36942h) {
            this.f36946c = null;
            return dVar;
        }
        e eVar = this.f36945b;
        if (eVar != null && this.f36947d < this.f36949f) {
            try {
                synchronized (eVar) {
                    this.f36945b.S(this.f36947d);
                    a10 = this.f36944a.a(this.f36945b, this);
                    this.f36947d = this.f36945b.C();
                }
                return a10;
            } catch (EOFException unused) {
                throw new NoSuchElementException();
            } catch (IOException unused2) {
                throw new NoSuchElementException();
            }
        }
        this.f36946c = f36942h;
        throw new NoSuchElementException();
    }

    @Override // com.coremedia.iso.boxes.j
    public void b(List<com.coremedia.iso.boxes.d> list) {
        this.f36950g = new ArrayList(list);
        this.f36946c = f36942h;
        this.f36945b = null;
    }

    public void close() throws IOException {
        this.f36945b.close();
    }

    @Override // com.coremedia.iso.boxes.j
    public <T extends com.coremedia.iso.boxes.d> List<T> h(Class<T> cls) {
        List<com.coremedia.iso.boxes.d> y9 = y();
        ArrayList arrayList = null;
        com.coremedia.iso.boxes.d dVar = null;
        for (int i4 = 0; i4 < y9.size(); i4++) {
            com.coremedia.iso.boxes.d dVar2 = y9.get(i4);
            if (cls.isInstance(dVar2)) {
                if (dVar == null) {
                    dVar = dVar2;
                } else {
                    if (arrayList == null) {
                        arrayList = new ArrayList(2);
                        arrayList.add(dVar);
                    }
                    arrayList.add(dVar2);
                }
            }
        }
        if (arrayList != null) {
            return arrayList;
        }
        if (dVar != null) {
            return Collections.singletonList(dVar);
        }
        return Collections.emptyList();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        com.coremedia.iso.boxes.d dVar = this.f36946c;
        if (dVar == f36942h) {
            return false;
        }
        if (dVar != null) {
            return true;
        }
        try {
            this.f36946c = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.f36946c = f36942h;
            return false;
        }
    }

    @Override // com.coremedia.iso.boxes.j
    public <T extends com.coremedia.iso.boxes.d> List<T> q(Class<T> cls, boolean z9) {
        ArrayList arrayList = new ArrayList(2);
        List<com.coremedia.iso.boxes.d> y9 = y();
        for (int i4 = 0; i4 < y9.size(); i4++) {
            com.coremedia.iso.boxes.d dVar = y9.get(i4);
            if (cls.isInstance(dVar)) {
                arrayList.add(dVar);
            }
            if (z9 && (dVar instanceof com.coremedia.iso.boxes.j)) {
                arrayList.addAll(((com.coremedia.iso.boxes.j) dVar).q(cls, z9));
            }
        }
        return arrayList;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // com.coremedia.iso.boxes.j
    public ByteBuffer s(long j4, long j10) throws IOException {
        ByteBuffer e02;
        e eVar = this.f36945b;
        if (eVar != null) {
            synchronized (eVar) {
                e02 = this.f36945b.e0(this.f36948e + j4, j10);
            }
            return e02;
        }
        ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j10));
        long j11 = j4 + j10;
        long j12 = 0;
        for (com.coremedia.iso.boxes.d dVar : this.f36950g) {
            long size = dVar.getSize() + j12;
            if (size > j4 && j12 < j11) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                WritableByteChannel newChannel = Channels.newChannel(byteArrayOutputStream);
                dVar.a(newChannel);
                newChannel.close();
                int i4 = (j12 > j4 ? 1 : (j12 == j4 ? 0 : -1));
                if (i4 >= 0 && size <= j11) {
                    allocate.put(byteArrayOutputStream.toByteArray());
                } else if (i4 < 0 && size > j11) {
                    long j13 = j4 - j12;
                    allocate.put(byteArrayOutputStream.toByteArray(), com.googlecode.mp4parser.util.c.a(j13), com.googlecode.mp4parser.util.c.a((dVar.getSize() - j13) - (size - j11)));
                } else if (i4 < 0 && size <= j11) {
                    long j14 = j4 - j12;
                    allocate.put(byteArrayOutputStream.toByteArray(), com.googlecode.mp4parser.util.c.a(j14), com.googlecode.mp4parser.util.c.a(dVar.getSize() - j14));
                } else if (i4 >= 0 && size > j11) {
                    allocate.put(byteArrayOutputStream.toByteArray(), 0, com.googlecode.mp4parser.util.c.a(dVar.getSize() - (size - j11)));
                }
            }
            j12 = size;
        }
        return (ByteBuffer) allocate.rewind();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i4 = 0; i4 < this.f36950g.size(); i4++) {
            if (i4 > 0) {
                sb.append(com.alipay.sdk.util.i.f6965b);
            }
            sb.append(this.f36950g.get(i4).toString());
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // com.coremedia.iso.boxes.j
    public List<com.coremedia.iso.boxes.d> y() {
        if (this.f36945b != null && this.f36946c != f36942h) {
            return new com.googlecode.mp4parser.util.i(this.f36950g, this);
        }
        return this.f36950g;
    }
}
