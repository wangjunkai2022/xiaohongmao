package com.googlecode.mp4parser.boxes;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.googlecode.mp4parser.j;
import com.ksyun.media.player.KSYMediaMeta;
import com.mp4parser.iso23001.part7.a;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: AbstractSampleEncryptionBox.java */
/* loaded from: classes2.dex */
public abstract class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36576v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36577w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36578x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36579y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36580z = null;

    /* renamed from: r  reason: collision with root package name */
    protected int f36581r;

    /* renamed from: s  reason: collision with root package name */
    protected int f36582s;

    /* renamed from: t  reason: collision with root package name */
    protected byte[] f36583t;

    /* renamed from: u  reason: collision with root package name */
    List<com.mp4parser.iso23001.part7.a> f36584u;

    static {
        s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(String str) {
        super(str);
        this.f36581r = -1;
        this.f36582s = -1;
        this.f36583t = new byte[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        this.f36584u = Collections.emptyList();
    }

    private List<com.mp4parser.iso23001.part7.a> A(ByteBuffer byteBuffer, long j4, int i4) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            long j10 = j4 - 1;
            if (j4 <= 0) {
                return arrayList;
            }
            try {
                com.mp4parser.iso23001.part7.a aVar = new com.mp4parser.iso23001.part7.a();
                byte[] bArr = new byte[i4];
                aVar.f47090a = bArr;
                byteBuffer.get(bArr);
                if ((getFlags() & 2) > 0) {
                    aVar.f47091b = new a.k[g.i(byteBuffer)];
                    int i10 = 0;
                    while (true) {
                        a.k[] kVarArr = aVar.f47091b;
                        if (i10 >= kVarArr.length) {
                            break;
                        }
                        kVarArr[i10] = aVar.a(g.i(byteBuffer), g.l(byteBuffer));
                        i10++;
                    }
                }
                arrayList.add(aVar);
                j4 = j10;
            } catch (BufferUnderflowException unused) {
                return null;
            }
        }
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AbstractSampleEncryptionBox.java", b.class);
        f36576v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getOffsetToFirstIV", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), 29);
        f36577w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), 89);
        f36578x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.util.List", "entries", "", "void"), 93);
        f36579y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.lang.Object", "o", "", TypedValues.Custom.S_BOOLEAN), 162);
        f36580z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), a0.f22979w);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntrySizes", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), 197);
    }

    public void B(List<com.mp4parser.iso23001.part7.a> list) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36578x, this, this, list));
        this.f36584u = list;
    }

    @s3.a
    public void C(boolean z9) {
        if (z9) {
            setFlags(getFlags() | 2);
        } else {
            setFlags(getFlags() & 16777213);
        }
    }

    @Override // com.googlecode.mp4parser.a, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        super.a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if ((getFlags() & 1) > 0) {
            this.f36581r = g.k(byteBuffer);
            this.f36582s = g.p(byteBuffer);
            byte[] bArr = new byte[16];
            this.f36583t = bArr;
            byteBuffer.get(bArr);
        }
        long l10 = g.l(byteBuffer);
        ByteBuffer duplicate = byteBuffer.duplicate();
        ByteBuffer duplicate2 = byteBuffer.duplicate();
        List<com.mp4parser.iso23001.part7.a> A2 = A(duplicate, l10, 8);
        this.f36584u = A2;
        if (A2 == null) {
            this.f36584u = A(duplicate2, l10, 16);
            byteBuffer.position((byteBuffer.position() + byteBuffer.remaining()) - duplicate2.remaining());
        } else {
            byteBuffer.position((byteBuffer.position() + byteBuffer.remaining()) - duplicate.remaining());
        }
        if (this.f36584u == null) {
            throw new RuntimeException("Cannot parse SampleEncryptionBox");
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        a.k[] kVarArr;
        u(byteBuffer);
        if (y()) {
            i.h(byteBuffer, this.f36581r);
            i.m(byteBuffer, this.f36582s);
            byteBuffer.put(this.f36583t);
        }
        i.i(byteBuffer, this.f36584u.size());
        for (com.mp4parser.iso23001.part7.a aVar : this.f36584u) {
            if (aVar.b() > 0) {
                byte[] bArr = aVar.f47090a;
                if (bArr.length != 8 && bArr.length != 16) {
                    throw new RuntimeException("IV must be either 8 or 16 bytes");
                }
                byteBuffer.put(bArr);
                if (z()) {
                    i.f(byteBuffer, aVar.f47091b.length);
                    for (a.k kVar : aVar.f47091b) {
                        i.f(byteBuffer, kVar.clear());
                        i.i(byteBuffer, kVar.a());
                    }
                }
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        long length = (y() ? 8 + this.f36583t.length : 4L) + 4;
        for (com.mp4parser.iso23001.part7.a aVar : this.f36584u) {
            length += aVar.b();
        }
        return length;
    }

    public boolean equals(Object obj) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36579y, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f36581r == bVar.f36581r && this.f36582s == bVar.f36582s) {
            List<com.mp4parser.iso23001.part7.a> list = this.f36584u;
            if (list == null ? bVar.f36584u == null : list.equals(bVar.f36584u)) {
                return Arrays.equals(this.f36583t, bVar.f36583t);
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36580z, this, this));
        int i4 = ((this.f36581r * 31) + this.f36582s) * 31;
        byte[] bArr = this.f36583t;
        int hashCode = (i4 + (bArr != null ? Arrays.hashCode(bArr) : 0)) * 31;
        List<com.mp4parser.iso23001.part7.a> list = this.f36584u;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public List<com.mp4parser.iso23001.part7.a> v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36577w, this, this));
        return this.f36584u;
    }

    public List<Short> w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        ArrayList arrayList = new ArrayList(this.f36584u.size());
        for (com.mp4parser.iso23001.part7.a aVar : this.f36584u) {
            short length = (short) aVar.f47090a.length;
            if (z()) {
                length = (short) (((short) (length + 2)) + (aVar.f47091b.length * 6));
            }
            arrayList.add(Short.valueOf(length));
        }
        return arrayList;
    }

    public int x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36576v, this, this));
        return (getSize() > KSYMediaMeta.AV_CH_WIDE_RIGHT ? 16 : 8) + (y() ? this.f36583t.length + 4 : 0) + 4;
    }

    @s3.a
    protected boolean y() {
        return (getFlags() & 1) > 0;
    }

    @s3.a
    public boolean z() {
        return (getFlags() & 2) > 0;
    }
}
