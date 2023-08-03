package com.facebook.imagepipeline.request;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.facebook.imagepipeline.core.o;
import com.facebook.infer.annotation.Nullsafe;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import r7.h;

/* compiled from: BasePostprocessor.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class a implements d {

    /* renamed from: a  reason: collision with root package name */
    public static final Bitmap.Config f13367a = Bitmap.Config.ARGB_8888;

    /* renamed from: b  reason: collision with root package name */
    private static Method f13368b;

    private static void d(Bitmap destBitmap, Bitmap sourceBitmap) {
        if (o.a() && destBitmap.getConfig() == sourceBitmap.getConfig()) {
            try {
                if (f13368b == null) {
                    f13368b = Class.forName("com.facebook.imagepipeline.nativecode.Bitmaps").getDeclaredMethod("copyBitmap", Bitmap.class, Bitmap.class);
                }
                f13368b.invoke(null, destBitmap, sourceBitmap);
                return;
            } catch (ClassNotFoundException e4) {
                throw new RuntimeException("Wrong Native code setup, reflection failed.", e4);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Wrong Native code setup, reflection failed.", e10);
            } catch (NoSuchMethodException e11) {
                throw new RuntimeException("Wrong Native code setup, reflection failed.", e11);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException("Wrong Native code setup, reflection failed.", e12);
            }
        }
        new Canvas(destBitmap).drawBitmap(sourceBitmap, 0.0f, 0.0f, (Paint) null);
    }

    @Override // com.facebook.imagepipeline.request.d
    @h
    public com.facebook.cache.common.c a() {
        return null;
    }

    @Override // com.facebook.imagepipeline.request.d
    public com.facebook.common.references.a<Bitmap> c(Bitmap sourceBitmap, com.facebook.imagepipeline.bitmaps.f bitmapFactory) {
        Bitmap.Config config = sourceBitmap.getConfig();
        int width = sourceBitmap.getWidth();
        int height = sourceBitmap.getHeight();
        if (config == null) {
            config = f13367a;
        }
        com.facebook.common.references.a<Bitmap> z9 = bitmapFactory.z(width, height, config);
        try {
            f(z9.q(), sourceBitmap);
            return z9.clone();
        } finally {
            com.facebook.common.references.a.k(z9);
        }
    }

    public void e(Bitmap bitmap) {
    }

    public void f(Bitmap destBitmap, Bitmap sourceBitmap) {
        d(destBitmap, sourceBitmap);
        e(destBitmap);
    }

    @Override // com.facebook.imagepipeline.request.d
    public String getName() {
        return "Unknown postprocessor";
    }
}
