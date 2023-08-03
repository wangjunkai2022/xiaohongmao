package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.JsonEncoding;

/* compiled from: IOContext.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    protected final ContentReference f13925a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    protected final Object f13926b;

    /* renamed from: c  reason: collision with root package name */
    protected JsonEncoding f13927c;

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f13928d;

    /* renamed from: e  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.util.a f13929e;

    /* renamed from: f  reason: collision with root package name */
    protected byte[] f13930f;

    /* renamed from: g  reason: collision with root package name */
    protected byte[] f13931g;

    /* renamed from: h  reason: collision with root package name */
    protected byte[] f13932h;

    /* renamed from: i  reason: collision with root package name */
    protected char[] f13933i;

    /* renamed from: j  reason: collision with root package name */
    protected char[] f13934j;

    /* renamed from: k  reason: collision with root package name */
    protected char[] f13935k;

    public d(com.fasterxml.jackson.core.util.a aVar, ContentReference contentReference, boolean z9) {
        this.f13929e = aVar;
        this.f13925a = contentReference;
        this.f13926b = contentReference.getRawContent();
        this.f13928d = z9;
    }

    private IllegalArgumentException A() {
        return new IllegalArgumentException("Trying to release buffer smaller than original");
    }

    protected final void a(Object obj) {
        if (obj != null) {
            throw new IllegalStateException("Trying to call same allocXxx() method second time");
        }
    }

    protected final void b(byte[] bArr, byte[] bArr2) {
        if (bArr != bArr2 && bArr.length < bArr2.length) {
            throw A();
        }
    }

    protected final void c(char[] cArr, char[] cArr2) {
        if (cArr != cArr2 && cArr.length < cArr2.length) {
            throw A();
        }
    }

    public byte[] d() {
        a(this.f13932h);
        byte[] a10 = this.f13929e.a(3);
        this.f13932h = a10;
        return a10;
    }

    public byte[] e(int i4) {
        a(this.f13932h);
        byte[] b10 = this.f13929e.b(3, i4);
        this.f13932h = b10;
        return b10;
    }

    public char[] f() {
        a(this.f13934j);
        char[] c10 = this.f13929e.c(1);
        this.f13934j = c10;
        return c10;
    }

    public char[] g(int i4) {
        a(this.f13935k);
        char[] d4 = this.f13929e.d(3, i4);
        this.f13935k = d4;
        return d4;
    }

    public byte[] h() {
        a(this.f13930f);
        byte[] a10 = this.f13929e.a(0);
        this.f13930f = a10;
        return a10;
    }

    public byte[] i(int i4) {
        a(this.f13930f);
        byte[] b10 = this.f13929e.b(0, i4);
        this.f13930f = b10;
        return b10;
    }

    public char[] j() {
        a(this.f13933i);
        char[] c10 = this.f13929e.c(0);
        this.f13933i = c10;
        return c10;
    }

    public char[] k(int i4) {
        a(this.f13933i);
        char[] d4 = this.f13929e.d(0, i4);
        this.f13933i = d4;
        return d4;
    }

    public byte[] l() {
        a(this.f13931g);
        byte[] a10 = this.f13929e.a(1);
        this.f13931g = a10;
        return a10;
    }

    public byte[] m(int i4) {
        a(this.f13931g);
        byte[] b10 = this.f13929e.b(1, i4);
        this.f13931g = b10;
        return b10;
    }

    public com.fasterxml.jackson.core.util.j n() {
        return new com.fasterxml.jackson.core.util.j(this.f13929e);
    }

    public ContentReference o() {
        return this.f13925a;
    }

    public JsonEncoding p() {
        return this.f13927c;
    }

    @Deprecated
    public Object q() {
        return this.f13926b;
    }

    public boolean r() {
        return this.f13928d;
    }

    public void s(byte[] bArr) {
        if (bArr != null) {
            b(bArr, this.f13932h);
            this.f13932h = null;
            this.f13929e.i(3, bArr);
        }
    }

    public void t(char[] cArr) {
        if (cArr != null) {
            c(cArr, this.f13934j);
            this.f13934j = null;
            this.f13929e.j(1, cArr);
        }
    }

    public void u(char[] cArr) {
        if (cArr != null) {
            c(cArr, this.f13935k);
            this.f13935k = null;
            this.f13929e.j(3, cArr);
        }
    }

    public void v(byte[] bArr) {
        if (bArr != null) {
            b(bArr, this.f13930f);
            this.f13930f = null;
            this.f13929e.i(0, bArr);
        }
    }

    public void w(char[] cArr) {
        if (cArr != null) {
            c(cArr, this.f13933i);
            this.f13933i = null;
            this.f13929e.j(0, cArr);
        }
    }

    public void x(byte[] bArr) {
        if (bArr != null) {
            b(bArr, this.f13931g);
            this.f13931g = null;
            this.f13929e.i(1, bArr);
        }
    }

    public void y(JsonEncoding jsonEncoding) {
        this.f13927c = jsonEncoding;
    }

    public d z(JsonEncoding jsonEncoding) {
        this.f13927c = jsonEncoding;
        return this;
    }

    @Deprecated
    public d(com.fasterxml.jackson.core.util.a aVar, Object obj, boolean z9) {
        this(aVar, ContentReference.rawReference(obj), z9);
    }
}
