package r1;

import android.graphics.Bitmap;
import com.facebook.cache.common.j;
import com.facebook.imagepipeline.nativecode.NativeRoundingFilter;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: RoundAsCirclePostprocessor.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c extends com.facebook.imagepipeline.request.a {

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f93188e = true;
    @h

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.cache.common.c f93189c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f93190d;

    public c() {
        this(true);
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @h
    public com.facebook.cache.common.c a() {
        if (this.f93189c == null) {
            if (this.f93190d) {
                this.f93189c = new j("RoundAsCirclePostprocessor#AntiAliased");
            } else {
                this.f93189c = new j("RoundAsCirclePostprocessor");
            }
        }
        return this.f93189c;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        NativeRoundingFilter.toCircleFast(bitmap, this.f93190d);
    }

    public c(boolean enableAntiAliasing) {
        this.f93190d = enableAntiAliasing;
    }
}
