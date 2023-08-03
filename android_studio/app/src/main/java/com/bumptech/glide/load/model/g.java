package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: GlideUrl.java */
/* loaded from: classes.dex */
public class g implements com.bumptech.glide.load.c {

    /* renamed from: j  reason: collision with root package name */
    private static final String f9046j = "@#&=*+-_.,:!?()/~'%;$";

    /* renamed from: c  reason: collision with root package name */
    private final h f9047c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final URL f9048d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f9049e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f9050f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private URL f9051g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private volatile byte[] f9052h;

    /* renamed from: i  reason: collision with root package name */
    private int f9053i;

    public g(URL url) {
        this(url, h.f9055b);
    }

    private byte[] d() {
        if (this.f9052h == null) {
            this.f9052h = c().getBytes(com.bumptech.glide.load.c.f8527b);
        }
        return this.f9052h;
    }

    private String f() {
        if (TextUtils.isEmpty(this.f9050f)) {
            String str = this.f9049e;
            if (TextUtils.isEmpty(str)) {
                str = ((URL) com.bumptech.glide.util.m.d(this.f9048d)).toString();
            }
            this.f9050f = Uri.encode(str, f9046j);
        }
        return this.f9050f;
    }

    private URL g() throws MalformedURLException {
        if (this.f9051g == null) {
            this.f9051g = new URL(f());
        }
        return this.f9051g;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(d());
    }

    public String c() {
        String str = this.f9049e;
        return str != null ? str : ((URL) com.bumptech.glide.util.m.d(this.f9048d)).toString();
    }

    public Map<String, String> e() {
        return this.f9047c.d();
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            return c().equals(gVar.c()) && this.f9047c.equals(gVar.f9047c);
        }
        return false;
    }

    public String h() {
        return f();
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        if (this.f9053i == 0) {
            int hashCode = c().hashCode();
            this.f9053i = hashCode;
            this.f9053i = (hashCode * 31) + this.f9047c.hashCode();
        }
        return this.f9053i;
    }

    public URL i() throws MalformedURLException {
        return g();
    }

    public String toString() {
        return c();
    }

    public g(String str) {
        this(str, h.f9055b);
    }

    public g(URL url, h hVar) {
        this.f9048d = (URL) com.bumptech.glide.util.m.d(url);
        this.f9049e = null;
        this.f9047c = (h) com.bumptech.glide.util.m.d(hVar);
    }

    public g(String str, h hVar) {
        this.f9048d = null;
        this.f9049e = com.bumptech.glide.util.m.b(str);
        this.f9047c = (h) com.bumptech.glide.util.m.d(hVar);
    }
}
