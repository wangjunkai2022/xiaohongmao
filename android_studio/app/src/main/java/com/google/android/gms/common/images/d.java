package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.internal.base.k;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f29044a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f29045b;

    /* renamed from: c  reason: collision with root package name */
    private final CountDownLatch f29046c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ImageManager f29047d;

    public d(ImageManager imageManager, @Nullable Uri uri, Bitmap bitmap, boolean z9, CountDownLatch countDownLatch) {
        this.f29047d = imageManager;
        this.f29044a = uri;
        this.f29045b = bitmap;
        this.f29046c = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        Object obj;
        HashSet hashSet;
        ArrayList arrayList;
        Map map2;
        k kVar;
        Map map3;
        com.google.android.gms.common.internal.d.a("OnBitmapLoadedRunnable must be executed in the main thread");
        Bitmap bitmap = this.f29045b;
        map = this.f29047d.f29035f;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.remove(this.f29044a);
        if (imageReceiver != null) {
            arrayList = imageReceiver.zac;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                h hVar = (h) arrayList.get(i4);
                Bitmap bitmap2 = this.f29045b;
                if (bitmap2 != null && bitmap != null) {
                    hVar.c(this.f29047d.f29030a, bitmap2, false);
                } else {
                    map2 = this.f29047d.f29036g;
                    map2.put(this.f29044a, Long.valueOf(SystemClock.elapsedRealtime()));
                    ImageManager imageManager = this.f29047d;
                    Context context = imageManager.f29030a;
                    kVar = imageManager.f29033d;
                    hVar.b(context, kVar, false);
                }
                if (!(hVar instanceof g)) {
                    map3 = this.f29047d.f29034e;
                    map3.remove(hVar);
                }
            }
        }
        this.f29046c.countDown();
        obj = ImageManager.f29027h;
        synchronized (obj) {
            hashSet = ImageManager.f29028i;
            hashSet.remove(this.f29044a);
        }
    }
}
