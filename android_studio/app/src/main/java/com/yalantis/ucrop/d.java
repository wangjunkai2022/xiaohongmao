package com.yalantis.ucrop;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.yalantis.ucrop.model.AspectRatio;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: UCrop.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: c  reason: collision with root package name */
    public static final int f60982c = 69;

    /* renamed from: d  reason: collision with root package name */
    public static final int f60983d = 96;

    /* renamed from: e  reason: collision with root package name */
    public static final int f60984e = 10;

    /* renamed from: f  reason: collision with root package name */
    private static final String f60985f = "com.yalantis.ucrop";

    /* renamed from: g  reason: collision with root package name */
    public static final String f60986g = "com.yalantis.ucrop.InputUri";

    /* renamed from: h  reason: collision with root package name */
    public static final String f60987h = "com.yalantis.ucrop.OutputUri";

    /* renamed from: i  reason: collision with root package name */
    public static final String f60988i = "com.yalantis.ucrop.CropAspectRatio";

    /* renamed from: j  reason: collision with root package name */
    public static final String f60989j = "com.yalantis.ucrop.ImageWidth";

    /* renamed from: k  reason: collision with root package name */
    public static final String f60990k = "com.yalantis.ucrop.ImageHeight";

    /* renamed from: l  reason: collision with root package name */
    public static final String f60991l = "com.yalantis.ucrop.OffsetX";

    /* renamed from: m  reason: collision with root package name */
    public static final String f60992m = "com.yalantis.ucrop.OffsetY";

    /* renamed from: n  reason: collision with root package name */
    public static final String f60993n = "com.yalantis.ucrop.Error";

    /* renamed from: o  reason: collision with root package name */
    public static final String f60994o = "com.yalantis.ucrop.AspectRatioX";

    /* renamed from: p  reason: collision with root package name */
    public static final String f60995p = "com.yalantis.ucrop.AspectRatioY";

    /* renamed from: q  reason: collision with root package name */
    public static final String f60996q = "com.yalantis.ucrop.MaxSizeX";

    /* renamed from: r  reason: collision with root package name */
    public static final String f60997r = "com.yalantis.ucrop.MaxSizeY";

    /* renamed from: a  reason: collision with root package name */
    private Intent f60998a = new Intent();

    /* renamed from: b  reason: collision with root package name */
    private Bundle f60999b;

    /* compiled from: UCrop.java */
    /* loaded from: classes3.dex */
    public static class a {
        public static final String A = "com.yalantis.ucrop.FreeStyleCrop";
        public static final String B = "com.yalantis.ucrop.AspectRatioSelectedByDefault";
        public static final String C = "com.yalantis.ucrop.AspectRatioOptions";
        public static final String D = "com.yalantis.ucrop.UcropRootViewBackgroundColor";

        /* renamed from: b  reason: collision with root package name */
        public static final String f61000b = "com.yalantis.ucrop.CompressionFormatName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f61001c = "com.yalantis.ucrop.CompressionQuality";

        /* renamed from: d  reason: collision with root package name */
        public static final String f61002d = "com.yalantis.ucrop.AllowedGestures";

        /* renamed from: e  reason: collision with root package name */
        public static final String f61003e = "com.yalantis.ucrop.MaxBitmapSize";

        /* renamed from: f  reason: collision with root package name */
        public static final String f61004f = "com.yalantis.ucrop.MaxScaleMultiplier";

        /* renamed from: g  reason: collision with root package name */
        public static final String f61005g = "com.yalantis.ucrop.ImageToCropBoundsAnimDuration";

        /* renamed from: h  reason: collision with root package name */
        public static final String f61006h = "com.yalantis.ucrop.DimmedLayerColor";

        /* renamed from: i  reason: collision with root package name */
        public static final String f61007i = "com.yalantis.ucrop.CircleDimmedLayer";

        /* renamed from: j  reason: collision with root package name */
        public static final String f61008j = "com.yalantis.ucrop.ShowCropFrame";

        /* renamed from: k  reason: collision with root package name */
        public static final String f61009k = "com.yalantis.ucrop.CropFrameColor";

        /* renamed from: l  reason: collision with root package name */
        public static final String f61010l = "com.yalantis.ucrop.CropFrameStrokeWidth";

        /* renamed from: m  reason: collision with root package name */
        public static final String f61011m = "com.yalantis.ucrop.ShowCropGrid";

        /* renamed from: n  reason: collision with root package name */
        public static final String f61012n = "com.yalantis.ucrop.CropGridRowCount";

        /* renamed from: o  reason: collision with root package name */
        public static final String f61013o = "com.yalantis.ucrop.CropGridColumnCount";

        /* renamed from: p  reason: collision with root package name */
        public static final String f61014p = "com.yalantis.ucrop.CropGridColor";

        /* renamed from: q  reason: collision with root package name */
        public static final String f61015q = "com.yalantis.ucrop.CropGridStrokeWidth";

        /* renamed from: r  reason: collision with root package name */
        public static final String f61016r = "com.yalantis.ucrop.ToolbarColor";

        /* renamed from: s  reason: collision with root package name */
        public static final String f61017s = "com.yalantis.ucrop.StatusBarColor";

        /* renamed from: t  reason: collision with root package name */
        public static final String f61018t = "com.yalantis.ucrop.UcropColorControlsWidgetActive";

        /* renamed from: u  reason: collision with root package name */
        public static final String f61019u = "com.yalantis.ucrop.UcropToolbarWidgetColor";

        /* renamed from: v  reason: collision with root package name */
        public static final String f61020v = "com.yalantis.ucrop.UcropToolbarTitleText";

        /* renamed from: w  reason: collision with root package name */
        public static final String f61021w = "com.yalantis.ucrop.UcropToolbarCancelDrawable";

        /* renamed from: x  reason: collision with root package name */
        public static final String f61022x = "com.yalantis.ucrop.UcropToolbarCropDrawable";

        /* renamed from: y  reason: collision with root package name */
        public static final String f61023y = "com.yalantis.ucrop.UcropLogoColor";

        /* renamed from: z  reason: collision with root package name */
        public static final String f61024z = "com.yalantis.ucrop.HideBottomControls";

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f61025a = new Bundle();

        public void A(@DrawableRes int i4) {
            this.f61025a.putInt(f61022x, i4);
        }

        public void B(@Nullable String str) {
            this.f61025a.putString(f61020v, str);
        }

        public void C(@ColorInt int i4) {
            this.f61025a.putInt(f61019u, i4);
        }

        public void D() {
            this.f61025a.putFloat(d.f60994o, 0.0f);
            this.f61025a.putFloat(d.f60995p, 0.0f);
        }

        public void E(float f10, float f11) {
            this.f61025a.putFloat(d.f60994o, f10);
            this.f61025a.putFloat(d.f60995p, f11);
        }

        public void F(@IntRange(from = 10) int i4, @IntRange(from = 10) int i10) {
            this.f61025a.putInt(d.f60996q, i4);
            this.f61025a.putInt(d.f60997r, i10);
        }

        @NonNull
        public Bundle a() {
            return this.f61025a;
        }

        public void b(@ColorInt int i4) {
            this.f61025a.putInt(f61018t, i4);
        }

        public void c(int i4, int i10, int i11) {
            this.f61025a.putIntArray(f61002d, new int[]{i4, i10, i11});
        }

        public void d(int i4, AspectRatio... aspectRatioArr) {
            if (i4 < aspectRatioArr.length) {
                this.f61025a.putInt(B, i4);
                this.f61025a.putParcelableArrayList(C, new ArrayList<>(Arrays.asList(aspectRatioArr)));
                return;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Index [selectedByDefault = %d] (0-based) cannot be higher or equal than aspect ratio options count [count = %d].", Integer.valueOf(i4), Integer.valueOf(aspectRatioArr.length)));
        }

        public void e(boolean z9) {
            this.f61025a.putBoolean(f61007i, z9);
        }

        public void f(@NonNull Bitmap.CompressFormat compressFormat) {
            this.f61025a.putString(f61000b, compressFormat.name());
        }

        public void g(@IntRange(from = 0) int i4) {
            this.f61025a.putInt(f61001c, i4);
        }

        public void h(@ColorInt int i4) {
            this.f61025a.putInt(f61009k, i4);
        }

        public void i(@IntRange(from = 0) int i4) {
            this.f61025a.putInt(f61010l, i4);
        }

        public void j(@ColorInt int i4) {
            this.f61025a.putInt(f61014p, i4);
        }

        public void k(@IntRange(from = 0) int i4) {
            this.f61025a.putInt(f61013o, i4);
        }

        public void l(@IntRange(from = 0) int i4) {
            this.f61025a.putInt(f61012n, i4);
        }

        public void m(@IntRange(from = 0) int i4) {
            this.f61025a.putInt(f61015q, i4);
        }

        public void n(@ColorInt int i4) {
            this.f61025a.putInt(f61006h, i4);
        }

        public void o(boolean z9) {
            this.f61025a.putBoolean(A, z9);
        }

        public void p(boolean z9) {
            this.f61025a.putBoolean(f61024z, z9);
        }

        public void q(@IntRange(from = 10) int i4) {
            this.f61025a.putInt(f61005g, i4);
        }

        public void r(@ColorInt int i4) {
            this.f61025a.putInt(f61023y, i4);
        }

        public void s(@IntRange(from = 10) int i4) {
            this.f61025a.putInt(f61003e, i4);
        }

        public void t(@FloatRange(from = 1.0d, fromInclusive = false) float f10) {
            this.f61025a.putFloat(f61004f, f10);
        }

        public void u(@ColorInt int i4) {
            this.f61025a.putInt(D, i4);
        }

        public void v(boolean z9) {
            this.f61025a.putBoolean(f61008j, z9);
        }

        public void w(boolean z9) {
            this.f61025a.putBoolean(f61011m, z9);
        }

        public void x(@ColorInt int i4) {
            this.f61025a.putInt(f61017s, i4);
        }

        public void y(@DrawableRes int i4) {
            this.f61025a.putInt(f61021w, i4);
        }

        public void z(@ColorInt int i4) {
            this.f61025a.putInt(f61016r, i4);
        }
    }

    private d(@NonNull Uri uri, @NonNull Uri uri2) {
        Bundle bundle = new Bundle();
        this.f60999b = bundle;
        bundle.putParcelable(f60986g, uri);
        this.f60999b.putParcelable(f60987h, uri2);
    }

    @Nullable
    public static Throwable a(@NonNull Intent intent) {
        return (Throwable) intent.getSerializableExtra(f60993n);
    }

    @Nullable
    public static Uri e(@NonNull Intent intent) {
        return (Uri) intent.getParcelableExtra(f60987h);
    }

    public static float f(@NonNull Intent intent) {
        return intent.getFloatExtra(f60988i, 0.0f);
    }

    public static int g(@NonNull Intent intent) {
        return intent.getIntExtra(f60990k, -1);
    }

    public static int h(@NonNull Intent intent) {
        return intent.getIntExtra(f60989j, -1);
    }

    public static d i(@NonNull Uri uri, @NonNull Uri uri2) {
        return new d(uri, uri2);
    }

    public e b() {
        return e.k0(this.f60999b);
    }

    public e c(Bundle bundle) {
        this.f60999b = bundle;
        return b();
    }

    public Intent d(@NonNull Context context) {
        this.f60998a.setClass(context, UCropActivity.class);
        this.f60998a.putExtras(this.f60999b);
        return this.f60998a;
    }

    public void j(@NonNull Activity activity) {
        k(activity, 69);
    }

    public void k(@NonNull Activity activity, int i4) {
        activity.startActivityForResult(d(activity), i4);
    }

    public void l(@NonNull Context context, @NonNull Fragment fragment) {
        m(context, fragment, 69);
    }

    public void m(@NonNull Context context, @NonNull Fragment fragment, int i4) {
        fragment.startActivityForResult(d(context), i4);
    }

    public d n() {
        this.f60999b.putFloat(f60994o, 0.0f);
        this.f60999b.putFloat(f60995p, 0.0f);
        return this;
    }

    public d o(float f10, float f11) {
        this.f60999b.putFloat(f60994o, f10);
        this.f60999b.putFloat(f60995p, f11);
        return this;
    }

    public d p(@IntRange(from = 10) int i4, @IntRange(from = 10) int i10) {
        if (i4 < 10) {
            i4 = 10;
        }
        if (i10 < 10) {
            i10 = 10;
        }
        this.f60999b.putInt(f60996q, i4);
        this.f60999b.putInt(f60997r, i10);
        return this;
    }

    public d q(@NonNull a aVar) {
        this.f60999b.putAll(aVar.a());
        return this;
    }
}
