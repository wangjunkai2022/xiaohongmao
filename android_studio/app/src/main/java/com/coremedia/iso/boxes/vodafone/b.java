package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: ContentDistributorIdBox.java */
/* loaded from: classes.dex */
public class b extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10430t = "cdis";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10431u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10432v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10433w = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10434r;

    /* renamed from: s  reason: collision with root package name */
    private String f10435s;

    static {
        s();
    }

    public b() {
        super(f10430t);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("ContentDistributorIdBox.java", b.class);
        f10431u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox", "", "", "", "java.lang.String"), 40);
        f10432v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getContentDistributorId", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox", "", "", "", "java.lang.String"), 44);
        f10433w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox", "", "", "", "java.lang.String"), 68);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10434r = g.f(byteBuffer);
        this.f10435s = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.d(byteBuffer, this.f10434r);
        byteBuffer.put(l.b(this.f10435s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return l.c(this.f10435s) + 2 + 5;
    }

    public String toString() {
        j.b().c(e.v(f10433w, this, this));
        return "ContentDistributorIdBox[language=" + w() + ";contentDistributorId=" + v() + "]";
    }

    public String v() {
        j.b().c(e.v(f10432v, this, this));
        return this.f10435s;
    }

    public String w() {
        j.b().c(e.v(f10431u, this, this));
        return this.f10434r;
    }
}
