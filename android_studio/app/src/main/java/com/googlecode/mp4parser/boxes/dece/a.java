package com.googlecode.mp4parser.boxes.dece;

import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: AssetInformationBox.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f36642t = "ainf";

    /* renamed from: u  reason: collision with root package name */
    static final /* synthetic */ boolean f36643u = false;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36644v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36645w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36646x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36647y = null;

    /* renamed from: r  reason: collision with root package name */
    String f36648r;

    /* renamed from: s  reason: collision with root package name */
    String f36649s;

    /* compiled from: AssetInformationBox.java */
    /* renamed from: com.googlecode.mp4parser.boxes.dece.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0287a {

        /* renamed from: a  reason: collision with root package name */
        public String f36650a;

        /* renamed from: b  reason: collision with root package name */
        public String f36651b;

        /* renamed from: c  reason: collision with root package name */
        public String f36652c;

        public C0287a(String str, String str2, String str3) {
            this.f36650a = str;
            this.f36651b = str2;
            this.f36652c = str3;
        }

        public int a() {
            return l.c(this.f36650a) + 3 + l.c(this.f36651b) + l.c(this.f36652c);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0287a c0287a = (C0287a) obj;
            return this.f36652c.equals(c0287a.f36652c) && this.f36650a.equals(c0287a.f36650a) && this.f36651b.equals(c0287a.f36651b);
        }

        public int hashCode() {
            return (((this.f36650a.hashCode() * 31) + this.f36651b.hashCode()) * 31) + this.f36652c.hashCode();
        }

        public String toString() {
            return "{namespace='" + this.f36650a + "', profileLevelIdc='" + this.f36651b + "', assetId='" + this.f36652c + "'}";
        }
    }

    static {
        s();
    }

    public a() {
        super(f36642t);
        this.f36648r = "";
        this.f36649s = "0000";
    }

    private static /* synthetic */ void s() {
        e eVar = new e("AssetInformationBox.java", a.class);
        f36644v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getApid", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "", "", "", "java.lang.String"), 131);
        f36645w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setApid", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "java.lang.String", "apid", "", "void"), h0.J);
        f36646x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getProfileVersion", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "", "", "", "java.lang.String"), 139);
        f36647y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setProfileVersion", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "java.lang.String", "profileVersion", "", "void"), 143);
    }

    public void A(String str) {
        j.b().c(e.w(f36647y, this, this, str));
        this.f36649s = str;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36649s = g.h(byteBuffer, 4);
        this.f36648r = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 0) {
            byteBuffer.put(l.b(this.f36649s), 0, 4);
            byteBuffer.put(l.b(this.f36648r));
            byteBuffer.put((byte) 0);
            return;
        }
        throw new RuntimeException("Unknown ainf version " + getVersion());
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return l.c(this.f36648r) + 9;
    }

    public String v() {
        j.b().c(e.v(f36644v, this, this));
        return this.f36648r;
    }

    public String w() {
        j.b().c(e.v(f36646x, this, this));
        return this.f36649s;
    }

    @s3.a
    public boolean x() {
        return (getFlags() & 1) == 1;
    }

    public void y(String str) {
        j.b().c(e.w(f36645w, this, this, str));
        this.f36648r = str;
    }

    @s3.a
    public void z(boolean z9) {
        int flags = getFlags();
        if (x() ^ z9) {
            if (z9) {
                setFlags(flags | 1);
            } else {
                setFlags(16777214 & flags);
            }
        }
    }
}
