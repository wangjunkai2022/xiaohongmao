package com.bumptech.glide.load.model.stream;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.InputStream;
import java.net.URL;

/* compiled from: UrlLoader.java */
/* loaded from: classes.dex */
public class g implements n<URL, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final n<com.bumptech.glide.load.model.g, InputStream> f9135a;

    /* compiled from: UrlLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<URL, InputStream> {
        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<URL, InputStream> c(r rVar) {
            return new g(rVar.d(com.bumptech.glide.load.model.g.class, InputStream.class));
        }
    }

    public g(n<com.bumptech.glide.load.model.g, InputStream> nVar) {
        this.f9135a = nVar;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<InputStream> b(@NonNull URL url, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return this.f9135a.b(new com.bumptech.glide.load.model.g(url), i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull URL url) {
        return true;
    }
}
