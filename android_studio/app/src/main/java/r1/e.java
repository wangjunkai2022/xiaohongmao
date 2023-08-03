package r1;

import android.graphics.Bitmap;
import com.facebook.cache.common.j;
import com.facebook.imagepipeline.nativecode.NativeRoundingFilter;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: RoundedCornersPostprocessor.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e extends com.facebook.imagepipeline.request.a {
    @h

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.cache.common.c f93195c;

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @h
    public com.facebook.cache.common.c a() {
        if (this.f93195c == null) {
            this.f93195c = new j("RoundedCornersPostprocessor");
        }
        return this.f93195c;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        int min = Math.min(bitmap.getHeight(), bitmap.getWidth());
        NativeRoundingFilter.a(bitmap, min / 2, min / 3, min / 4, min / 5);
    }
}
