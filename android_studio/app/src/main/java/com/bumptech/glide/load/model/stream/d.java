package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.InputStream;

/* compiled from: MediaStoreImageThumbLoader.java */
/* loaded from: classes.dex */
public class d implements n<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9114a;

    /* compiled from: MediaStoreImageThumbLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f9115a;

        public a(Context context) {
            this.f9115a = context;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, InputStream> c(r rVar) {
            return new d(this.f9115a);
        }
    }

    public d(Context context) {
        this.f9114a = context.getApplicationContext();
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<InputStream> b(@NonNull Uri uri, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        if (com.bumptech.glide.load.data.mediastore.b.d(i4, i10)) {
            return new n.a<>(new com.bumptech.glide.signature.e(uri), com.bumptech.glide.load.data.mediastore.c.e(this.f9114a, uri));
        }
        return null;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull Uri uri) {
        return com.bumptech.glide.load.data.mediastore.b.a(uri);
    }
}
