package com.googlecode.mp4parser.contentprotection;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.boxes.piff.c;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* compiled from: PlayReadyHeader.java */
/* loaded from: classes2.dex */
public class b extends c {

    /* renamed from: d  reason: collision with root package name */
    public static UUID f36935d;

    /* renamed from: b  reason: collision with root package name */
    private long f36936b;

    /* renamed from: c  reason: collision with root package name */
    private List<a> f36937c;

    /* compiled from: PlayReadyHeader.java */
    /* loaded from: classes2.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        int f36938a;

        /* compiled from: PlayReadyHeader.java */
        /* renamed from: com.googlecode.mp4parser.contentprotection.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0292a extends a {

            /* renamed from: b  reason: collision with root package name */
            ByteBuffer f36939b;

            public C0292a(int i4) {
                super(i4);
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public ByteBuffer b() {
                return this.f36939b;
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public void c(ByteBuffer byteBuffer) {
                this.f36939b = byteBuffer.duplicate();
            }
        }

        /* compiled from: PlayReadyHeader.java */
        /* renamed from: com.googlecode.mp4parser.contentprotection.b$a$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0293b extends a {

            /* renamed from: b  reason: collision with root package name */
            ByteBuffer f36940b;

            public C0293b() {
                super(3);
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public ByteBuffer b() {
                return this.f36940b;
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public void c(ByteBuffer byteBuffer) {
                this.f36940b = byteBuffer.duplicate();
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public String toString() {
                return "EmeddedLicenseStore{length=" + b().limit() + '}';
            }
        }

        /* compiled from: PlayReadyHeader.java */
        /* loaded from: classes2.dex */
        public static class c extends a {

            /* renamed from: b  reason: collision with root package name */
            String f36941b;

            public c() {
                super(1);
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public ByteBuffer b() {
                try {
                    return ByteBuffer.wrap(this.f36941b.getBytes("UTF-16LE"));
                } catch (UnsupportedEncodingException e4) {
                    throw new RuntimeException(e4);
                }
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public void c(ByteBuffer byteBuffer) {
                try {
                    byte[] bArr = new byte[byteBuffer.slice().limit()];
                    byteBuffer.get(bArr);
                    this.f36941b = new String(bArr, "UTF-16LE");
                } catch (UnsupportedEncodingException e4) {
                    throw new RuntimeException(e4);
                }
            }

            public String d() {
                return this.f36941b;
            }

            public void e(String str) {
                this.f36941b = str;
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public String toString() {
                return "RMHeader{length=" + b().limit() + ", header='" + this.f36941b + "'}";
            }
        }

        public a(int i4) {
            this.f36938a = i4;
        }

        public static List<a> a(ByteBuffer byteBuffer, int i4) {
            a cVar;
            ArrayList arrayList = new ArrayList(i4);
            for (int i10 = 0; i10 < i4; i10++) {
                int j4 = g.j(byteBuffer);
                int j10 = g.j(byteBuffer);
                if (j4 == 1) {
                    cVar = new c();
                } else if (j4 == 2) {
                    cVar = new C0292a(2);
                } else if (j4 != 3) {
                    cVar = new C0292a(j4);
                } else {
                    cVar = new C0293b();
                }
                cVar.c((ByteBuffer) byteBuffer.slice().limit(j10));
                byteBuffer.position(byteBuffer.position() + j10);
                arrayList.add(cVar);
            }
            return arrayList;
        }

        public abstract ByteBuffer b();

        public abstract void c(ByteBuffer byteBuffer);

        public String toString() {
            return "PlayReadyRecord{type=" + this.f36938a + ", length=" + b().limit() + '}';
        }
    }

    static {
        UUID fromString = UUID.fromString("9A04F079-9840-4286-AB92-E65BE0885F95");
        f36935d = fromString;
        c.f36887a.put(fromString, b.class);
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public ByteBuffer b() {
        int i4 = 6;
        for (a aVar : this.f36937c) {
            i4 = i4 + 4 + aVar.b().rewind().limit();
        }
        ByteBuffer allocate = ByteBuffer.allocate(i4);
        i.j(allocate, i4);
        i.g(allocate, this.f36937c.size());
        for (a aVar2 : this.f36937c) {
            i.g(allocate, aVar2.f36938a);
            i.g(allocate, aVar2.b().limit());
            allocate.put(aVar2.b());
        }
        return allocate;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public UUID c() {
        return f36935d;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public void d(ByteBuffer byteBuffer) {
        this.f36936b = g.m(byteBuffer);
        this.f36937c = a.a(byteBuffer, g.j(byteBuffer));
    }

    public List<a> e() {
        return Collections.unmodifiableList(this.f36937c);
    }

    public void f(List<a> list) {
        this.f36937c = list;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public String toString() {
        return "PlayReadyHeader{length=" + this.f36936b + ", recordCount=" + this.f36937c.size() + ", records=" + this.f36937c + '}';
    }
}
