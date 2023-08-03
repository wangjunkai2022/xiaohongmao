package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import com.bumptech.glide.load.resource.bitmap.h0;
import java.io.InputStream;

/* compiled from: MediaStoreVideoThumbLoader.java */
/* loaded from: classes.dex */
public class e implements n<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9116a;

    /* compiled from: MediaStoreVideoThumbLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f9117a;

        public a(Context context) {
            this.f9117a = context;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, InputStream> c(r rVar) {
            return new e(this.f9117a);
        }
    }

    public e(Context context) {
        this.f9116a = context.getApplicationContext();
    }

    private boolean e(com.bumptech.glide.load.f fVar) {
        Long l10 = (Long) fVar.c(h0.f9241g);
        return l10 != null && l10.longValue() == -1;
    }

    @Override // com.bumptech.glide.load.model.n
    @Nullable
    /* renamed from: c */
    public n.a<InputStream> b(@NonNull Uri uri, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        if (com.bumptech.glide.load.data.mediastore.b.d(i4, i10) && e(fVar)) {
            return new n.a<>(new com.bumptech.glide.signature.e(uri), com.bumptech.glide.load.data.mediastore.c.f(this.f9116a, uri));
        }
        return null;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull Uri uri) {
        return com.bumptech.glide.load.data.mediastore.b.c(uri);
    }
}
