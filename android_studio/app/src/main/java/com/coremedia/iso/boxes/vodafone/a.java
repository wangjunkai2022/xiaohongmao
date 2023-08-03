package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: AlbumArtistBox.java */
/* loaded from: classes.dex */
public class a extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10422t = "albr";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10423u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10424v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10425w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10426x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10427y = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10428r;

    /* renamed from: s  reason: collision with root package name */
    private String f10429s;

    static {
        s();
    }

    public a() {
        super(f10422t);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("AlbumArtistBox.java", a.class);
        f10423u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "", "", "", "java.lang.String"), 42);
        f10424v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAlbumArtist", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "", "", "", "java.lang.String"), 46);
        f10425w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "java.lang.String", "language", "", "void"), 50);
        f10426x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAlbumArtist", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "java.lang.String", "albumArtist", "", "void"), 54);
        f10427y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "", "", "", "java.lang.String"), 76);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10428r = g.f(byteBuffer);
        this.f10429s = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.d(byteBuffer, this.f10428r);
        byteBuffer.put(l.b(this.f10429s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return l.c(this.f10429s) + 6 + 1;
    }

    public String toString() {
        j.b().c(e.v(f10427y, this, this));
        return "AlbumArtistBox[language=" + w() + ";albumArtist=" + v() + "]";
    }

    public String v() {
        j.b().c(e.v(f10424v, this, this));
        return this.f10429s;
    }

    public String w() {
        j.b().c(e.v(f10423u, this, this));
        return this.f10428r;
    }

    public void x(String str) {
        j.b().c(e.w(f10426x, this, this, str));
        this.f10429s = str;
    }

    public void y(String str) {
        j.b().c(e.w(f10425w, this, this, str));
        this.f10428r = str;
    }
}
