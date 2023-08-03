package r1;

import android.graphics.Bitmap;
import com.facebook.cache.common.j;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: RoundPostprocessor.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d extends com.facebook.imagepipeline.request.a {

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f93191e = true;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f93192f = o1.d.a();
    @h

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.cache.common.c f93193c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f93194d;

    public d() {
        this(true);
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @h
    public com.facebook.cache.common.c a() {
        if (this.f93193c == null) {
            if (f93192f) {
                this.f93193c = new j("XferRoundFilter");
            } else {
                this.f93193c = new j("InPlaceRoundFilter");
            }
        }
        return this.f93193c;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        o1.a.a(bitmap);
    }

    @Override // com.facebook.imagepipeline.request.a
    public void f(Bitmap destBitmap, Bitmap sourceBitmap) {
        com.facebook.common.internal.j.i(destBitmap);
        com.facebook.common.internal.j.i(sourceBitmap);
        if (f93192f) {
            o1.d.b(destBitmap, sourceBitmap, this.f93194d);
        } else {
            super.f(destBitmap, sourceBitmap);
        }
    }

    public d(boolean enableAntiAliasing) {
        this.f93194d = enableAntiAliasing;
    }
}
