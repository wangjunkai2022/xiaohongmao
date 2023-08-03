package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.request.transition.c;

/* compiled from: BitmapTransitionOptions.java */
/* loaded from: classes.dex */
public final class i extends com.bumptech.glide.l<i, Bitmap> {
    @NonNull
    public static i m(@NonNull com.bumptech.glide.request.transition.g<Bitmap> gVar) {
        return new i().f(gVar);
    }

    @NonNull
    public static i n() {
        return new i().h();
    }

    @NonNull
    public static i o(int i4) {
        return new i().i(i4);
    }

    @NonNull
    public static i p(@NonNull c.a aVar) {
        return new i().j(aVar);
    }

    @NonNull
    public static i q(@NonNull com.bumptech.glide.request.transition.c cVar) {
        return new i().k(cVar);
    }

    @NonNull
    public static i r(@NonNull com.bumptech.glide.request.transition.g<Drawable> gVar) {
        return new i().l(gVar);
    }

    @NonNull
    public i h() {
        return j(new c.a());
    }

    @NonNull
    public i i(int i4) {
        return j(new c.a(i4));
    }

    @NonNull
    public i j(@NonNull c.a aVar) {
        return l(aVar.a());
    }

    @NonNull
    public i k(@NonNull com.bumptech.glide.request.transition.c cVar) {
        return l(cVar);
    }

    @NonNull
    public i l(@NonNull com.bumptech.glide.request.transition.g<Drawable> gVar) {
        return f(new com.bumptech.glide.request.transition.b(gVar));
    }
}
