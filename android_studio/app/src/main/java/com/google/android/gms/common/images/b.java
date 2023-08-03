package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f29039a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final ParcelFileDescriptor f29040b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ImageManager f29041c;

    public b(ImageManager imageManager, @Nullable Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.f29041c = imageManager;
        this.f29039a = uri;
        this.f29040b = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmap;
        boolean z9;
        Handler handler;
        com.google.android.gms.common.internal.d.b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        ParcelFileDescriptor parcelFileDescriptor = this.f29040b;
        Bitmap bitmap2 = null;
        boolean z10 = false;
        if (parcelFileDescriptor != null) {
            try {
                bitmap2 = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError e4) {
                Log.e("ImageManager", "OOM while loading bitmap for uri: ".concat(String.valueOf(this.f29039a)), e4);
                z10 = true;
            }
            try {
                this.f29040b.close();
            } catch (IOException e10) {
                Log.e("ImageManager", "closed failed", e10);
            }
            bitmap = bitmap2;
            z9 = z10;
        } else {
            bitmap = null;
            z9 = false;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager imageManager = this.f29041c;
        handler = imageManager.f29031b;
        handler.post(new d(imageManager, this.f29039a, bitmap, z9, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Log.w("ImageManager", "Latch interrupted while posting ".concat(String.valueOf(this.f29039a)));
        }
    }
}
