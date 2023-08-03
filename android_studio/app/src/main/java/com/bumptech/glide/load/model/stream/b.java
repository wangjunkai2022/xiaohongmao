package com.bumptech.glide.load.model.stream;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.data.j;
import com.bumptech.glide.load.model.m;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.InputStream;

/* compiled from: HttpGlideUrlLoader.java */
/* loaded from: classes.dex */
public class b implements n<com.bumptech.glide.load.model.g, InputStream> {

    /* renamed from: b  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Integer> f9111b = com.bumptech.glide.load.e.g("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final m<com.bumptech.glide.load.model.g, com.bumptech.glide.load.model.g> f9112a;

    /* compiled from: HttpGlideUrlLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<com.bumptech.glide.load.model.g, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final m<com.bumptech.glide.load.model.g, com.bumptech.glide.load.model.g> f9113a = new m<>(500);

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<com.bumptech.glide.load.model.g, InputStream> c(r rVar) {
            return new b(this.f9113a);
        }
    }

    public b() {
        this(null);
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<InputStream> b(@NonNull com.bumptech.glide.load.model.g gVar, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        m<com.bumptech.glide.load.model.g, com.bumptech.glide.load.model.g> mVar = this.f9112a;
        if (mVar != null) {
            com.bumptech.glide.load.model.g b10 = mVar.b(gVar, 0, 0);
            if (b10 == null) {
                this.f9112a.c(gVar, 0, 0, gVar);
            } else {
                gVar = b10;
            }
        }
        return new n.a<>(gVar, new j(gVar, ((Integer) fVar.c(f9111b)).intValue()));
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull com.bumptech.glide.load.model.g gVar) {
        return true;
    }

    public b(@Nullable m<com.bumptech.glide.load.model.g, com.bumptech.glide.load.model.g> mVar) {
        this.f9112a = mVar;
    }
}
