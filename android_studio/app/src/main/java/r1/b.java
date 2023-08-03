package r1;

import android.graphics.Bitmap;
import com.facebook.cache.common.j;
import com.facebook.imagepipeline.nativecode.NativeBlurFilter;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: IterativeBoxBlurPostProcessor.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b extends com.facebook.imagepipeline.request.a {

    /* renamed from: f  reason: collision with root package name */
    private static final int f93184f = 3;

    /* renamed from: c  reason: collision with root package name */
    private final int f93185c;

    /* renamed from: d  reason: collision with root package name */
    private final int f93186d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.cache.common.c f93187e;

    public b(int blurRadius) {
        this(3, blurRadius);
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @h
    public com.facebook.cache.common.c a() {
        if (this.f93187e == null) {
            this.f93187e = new j(String.format(null, "i%dr%d", Integer.valueOf(this.f93185c), Integer.valueOf(this.f93186d)));
        }
        return this.f93187e;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        NativeBlurFilter.a(bitmap, this.f93185c, this.f93186d);
    }

    public b(int iterations, int blurRadius) {
        com.facebook.common.internal.j.d(Boolean.valueOf(iterations > 0));
        com.facebook.common.internal.j.d(Boolean.valueOf(blurRadius > 0));
        this.f93185c = iterations;
        this.f93186d = blurRadius;
    }
}
