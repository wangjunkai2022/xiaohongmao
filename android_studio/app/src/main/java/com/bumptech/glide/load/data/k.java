package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.resource.bitmap.z;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: InputStreamRewinder.java */
/* loaded from: classes.dex */
public final class k implements e<InputStream> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f8559b = 5242880;

    /* renamed from: a  reason: collision with root package name */
    private final z f8560a;

    /* compiled from: InputStreamRewinder.java */
    /* loaded from: classes.dex */
    public static final class a implements e.a<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.load.engine.bitmap_recycle.b f8561a;

        public a(com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f8561a = bVar;
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public Class<InputStream> a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        /* renamed from: c */
        public e<InputStream> b(InputStream inputStream) {
            return new k(inputStream, this.f8561a);
        }
    }

    public k(InputStream inputStream, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        z zVar = new z(inputStream, bVar);
        this.f8560a = zVar;
        zVar.mark(f8559b);
    }

    @Override // com.bumptech.glide.load.data.e
    public void b() {
        this.f8560a.release();
    }

    public void c() {
        this.f8560a.b();
    }

    @Override // com.bumptech.glide.load.data.e
    @NonNull
    /* renamed from: d */
    public InputStream a() throws IOException {
        this.f8560a.reset();
        return this.f8560a;
    }
}
