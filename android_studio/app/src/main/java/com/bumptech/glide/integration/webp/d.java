package com.bumptech.glide.integration.webp;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.Registry;
import com.bumptech.glide.integration.webp.decoder.f;
import com.bumptech.glide.integration.webp.decoder.g;
import com.bumptech.glide.integration.webp.decoder.j;
import com.bumptech.glide.integration.webp.decoder.k;
import com.bumptech.glide.integration.webp.decoder.l;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: WebpGlideLibraryModule.java */
@b0.c
/* loaded from: classes.dex */
public class d extends com.bumptech.glide.module.d {
    @Override // com.bumptech.glide.module.d, com.bumptech.glide.module.f
    public void b(Context context, com.bumptech.glide.c cVar, Registry registry) {
        Resources resources = context.getResources();
        e h4 = cVar.h();
        com.bumptech.glide.load.engine.bitmap_recycle.b g4 = cVar.g();
        j jVar = new j(registry.g(), resources.getDisplayMetrics(), h4, g4);
        com.bumptech.glide.integration.webp.decoder.a aVar = new com.bumptech.glide.integration.webp.decoder.a(g4, h4);
        com.bumptech.glide.integration.webp.decoder.c cVar2 = new com.bumptech.glide.integration.webp.decoder.c(jVar);
        f fVar = new f(jVar, g4);
        com.bumptech.glide.integration.webp.decoder.d dVar = new com.bumptech.glide.integration.webp.decoder.d(context, g4, h4);
        registry.s(Registry.f7118m, ByteBuffer.class, Bitmap.class, cVar2).s(Registry.f7118m, InputStream.class, Bitmap.class, fVar).s(Registry.f7119n, ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, cVar2)).s(Registry.f7119n, InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, fVar)).s(Registry.f7118m, ByteBuffer.class, Bitmap.class, new com.bumptech.glide.integration.webp.decoder.b(aVar)).s(Registry.f7118m, InputStream.class, Bitmap.class, new com.bumptech.glide.integration.webp.decoder.e(aVar)).q(ByteBuffer.class, k.class, dVar).q(InputStream.class, k.class, new g(dVar, g4)).p(k.class, new l());
    }
}
