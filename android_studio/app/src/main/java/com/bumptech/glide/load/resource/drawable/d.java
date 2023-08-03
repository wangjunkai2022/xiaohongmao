package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.l;
import com.bumptech.glide.request.transition.c;

/* compiled from: DrawableTransitionOptions.java */
/* loaded from: classes.dex */
public final class d extends l<d, Drawable> {
    @NonNull
    public static d l(@NonNull com.bumptech.glide.request.transition.g<Drawable> gVar) {
        return new d().f(gVar);
    }

    @NonNull
    public static d m() {
        return new d().h();
    }

    @NonNull
    public static d n(int i4) {
        return new d().i(i4);
    }

    @NonNull
    public static d o(@NonNull c.a aVar) {
        return new d().j(aVar);
    }

    @NonNull
    public static d p(@NonNull com.bumptech.glide.request.transition.c cVar) {
        return new d().k(cVar);
    }

    @NonNull
    public d h() {
        return j(new c.a());
    }

    @NonNull
    public d i(int i4) {
        return j(new c.a(i4));
    }

    @NonNull
    public d j(@NonNull c.a aVar) {
        return k(aVar.a());
    }

    @NonNull
    public d k(@NonNull com.bumptech.glide.request.transition.c cVar) {
        return f(cVar);
    }
}
