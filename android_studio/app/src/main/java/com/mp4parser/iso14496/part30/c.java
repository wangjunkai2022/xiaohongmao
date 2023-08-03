package com.mp4parser.iso14496.part30;

import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: WebVTTSourceLabelBox.java */
/* loaded from: classes3.dex */
public class c extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f47079o = "vlab";

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f47080p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f47081q = null;

    /* renamed from: n  reason: collision with root package name */
    String f47082n;

    static {
        s();
    }

    public c() {
        super(f47079o);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("WebVTTSourceLabelBox.java", c.class);
        f47080p = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSourceLabel", "com.mp4parser.iso14496.part30.WebVTTSourceLabelBox", "", "", "", "java.lang.String"), 37);
        f47081q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSourceLabel", "com.mp4parser.iso14496.part30.WebVTTSourceLabelBox", "java.lang.String", "sourceLabel", "", "void"), 41);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f47082n = g.h(byteBuffer, byteBuffer.remaining());
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(l.b(this.f47082n));
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return l.c(this.f47082n);
    }

    public String t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f47080p, this, this));
        return this.f47082n;
    }

    public void u(String str) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f47081q, this, this, str));
        this.f47082n = str;
    }
}
