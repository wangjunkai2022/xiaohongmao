package com.googlecode.mp4parser.boxes;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.UUID;
import org.aspectj.lang.c;

/* compiled from: AbstractTrackEncryptionBox.java */
/* loaded from: classes2.dex */
public abstract class c extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36595u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36596v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36597w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36598x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36599y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36600z = null;

    /* renamed from: r  reason: collision with root package name */
    int f36601r;

    /* renamed from: s  reason: collision with root package name */
    int f36602s;

    /* renamed from: t  reason: collision with root package name */
    byte[] f36603t;

    static {
        s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AbstractTrackEncryptionBox.java", c.class);
        f36595u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 24);
        f36596v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultAlgorithmId", "", "void"), 28);
        f36597w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 32);
        f36598x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultIvSize", "", "void"), 36);
        f36599y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "java.util.UUID"), 40);
        f36600z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.util.UUID", "uuid", "", "void"), 46);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.lang.Object", "o", "", TypedValues.Custom.S_BOOLEAN), 76);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 90);
    }

    public void A(UUID uuid) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36600z, this, this, uuid));
        ByteBuffer wrap = ByteBuffer.wrap(new byte[16]);
        wrap.putLong(uuid.getMostSignificantBits());
        wrap.putLong(uuid.getLeastSignificantBits());
        this.f36603t = wrap.array();
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36601r = g.k(byteBuffer);
        this.f36602s = g.p(byteBuffer);
        byte[] bArr = new byte[16];
        this.f36603t = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.h(byteBuffer, this.f36601r);
        i.m(byteBuffer, this.f36602s);
        byteBuffer.put(this.f36603t);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 24L;
    }

    public boolean equals(Object obj) {
        j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f36601r == cVar.f36601r && this.f36602s == cVar.f36602s && Arrays.equals(this.f36603t, cVar.f36603t);
    }

    public int hashCode() {
        j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        int i4 = ((this.f36601r * 31) + this.f36602s) * 31;
        byte[] bArr = this.f36603t;
        return i4 + (bArr != null ? Arrays.hashCode(bArr) : 0);
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36595u, this, this));
        return this.f36601r;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36597w, this, this));
        return this.f36602s;
    }

    public UUID x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36599y, this, this));
        ByteBuffer wrap = ByteBuffer.wrap(this.f36603t);
        wrap.order(ByteOrder.BIG_ENDIAN);
        return new UUID(wrap.getLong(), wrap.getLong());
    }

    public void y(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36596v, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36601r = i4;
    }

    public void z(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36598x, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36602s = i4;
    }
}
