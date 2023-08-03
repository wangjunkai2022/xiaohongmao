package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.s;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class g extends h {

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<ImageManager.a> f29050c;

    public g(ImageManager.a aVar, Uri uri) {
        super(uri, 0);
        com.google.android.gms.common.internal.d.c(aVar);
        this.f29050c = new WeakReference<>(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.images.h
    public final void a(@Nullable Drawable drawable, boolean z9, boolean z10, boolean z11) {
        ImageManager.a aVar;
        if (z10 || (aVar = this.f29050c.get()) == null) {
            return;
        }
        aVar.a(this.f29051a.f29048a, drawable, z11);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            ImageManager.a aVar = this.f29050c.get();
            ImageManager.a aVar2 = gVar.f29050c.get();
            return aVar2 != null && aVar != null && s.b(aVar2, aVar) && s.b(gVar.f29051a, this.f29051a);
        }
        return false;
    }

    public final int hashCode() {
        return s.c(this.f29051a);
    }
}
