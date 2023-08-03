package com.googlecode.mp4parser.boxes.dece;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: BaseLocationBox.java */
/* loaded from: classes2.dex */
public class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;

    /* renamed from: t  reason: collision with root package name */
    public static final String f36653t = "bloc";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36654u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36655v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36656w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36657x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36658y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36659z = null;

    /* renamed from: r  reason: collision with root package name */
    String f36660r;

    /* renamed from: s  reason: collision with root package name */
    String f36661s;

    static {
        s();
    }

    public b() {
        super(f36653t);
        this.f36660r = "";
        this.f36661s = "";
    }

    private static /* synthetic */ void s() {
        e eVar = new e("BaseLocationBox.java", b.class);
        f36654u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "java.lang.String"), 44);
        f36655v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "java.lang.String", "baseLocation", "", "void"), 48);
        f36656w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPurchaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "java.lang.String"), 52);
        f36657x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPurchaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "java.lang.String", "purchaseLocation", "", "void"), 56);
        f36658y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "java.lang.Object", "o", "", TypedValues.Custom.S_BOOLEAN), 86);
        f36659z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "int"), 100);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "java.lang.String"), 107);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        String g4 = g.g(byteBuffer);
        this.f36660r = g4;
        byteBuffer.get(new byte[(256 - l.c(g4)) - 1]);
        String g10 = g.g(byteBuffer);
        this.f36661s = g10;
        byteBuffer.get(new byte[(256 - l.c(g10)) - 1]);
        byteBuffer.get(new byte[512]);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(l.b(this.f36660r));
        byteBuffer.put(new byte[256 - l.c(this.f36660r)]);
        byteBuffer.put(l.b(this.f36661s));
        byteBuffer.put(new byte[256 - l.c(this.f36661s)]);
        byteBuffer.put(new byte[512]);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 1028L;
    }

    public boolean equals(Object obj) {
        j.b().c(e.w(f36658y, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        String str = this.f36660r;
        if (str == null ? bVar.f36660r == null : str.equals(bVar.f36660r)) {
            String str2 = this.f36661s;
            String str3 = bVar.f36661s;
            return str2 == null ? str3 == null : str2.equals(str3);
        }
        return false;
    }

    public int hashCode() {
        j.b().c(e.v(f36659z, this, this));
        String str = this.f36660r;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f36661s;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        j.b().c(e.v(A, this, this));
        return "BaseLocationBox{baseLocation='" + this.f36660r + "', purchaseLocation='" + this.f36661s + "'}";
    }

    public String v() {
        j.b().c(e.v(f36654u, this, this));
        return this.f36660r;
    }

    public String w() {
        j.b().c(e.v(f36656w, this, this));
        return this.f36661s;
    }

    public void x(String str) {
        j.b().c(e.w(f36655v, this, this, str));
        this.f36660r = str;
    }

    public void y(String str) {
        j.b().c(e.w(f36657x, this, this, str));
        this.f36661s = str;
    }

    public b(String str, String str2) {
        super(f36653t);
        this.f36660r = str;
        this.f36661s = str2;
    }
}
