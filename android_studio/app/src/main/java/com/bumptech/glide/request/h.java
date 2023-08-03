package com.bumptech.glide.request;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;

/* compiled from: RequestOptions.java */
/* loaded from: classes.dex */
public class h extends a<h> {
    @Nullable
    private static h T1;
    @Nullable
    private static h V;
    @Nullable
    private static h W;
    @Nullable

    /* renamed from: b1  reason: collision with root package name */
    private static h f9554b1;
    @Nullable

    /* renamed from: g1  reason: collision with root package name */
    private static h f9555g1;
    @Nullable

    /* renamed from: p1  reason: collision with root package name */
    private static h f9556p1;
    @Nullable

    /* renamed from: x1  reason: collision with root package name */
    private static h f9557x1;
    @Nullable

    /* renamed from: y1  reason: collision with root package name */
    private static h f9558y1;

    @NonNull
    @CheckResult
    public static h S0(@NonNull com.bumptech.glide.load.i<Bitmap> iVar) {
        return new h().J0(iVar);
    }

    @NonNull
    @CheckResult
    public static h T0() {
        if (f9556p1 == null) {
            f9556p1 = new h().f().e();
        }
        return f9556p1;
    }

    @NonNull
    @CheckResult
    public static h U0() {
        if (f9555g1 == null) {
            f9555g1 = new h().j().e();
        }
        return f9555g1;
    }

    @NonNull
    @CheckResult
    public static h V0() {
        if (f9557x1 == null) {
            f9557x1 = new h().k().e();
        }
        return f9557x1;
    }

    @NonNull
    @CheckResult
    public static h W0(@NonNull Class<?> cls) {
        return new h().p(cls);
    }

    @NonNull
    @CheckResult
    public static h X0(@NonNull com.bumptech.glide.load.engine.j jVar) {
        return new h().r(jVar);
    }

    @NonNull
    @CheckResult
    public static h Y0(@NonNull DownsampleStrategy downsampleStrategy) {
        return new h().u(downsampleStrategy);
    }

    @NonNull
    @CheckResult
    public static h Z0(@NonNull Bitmap.CompressFormat compressFormat) {
        return new h().v(compressFormat);
    }

    @NonNull
    @CheckResult
    public static h a1(@IntRange(from = 0, to = 100) int i4) {
        return new h().w(i4);
    }

    @NonNull
    @CheckResult
    public static h b1(@DrawableRes int i4) {
        return new h().x(i4);
    }

    @NonNull
    @CheckResult
    public static h c1(@Nullable Drawable drawable) {
        return new h().y(drawable);
    }

    @NonNull
    @CheckResult
    public static h d1() {
        if (f9554b1 == null) {
            f9554b1 = new h().B().e();
        }
        return f9554b1;
    }

    @NonNull
    @CheckResult
    public static h e1(@NonNull DecodeFormat decodeFormat) {
        return new h().C(decodeFormat);
    }

    @NonNull
    @CheckResult
    public static h f1(@IntRange(from = 0) long j4) {
        return new h().D(j4);
    }

    @NonNull
    @CheckResult
    public static h g1() {
        if (T1 == null) {
            T1 = new h().s().e();
        }
        return T1;
    }

    @NonNull
    @CheckResult
    public static h h1() {
        if (f9558y1 == null) {
            f9558y1 = new h().t().e();
        }
        return f9558y1;
    }

    @NonNull
    @CheckResult
    public static <T> h i1(@NonNull com.bumptech.glide.load.e<T> eVar, @NonNull T t9) {
        return new h().D0(eVar, t9);
    }

    @NonNull
    @CheckResult
    public static h j1(int i4) {
        return k1(i4, i4);
    }

    @NonNull
    @CheckResult
    public static h k1(int i4, int i10) {
        return new h().v0(i4, i10);
    }

    @NonNull
    @CheckResult
    public static h l1(@DrawableRes int i4) {
        return new h().w0(i4);
    }

    @NonNull
    @CheckResult
    public static h m1(@Nullable Drawable drawable) {
        return new h().x0(drawable);
    }

    @NonNull
    @CheckResult
    public static h n1(@NonNull Priority priority) {
        return new h().y0(priority);
    }

    @NonNull
    @CheckResult
    public static h o1(@NonNull com.bumptech.glide.load.c cVar) {
        return new h().E0(cVar);
    }

    @NonNull
    @CheckResult
    public static h p1(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return new h().F0(f10);
    }

    @NonNull
    @CheckResult
    public static h q1(boolean z9) {
        if (z9) {
            if (V == null) {
                V = new h().G0(true).e();
            }
            return V;
        }
        if (W == null) {
            W = new h().G0(false).e();
        }
        return W;
    }

    @NonNull
    @CheckResult
    public static h r1(@IntRange(from = 0) int i4) {
        return new h().I0(i4);
    }
}
