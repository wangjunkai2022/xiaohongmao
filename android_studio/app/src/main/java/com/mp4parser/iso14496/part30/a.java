package com.mp4parser.iso14496.part30;

import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: WebVTTConfigurationBox.java */
/* loaded from: classes3.dex */
public class a extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f47074o = "vttC";

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f47075p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f47076q = null;

    /* renamed from: n  reason: collision with root package name */
    String f47077n;

    static {
        s();
    }

    public a() {
        super(f47074o);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("WebVTTConfigurationBox.java", a.class);
        f47075p = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getConfig", "com.mp4parser.iso14496.part30.WebVTTConfigurationBox", "", "", "", "java.lang.String"), 36);
        f47076q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setConfig", "com.mp4parser.iso14496.part30.WebVTTConfigurationBox", "java.lang.String", "config", "", "void"), 40);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f47077n = g.h(byteBuffer, byteBuffer.remaining());
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(l.b(this.f47077n));
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return l.c(this.f47077n);
    }

    public String t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f47075p, this, this));
        return this.f47077n;
    }

    public void u(String str) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f47076q, this, this, str));
        this.f47077n = str;
    }
}
