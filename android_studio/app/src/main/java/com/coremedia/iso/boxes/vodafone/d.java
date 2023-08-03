package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: LyricsUriBox.java */
/* loaded from: classes.dex */
public class d extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10441s = "lrcu";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10442t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10443u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10444v = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10445r;

    static {
        s();
    }

    public d() {
        super(f10441s);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("LyricsUriBox.java", d.class);
        f10442t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLyricsUri", "com.coremedia.iso.boxes.vodafone.LyricsUriBox", "", "", "", "java.lang.String"), 39);
        f10443u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLyricsUri", "com.coremedia.iso.boxes.vodafone.LyricsUriBox", "java.lang.String", "lyricsUri", "", "void"), 43);
        f10444v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.vodafone.LyricsUriBox", "", "", "", "java.lang.String"), 64);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10445r = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(l.b(this.f10445r));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return l.c(this.f10445r) + 5;
    }

    public String toString() {
        j.b().c(e.v(f10444v, this, this));
        return "LyricsUriBox[lyricsUri=" + v() + "]";
    }

    public String v() {
        j.b().c(e.v(f10442t, this, this));
        return this.f10445r;
    }

    public void w(String str) {
        j.b().c(e.w(f10443u, this, this, str));
        this.f10445r = str;
    }
}
