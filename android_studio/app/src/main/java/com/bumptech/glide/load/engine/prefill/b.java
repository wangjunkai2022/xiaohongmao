package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.cache.j;
import com.bumptech.glide.load.engine.prefill.d;
import com.bumptech.glide.util.o;
import java.util.HashMap;

/* compiled from: BitmapPreFiller.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final j f8956a;

    /* renamed from: b  reason: collision with root package name */
    private final e f8957b;

    /* renamed from: c  reason: collision with root package name */
    private final DecodeFormat f8958c;

    /* renamed from: d  reason: collision with root package name */
    private a f8959d;

    public b(j jVar, e eVar, DecodeFormat decodeFormat) {
        this.f8956a = jVar;
        this.f8957b = eVar;
        this.f8958c = decodeFormat;
    }

    private static int b(d dVar) {
        return o.g(dVar.d(), dVar.b(), dVar.a());
    }

    @VisibleForTesting
    c a(d... dVarArr) {
        long maxSize = (this.f8956a.getMaxSize() - this.f8956a.getCurrentSize()) + this.f8957b.getMaxSize();
        int i4 = 0;
        for (d dVar : dVarArr) {
            i4 += dVar.c();
        }
        float f10 = ((float) maxSize) / i4;
        HashMap hashMap = new HashMap();
        for (d dVar2 : dVarArr) {
            hashMap.put(dVar2, Integer.valueOf(Math.round(dVar2.c() * f10) / b(dVar2)));
        }
        return new c(hashMap);
    }

    public void c(d.a... aVarArr) {
        Bitmap.Config config;
        a aVar = this.f8959d;
        if (aVar != null) {
            aVar.b();
        }
        d[] dVarArr = new d[aVarArr.length];
        for (int i4 = 0; i4 < aVarArr.length; i4++) {
            d.a aVar2 = aVarArr[i4];
            if (aVar2.b() == null) {
                if (this.f8958c == DecodeFormat.PREFER_ARGB_8888) {
                    config = Bitmap.Config.ARGB_8888;
                } else {
                    config = Bitmap.Config.RGB_565;
                }
                aVar2.c(config);
            }
            dVarArr[i4] = aVar2.a();
        }
        a aVar3 = new a(this.f8957b, this.f8956a, a(dVarArr));
        this.f8959d = aVar3;
        o.x(aVar3);
    }
}
