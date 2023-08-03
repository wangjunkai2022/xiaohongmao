package r1;

import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: BlurPostProcessor.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a extends com.facebook.imagepipeline.request.a {

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f93178g = o1.c.b();

    /* renamed from: h  reason: collision with root package name */
    private static final int f93179h = 3;

    /* renamed from: c  reason: collision with root package name */
    private final int f93180c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f93181d;

    /* renamed from: e  reason: collision with root package name */
    private final int f93182e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private com.facebook.cache.common.c f93183f;

    public a(final int blurRadius, final Context context, final int iterations) {
        j.d(Boolean.valueOf(blurRadius > 0 && blurRadius <= 25));
        j.d(Boolean.valueOf(iterations > 0));
        j.i(context);
        this.f93180c = iterations;
        this.f93182e = blurRadius;
        this.f93181d = context;
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @h
    public com.facebook.cache.common.c a() {
        if (this.f93183f == null) {
            this.f93183f = new com.facebook.cache.common.j(f93178g ? String.format(null, "IntrinsicBlur;%d", Integer.valueOf(this.f93182e)) : String.format(null, "IterativeBoxBlur;%d;%d", Integer.valueOf(this.f93180c), Integer.valueOf(this.f93182e)));
        }
        return this.f93183f;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(final Bitmap bitmap) {
        o1.b.b(bitmap, this.f93180c, this.f93182e);
    }

    @Override // com.facebook.imagepipeline.request.a
    public void f(final Bitmap destBitmap, final Bitmap sourceBitmap) {
        if (f93178g) {
            o1.c.a(destBitmap, sourceBitmap, this.f93181d, this.f93182e);
        } else {
            super.f(destBitmap, sourceBitmap);
        }
    }

    public a(final int blurRadius, final Context context) {
        this(blurRadius, context, 3);
    }
}
