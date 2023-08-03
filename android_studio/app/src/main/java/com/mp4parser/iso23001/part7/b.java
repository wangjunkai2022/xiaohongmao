package com.mp4parser.iso23001.part7;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import com.googlecode.mp4parser.util.o;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: ProtectionSystemSpecificHeaderBox.java */
/* loaded from: classes3.dex */
public class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;

    /* renamed from: u  reason: collision with root package name */
    public static final String f47129u = "pssh";

    /* renamed from: v  reason: collision with root package name */
    public static byte[] f47130v;

    /* renamed from: w  reason: collision with root package name */
    public static byte[] f47131w;

    /* renamed from: x  reason: collision with root package name */
    static final /* synthetic */ boolean f47132x = false;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f47133y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f47134z = null;

    /* renamed from: r  reason: collision with root package name */
    byte[] f47135r;

    /* renamed from: s  reason: collision with root package name */
    byte[] f47136s;

    /* renamed from: t  reason: collision with root package name */
    List<UUID> f47137t;

    static {
        s();
        f47130v = o.b(UUID.fromString("A2B55680-6F43-11E0-9A3F-0002A5D5C51B"));
        f47131w = o.b(UUID.fromString("9A04F079-9840-4286-AB92-E65BE0885F95"));
    }

    public b() {
        super(f47129u);
        this.f47137t = new ArrayList();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("ProtectionSystemSpecificHeaderBox.java", b.class);
        f47133y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getKeyIds", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "", "", "", "java.util.List"), 43);
        f47134z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setKeyIds", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "java.util.List", "keyIds", "", "void"), 47);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSystemId", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "", "", "", "[B"), 54);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSystemId", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "[B", "systemId", "", "void"), 58);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getContent", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "", "", "", "[B"), 63);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setContent", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "[B", "content", "", "void"), 67);
    }

    public void A(byte[] bArr) {
        j.b().c(e.w(B, this, this, bArr));
        this.f47136s = bArr;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        byte[] bArr = new byte[16];
        this.f47136s = bArr;
        byteBuffer.get(bArr);
        if (getVersion() > 0) {
            int a10 = com.googlecode.mp4parser.util.c.a(g.l(byteBuffer));
            while (true) {
                int i4 = a10 - 1;
                if (a10 <= 0) {
                    break;
                }
                byte[] bArr2 = new byte[16];
                byteBuffer.get(bArr2);
                this.f47137t.add(o.a(bArr2));
                a10 = i4;
            }
        }
        g.l(byteBuffer);
        byte[] bArr3 = new byte[byteBuffer.remaining()];
        this.f47135r = bArr3;
        byteBuffer.get(bArr3);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(this.f47136s, 0, 16);
        if (getVersion() > 0) {
            i.i(byteBuffer, this.f47137t.size());
            for (UUID uuid : this.f47137t) {
                byteBuffer.put(o.b(uuid));
            }
        }
        i.i(byteBuffer, this.f47135r.length);
        byteBuffer.put(this.f47135r);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        long length = this.f47135r.length + 24;
        return getVersion() > 0 ? length + 4 + (this.f47137t.size() * 16) : length;
    }

    public byte[] v() {
        j.b().c(e.v(C, this, this));
        return this.f47135r;
    }

    public List<UUID> w() {
        j.b().c(e.v(f47133y, this, this));
        return this.f47137t;
    }

    public byte[] x() {
        j.b().c(e.v(A, this, this));
        return this.f47136s;
    }

    public void y(byte[] bArr) {
        j.b().c(e.w(D, this, this, bArr));
        this.f47135r = bArr;
    }

    public void z(List<UUID> list) {
        j.b().c(e.w(f47134z, this, this, list));
        this.f47137t = list;
    }
}
