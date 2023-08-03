package com.google.android.gms.common.images;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.internal.base.k;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f29042a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ImageManager f29043b;

    public c(ImageManager imageManager, h hVar) {
        this.f29043b = imageManager;
        this.f29042a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        k kVar;
        Map map2;
        Map map3;
        Object obj;
        HashSet hashSet;
        HashSet hashSet2;
        Map map4;
        Map map5;
        Map map6;
        k kVar2;
        Map map7;
        com.google.android.gms.common.internal.d.a("LoadImageRunnable must be executed on the main thread");
        map = this.f29043b.f29034e;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.get(this.f29042a);
        if (imageReceiver != null) {
            map7 = this.f29043b.f29034e;
            map7.remove(this.f29042a);
            imageReceiver.zac(this.f29042a);
        }
        h hVar = this.f29042a;
        e eVar = hVar.f29051a;
        Uri uri = eVar.f29048a;
        if (uri != null) {
            map2 = this.f29043b.f29036g;
            Long l10 = (Long) map2.get(uri);
            if (l10 != null) {
                if (SystemClock.elapsedRealtime() - l10.longValue() < 3600000) {
                    h hVar2 = this.f29042a;
                    ImageManager imageManager = this.f29043b;
                    Context context = imageManager.f29030a;
                    kVar2 = imageManager.f29033d;
                    hVar2.b(context, kVar2, true);
                    return;
                }
                map6 = this.f29043b.f29036g;
                map6.remove(eVar.f29048a);
            }
            this.f29042a.a(null, false, true, false);
            map3 = this.f29043b.f29035f;
            ImageManager.ImageReceiver imageReceiver2 = (ImageManager.ImageReceiver) map3.get(eVar.f29048a);
            if (imageReceiver2 == null) {
                imageReceiver2 = new ImageManager.ImageReceiver(eVar.f29048a);
                map5 = this.f29043b.f29035f;
                map5.put(eVar.f29048a, imageReceiver2);
            }
            imageReceiver2.zab(this.f29042a);
            h hVar3 = this.f29042a;
            if (!(hVar3 instanceof g)) {
                map4 = this.f29043b.f29034e;
                map4.put(hVar3, imageReceiver2);
            }
            obj = ImageManager.f29027h;
            synchronized (obj) {
                hashSet = ImageManager.f29028i;
                if (!hashSet.contains(eVar.f29048a)) {
                    hashSet2 = ImageManager.f29028i;
                    hashSet2.add(eVar.f29048a);
                    imageReceiver2.zad();
                }
            }
            return;
        }
        ImageManager imageManager2 = this.f29043b;
        Context context2 = imageManager2.f29030a;
        kVar = imageManager2.f29033d;
        hVar.b(context2, kVar, true);
    }
}
