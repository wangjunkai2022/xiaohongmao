package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.drawable.k;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DefaultDrawableFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b implements n1.a {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f11107a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final n1.a f11108b;

    public b(Resources resources, @r7.h n1.a animatedDrawableFactory) {
        this.f11107a = resources;
        this.f11108b = animatedDrawableFactory;
    }

    private static boolean c(com.facebook.imagepipeline.image.d closeableStaticBitmap) {
        return (closeableStaticBitmap.A() == 1 || closeableStaticBitmap.A() == 0) ? false : true;
    }

    private static boolean d(com.facebook.imagepipeline.image.d closeableStaticBitmap) {
        return (closeableStaticBitmap.D() == 0 || closeableStaticBitmap.D() == -1) ? false : true;
    }

    @Override // n1.a
    public boolean a(com.facebook.imagepipeline.image.c image) {
        return true;
    }

    @Override // n1.a
    @r7.h
    public Drawable b(com.facebook.imagepipeline.image.c closeableImage) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DefaultDrawableFactory#createDrawable");
            }
            if (closeableImage instanceof com.facebook.imagepipeline.image.d) {
                com.facebook.imagepipeline.image.d dVar = (com.facebook.imagepipeline.image.d) closeableImage;
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f11107a, dVar.k());
                if (d(dVar) || c(dVar)) {
                    k kVar = new k(bitmapDrawable, dVar.D(), dVar.A());
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                    return kVar;
                }
                return bitmapDrawable;
            }
            n1.a aVar = this.f11108b;
            if (aVar != null && aVar.a(closeableImage)) {
                Drawable b10 = this.f11108b.b(closeableImage);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return b10;
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return null;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }
}
