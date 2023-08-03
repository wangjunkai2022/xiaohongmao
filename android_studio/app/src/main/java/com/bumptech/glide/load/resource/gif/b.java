package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.gifdecoder.a;

/* compiled from: GifBitmapProvider.java */
/* loaded from: classes.dex */
public final class b implements a.InterfaceC0042a {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9361a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f9362b;

    public b(com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        this(eVar, null);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0042a
    public void a(@NonNull Bitmap bitmap) {
        this.f9361a.d(bitmap);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0042a
    @NonNull
    public byte[] b(int i4) {
        com.bumptech.glide.load.engine.bitmap_recycle.b bVar = this.f9362b;
        if (bVar == null) {
            return new byte[i4];
        }
        return (byte[]) bVar.c(i4, byte[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0042a
    @NonNull
    public Bitmap c(int i4, int i10, @NonNull Bitmap.Config config) {
        return this.f9361a.f(i4, i10, config);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0042a
    @NonNull
    public int[] d(int i4) {
        com.bumptech.glide.load.engine.bitmap_recycle.b bVar = this.f9362b;
        if (bVar == null) {
            return new int[i4];
        }
        return (int[]) bVar.c(i4, int[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0042a
    public void e(@NonNull byte[] bArr) {
        com.bumptech.glide.load.engine.bitmap_recycle.b bVar = this.f9362b;
        if (bVar == null) {
            return;
        }
        bVar.put(bArr);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0042a
    public void f(@NonNull int[] iArr) {
        com.bumptech.glide.load.engine.bitmap_recycle.b bVar = this.f9362b;
        if (bVar == null) {
            return;
        }
        bVar.put(iArr);
    }

    public b(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @Nullable com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f9361a = eVar;
        this.f9362b = bVar;
    }
}
