package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.o;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamBitmapDecoder.java */
/* loaded from: classes.dex */
public class d0 implements com.bumptech.glide.load.g<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final o f9212a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f9213b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamBitmapDecoder.java */
    /* loaded from: classes.dex */
    public static class a implements o.b {

        /* renamed from: a  reason: collision with root package name */
        private final z f9214a;

        /* renamed from: b  reason: collision with root package name */
        private final com.bumptech.glide.util.e f9215b;

        a(z zVar, com.bumptech.glide.util.e eVar) {
            this.f9214a = zVar;
            this.f9215b = eVar;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.o.b
        public void a(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, Bitmap bitmap) throws IOException {
            IOException b10 = this.f9215b.b();
            if (b10 != null) {
                if (bitmap != null) {
                    eVar.d(bitmap);
                }
                throw b10;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.o.b
        public void b() {
            this.f9214a.b();
        }
    }

    public d0(o oVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f9212a = oVar;
        this.f9213b = bVar;
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull InputStream inputStream, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        z zVar;
        boolean z9;
        if (inputStream instanceof z) {
            zVar = (z) inputStream;
            z9 = false;
        } else {
            zVar = new z(inputStream, this.f9213b);
            z9 = true;
        }
        com.bumptech.glide.util.e d4 = com.bumptech.glide.util.e.d(zVar);
        try {
            return this.f9212a.g(new com.bumptech.glide.util.k(d4), i4, i10, fVar, new a(zVar, d4));
        } finally {
            d4.release();
            if (z9) {
                zVar.release();
            }
        }
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.f fVar) {
        return this.f9212a.s(inputStream);
    }
}
