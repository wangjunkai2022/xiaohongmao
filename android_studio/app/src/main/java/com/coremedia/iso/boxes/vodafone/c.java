package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: CoverUriBox.java */
/* loaded from: classes.dex */
public class c extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10436s = "cvru";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10437t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10438u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10439v = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10440r;

    static {
        s();
    }

    public c() {
        super(f10436s);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("CoverUriBox.java", c.class);
        f10437t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCoverUri", "com.coremedia.iso.boxes.vodafone.CoverUriBox", "", "", "", "java.lang.String"), 38);
        f10438u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCoverUri", "com.coremedia.iso.boxes.vodafone.CoverUriBox", "java.lang.String", "coverUri", "", "void"), 42);
        f10439v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.vodafone.CoverUriBox", "", "", "", "java.lang.String"), 64);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10440r = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(l.b(this.f10440r));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return l.c(this.f10440r) + 5;
    }

    public String toString() {
        j.b().c(e.v(f10439v, this, this));
        return "CoverUriBox[coverUri=" + v() + "]";
    }

    public String v() {
        j.b().c(e.v(f10437t, this, this));
        return this.f10440r;
    }

    public void w(String str) {
        j.b().c(e.w(f10438u, this, this, str));
        this.f10440r = str;
    }
}
