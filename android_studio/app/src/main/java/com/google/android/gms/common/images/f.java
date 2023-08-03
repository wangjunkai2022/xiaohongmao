package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.base.j;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class f extends h {

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<ImageView> f29049c;

    public f(ImageView imageView, int i4) {
        super(Uri.EMPTY, i4);
        com.google.android.gms.common.internal.d.c(imageView);
        this.f29049c = new WeakReference<>(imageView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.images.h
    public final void a(@Nullable Drawable drawable, boolean z9, boolean z10, boolean z11) {
        ImageView imageView = this.f29049c.get();
        if (imageView != null) {
            if (!z10 && !z11 && (imageView instanceof j)) {
                j jVar = (j) imageView;
                throw null;
            }
            boolean z12 = false;
            if (!z10 && !z9) {
                z12 = true;
            }
            if (z12) {
                Drawable drawable2 = imageView.getDrawable();
                if (drawable2 == null) {
                    drawable2 = null;
                } else if (drawable2 instanceof com.google.android.gms.internal.base.i) {
                    drawable2 = ((com.google.android.gms.internal.base.i) drawable2).a();
                }
                drawable = new com.google.android.gms.internal.base.i(drawable2, drawable);
            }
            imageView.setImageDrawable(drawable);
            if (imageView instanceof j) {
                j jVar2 = (j) imageView;
                throw null;
            } else if (drawable == null || !z12) {
            } else {
                ((com.google.android.gms.internal.base.i) drawable).b(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
            }
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            ImageView imageView = this.f29049c.get();
            ImageView imageView2 = ((f) obj).f29049c.get();
            return (imageView2 == null || imageView == null || !s.b(imageView2, imageView)) ? false : true;
        }
        return false;
    }

    public final int hashCode() {
        return 0;
    }

    public f(ImageView imageView, Uri uri) {
        super(uri, 0);
        com.google.android.gms.common.internal.d.c(imageView);
        this.f29049c = new WeakReference<>(imageView);
    }
}
