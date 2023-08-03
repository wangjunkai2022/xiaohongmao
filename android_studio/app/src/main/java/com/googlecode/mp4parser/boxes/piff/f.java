package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import com.googlecode.mp4parser.util.o;
import java.nio.ByteBuffer;
import java.util.UUID;
import org.aspectj.lang.c;

/* compiled from: UuidBasedProtectionSystemSpecificHeaderBox.java */
/* loaded from: classes2.dex */
public class f extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;

    /* renamed from: t  reason: collision with root package name */
    public static byte[] f36899t;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36900u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36901v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36902w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36903x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36904y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36905z = null;

    /* renamed from: r  reason: collision with root package name */
    UUID f36906r;

    /* renamed from: s  reason: collision with root package name */
    c f36907s;

    static {
        s();
        f36899t = new byte[]{-48, -118, 79, com.google.common.base.c.B, 16, -13, 74, -126, -74, -56, 50, -40, -85, -95, -125, -45};
    }

    public f() {
        super("uuid", f36899t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("UuidBasedProtectionSystemSpecificHeaderBox.java", f.class);
        f36900u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSystemId", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.util.UUID"), 67);
        f36901v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSystemId", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "java.util.UUID", "systemId", "", "void"), 71);
        f36902w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSystemIdString", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.lang.String"), 75);
        f36903x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getProtectionSpecificHeader", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "com.googlecode.mp4parser.boxes.piff.ProtectionSpecificHeader"), 79);
        f36904y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getProtectionSpecificHeaderString", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.lang.String"), 83);
        f36905z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setProtectionSpecificHeader", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "com.googlecode.mp4parser.boxes.piff.ProtectionSpecificHeader", "protectionSpecificHeader", "", "void"), 87);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.lang.String"), 92);
    }

    public void A(UUID uuid) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36901v, this, this, uuid));
        this.f36906r = uuid;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        byte[] bArr = new byte[16];
        byteBuffer.get(bArr);
        this.f36906r = o.a(bArr);
        com.googlecode.mp4parser.util.c.a(g.l(byteBuffer));
        this.f36907s = c.a(this.f36906r, byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.l(byteBuffer, this.f36906r.getMostSignificantBits());
        i.l(byteBuffer, this.f36906r.getLeastSignificantBits());
        ByteBuffer b10 = this.f36907s.b();
        b10.rewind();
        i.i(byteBuffer, b10.limit());
        byteBuffer.put(b10);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f36907s.b().limit() + 24;
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] h() {
        return f36899t;
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return "UuidBasedProtectionSystemSpecificHeaderBox{systemId=" + this.f36906r.toString() + ", dataSize=" + this.f36907s.b().limit() + '}';
    }

    public c v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36903x, this, this));
        return this.f36907s;
    }

    public String w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36904y, this, this));
        return this.f36907s.toString();
    }

    public UUID x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36900u, this, this));
        return this.f36906r;
    }

    public String y() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36902w, this, this));
        return this.f36906r.toString();
    }

    public void z(c cVar) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36905z, this, this, cVar));
        this.f36907s = cVar;
    }
}
