package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import io.sentry.protocol.y;
import java.io.IOException;

/* compiled from: BitmapImageDecoderResourceDecoder.java */
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class f implements com.bumptech.glide.load.g<ImageDecoder.Source, Bitmap> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f9233b = "BitmapImageDecoder";

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9234a = new com.bumptech.glide.load.engine.bitmap_recycle.f();

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull ImageDecoder.Source source, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, new com.bumptech.glide.load.resource.a(i4, i10, fVar));
        if (Log.isLoggable(f9233b, 2)) {
            Log.v(f9233b, "Decoded [" + decodeBitmap.getWidth() + y.b.f83919g + decodeBitmap.getHeight() + "] for [" + i4 + y.b.f83919g + i10 + "]");
        }
        return new g(decodeBitmap, this.f9234a);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull ImageDecoder.Source source, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return true;
    }
}
