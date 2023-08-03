package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;

/* compiled from: ParcelFileDescriptorBitmapDecoder.java */
@RequiresApi(21)
/* loaded from: classes.dex */
public final class y implements com.bumptech.glide.load.g<ParcelFileDescriptor, Bitmap> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f9326b = 536870912;

    /* renamed from: a  reason: collision with root package name */
    private final o f9327a;

    public y(o oVar) {
        this.f9327a = oVar;
    }

    private boolean e(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
        String str = Build.MANUFACTURER;
        return !("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= KSYMediaMeta.AV_CH_STEREO_LEFT;
    }

    @Override // com.bumptech.glide.load.g
    @Nullable
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull ParcelFileDescriptor parcelFileDescriptor, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f9327a.d(parcelFileDescriptor, i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull com.bumptech.glide.load.f fVar) {
        return e(parcelFileDescriptor) && this.f9327a.r(parcelFileDescriptor);
    }
}
