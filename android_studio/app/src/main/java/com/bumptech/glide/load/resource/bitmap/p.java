package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.Lock;

/* compiled from: DrawableToBitmapConverter.java */
/* loaded from: classes.dex */
final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9278a = "DrawableToBitmap";

    /* renamed from: b  reason: collision with root package name */
    private static final com.bumptech.glide.load.engine.bitmap_recycle.e f9279b = new a();

    /* compiled from: DrawableToBitmapConverter.java */
    /* loaded from: classes.dex */
    class a extends com.bumptech.glide.load.engine.bitmap_recycle.f {
        a() {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.f, com.bumptech.glide.load.engine.bitmap_recycle.e
        public void d(Bitmap bitmap) {
        }
    }

    private p() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static com.bumptech.glide.load.engine.u<Bitmap> a(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, Drawable drawable, int i4, int i10) {
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        boolean z9 = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmap = null;
        } else {
            bitmap = b(eVar, current, i4, i10);
            z9 = true;
        }
        if (!z9) {
            eVar = f9279b;
        }
        return g.c(bitmap, eVar);
    }

    @Nullable
    private static Bitmap b(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, Drawable drawable, int i4, int i10) {
        if (i4 == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            if (Log.isLoggable(f9278a, 5)) {
                Log.w(f9278a, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            return null;
        } else if (i10 == Integer.MIN_VALUE && drawable.getIntrinsicHeight() <= 0) {
            if (Log.isLoggable(f9278a, 5)) {
                Log.w(f9278a, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
            }
            return null;
        } else {
            if (drawable.getIntrinsicWidth() > 0) {
                i4 = drawable.getIntrinsicWidth();
            }
            if (drawable.getIntrinsicHeight() > 0) {
                i10 = drawable.getIntrinsicHeight();
            }
            Lock i11 = e0.i();
            i11.lock();
            Bitmap e4 = eVar.e(i4, i10, Bitmap.Config.ARGB_8888);
            try {
                Canvas canvas = new Canvas(e4);
                drawable.setBounds(0, 0, i4, i10);
                drawable.draw(canvas);
                canvas.setBitmap(null);
                return e4;
            } finally {
                i11.unlock();
            }
        }
    }
}
