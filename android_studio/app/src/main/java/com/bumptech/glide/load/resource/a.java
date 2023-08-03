package com.bumptech.glide.load.resource;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.o;
import com.bumptech.glide.load.resource.bitmap.u;
import io.sentry.protocol.y;

/* compiled from: DefaultOnHeaderDecodedListener.java */
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class a implements ImageDecoder.OnHeaderDecodedListener {

    /* renamed from: h  reason: collision with root package name */
    private static final String f9149h = "ImageDecoder";

    /* renamed from: a  reason: collision with root package name */
    private final u f9150a = u.d();

    /* renamed from: b  reason: collision with root package name */
    private final int f9151b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9152c;

    /* renamed from: d  reason: collision with root package name */
    private final DecodeFormat f9153d;

    /* renamed from: e  reason: collision with root package name */
    private final DownsampleStrategy f9154e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f9155f;

    /* renamed from: g  reason: collision with root package name */
    private final PreferredColorSpace f9156g;

    /* compiled from: DefaultOnHeaderDecodedListener.java */
    /* renamed from: com.bumptech.glide.load.resource.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0060a implements ImageDecoder.OnPartialImageListener {
        C0060a() {
        }

        @Override // android.graphics.ImageDecoder.OnPartialImageListener
        public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
            return false;
        }
    }

    public a(int i4, int i10, @NonNull f fVar) {
        this.f9151b = i4;
        this.f9152c = i10;
        this.f9153d = (DecodeFormat) fVar.c(o.f9262g);
        this.f9154e = (DownsampleStrategy) fVar.c(DownsampleStrategy.f9195h);
        e<Boolean> eVar = o.f9266k;
        this.f9155f = fVar.c(eVar) != null && ((Boolean) fVar.c(eVar)).booleanValue();
        this.f9156g = (PreferredColorSpace) fVar.c(o.f9263h);
    }

    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
    public void onHeaderDecoded(@NonNull ImageDecoder imageDecoder, @NonNull ImageDecoder.ImageInfo imageInfo, @NonNull ImageDecoder.Source source) {
        boolean z9 = false;
        if (this.f9150a.g(this.f9151b, this.f9152c, this.f9155f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f9153d == DecodeFormat.PREFER_RGB_565) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new C0060a());
        Size size = imageInfo.getSize();
        int i4 = this.f9151b;
        if (i4 == Integer.MIN_VALUE) {
            i4 = size.getWidth();
        }
        int i10 = this.f9152c;
        if (i10 == Integer.MIN_VALUE) {
            i10 = size.getHeight();
        }
        float b10 = this.f9154e.b(size.getWidth(), size.getHeight(), i4, i10);
        int round = Math.round(size.getWidth() * b10);
        int round2 = Math.round(size.getHeight() * b10);
        if (Log.isLoggable(f9149h, 2)) {
            Log.v(f9149h, "Resizing from [" + size.getWidth() + y.b.f83919g + size.getHeight() + "] to [" + round + y.b.f83919g + round2 + "] scaleFactor: " + b10);
        }
        imageDecoder.setTargetSize(round, round2);
        PreferredColorSpace preferredColorSpace = this.f9156g;
        if (preferredColorSpace != null) {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 < 28) {
                if (i11 >= 26) {
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                    return;
                }
                return;
            }
            if (preferredColorSpace == PreferredColorSpace.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                z9 = true;
            }
            imageDecoder.setTargetColorSpace(ColorSpace.get(z9 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
        }
    }
}
