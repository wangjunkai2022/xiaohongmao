package com.yalantis.ucrop.view;

import a6.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.AttributeSet;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yalantis.ucrop.c;
import com.yalantis.ucrop.util.g;
import com.yalantis.ucrop.view.TransformImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class CropImageView extends TransformImageView {
    public static final int H = 0;
    public static final int I = 500;
    public static final float J = 10.0f;
    public static final float K = 0.0f;
    public static final float L = 0.0f;
    private Runnable A;
    private Runnable B;
    private float C;
    private float D;
    private int E;
    private int F;
    private long G;

    /* renamed from: v  reason: collision with root package name */
    private final RectF f61148v;

    /* renamed from: w  reason: collision with root package name */
    private final Matrix f61149w;

    /* renamed from: x  reason: collision with root package name */
    private float f61150x;

    /* renamed from: y  reason: collision with root package name */
    private float f61151y;

    /* renamed from: z  reason: collision with root package name */
    private c f61152z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<CropImageView> f61153a;

        /* renamed from: b  reason: collision with root package name */
        private final long f61154b;

        /* renamed from: c  reason: collision with root package name */
        private final long f61155c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private final float f61156d;

        /* renamed from: e  reason: collision with root package name */
        private final float f61157e;

        /* renamed from: f  reason: collision with root package name */
        private final float f61158f;

        /* renamed from: g  reason: collision with root package name */
        private final float f61159g;

        /* renamed from: h  reason: collision with root package name */
        private final float f61160h;

        /* renamed from: i  reason: collision with root package name */
        private final float f61161i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f61162j;

        public a(CropImageView cropImageView, long j4, float f10, float f11, float f12, float f13, float f14, float f15, boolean z9) {
            this.f61153a = new WeakReference<>(cropImageView);
            this.f61154b = j4;
            this.f61156d = f10;
            this.f61157e = f11;
            this.f61158f = f12;
            this.f61159g = f13;
            this.f61160h = f14;
            this.f61161i = f15;
            this.f61162j = z9;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropImageView cropImageView = this.f61153a.get();
            if (cropImageView == null) {
                return;
            }
            float min = (float) Math.min(this.f61154b, System.currentTimeMillis() - this.f61155c);
            float c10 = com.yalantis.ucrop.util.b.c(min, 0.0f, this.f61158f, (float) this.f61154b);
            float c11 = com.yalantis.ucrop.util.b.c(min, 0.0f, this.f61159g, (float) this.f61154b);
            float b10 = com.yalantis.ucrop.util.b.b(min, 0.0f, this.f61161i, (float) this.f61154b);
            if (min < ((float) this.f61154b)) {
                float[] fArr = cropImageView.f61204b;
                cropImageView.m(c10 - (fArr[0] - this.f61156d), c11 - (fArr[1] - this.f61157e));
                if (!this.f61162j) {
                    cropImageView.E(this.f61160h + b10, cropImageView.f61148v.centerX(), cropImageView.f61148v.centerY());
                }
                if (cropImageView.w()) {
                    return;
                }
                cropImageView.post(this);
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<CropImageView> f61163a;

        /* renamed from: b  reason: collision with root package name */
        private final long f61164b;

        /* renamed from: c  reason: collision with root package name */
        private final long f61165c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private final float f61166d;

        /* renamed from: e  reason: collision with root package name */
        private final float f61167e;

        /* renamed from: f  reason: collision with root package name */
        private final float f61168f;

        /* renamed from: g  reason: collision with root package name */
        private final float f61169g;

        public b(CropImageView cropImageView, long j4, float f10, float f11, float f12, float f13) {
            this.f61163a = new WeakReference<>(cropImageView);
            this.f61164b = j4;
            this.f61166d = f10;
            this.f61167e = f11;
            this.f61168f = f12;
            this.f61169g = f13;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropImageView cropImageView = this.f61163a.get();
            if (cropImageView == null) {
                return;
            }
            float min = (float) Math.min(this.f61164b, System.currentTimeMillis() - this.f61165c);
            float b10 = com.yalantis.ucrop.util.b.b(min, 0.0f, this.f61167e, (float) this.f61164b);
            if (min < ((float) this.f61164b)) {
                cropImageView.E(this.f61166d + b10, this.f61168f, this.f61169g);
                cropImageView.post(this);
                return;
            }
            cropImageView.A();
        }
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    private void B(float f10, float f11) {
        float width = this.f61148v.width();
        float height = this.f61148v.height();
        float max = Math.max(this.f61148v.width() / f10, this.f61148v.height() / f11);
        RectF rectF = this.f61148v;
        float f12 = ((height - (f11 * max)) / 2.0f) + rectF.top;
        this.f61206d.reset();
        this.f61206d.postScale(max, max);
        this.f61206d.postTranslate(((width - (f10 * max)) / 2.0f) + rectF.left, f12);
        setImageMatrix(this.f61206d);
    }

    private float[] r() {
        this.f61149w.reset();
        this.f61149w.setRotate(-getCurrentAngle());
        float[] fArr = this.f61203a;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        float[] b10 = g.b(this.f61148v);
        this.f61149w.mapPoints(copyOf);
        this.f61149w.mapPoints(b10);
        RectF d4 = g.d(copyOf);
        RectF d10 = g.d(b10);
        float f10 = d4.left - d10.left;
        float f11 = d4.top - d10.top;
        float f12 = d4.right - d10.right;
        float f13 = d4.bottom - d10.bottom;
        float[] fArr2 = new float[4];
        if (f10 <= 0.0f) {
            f10 = 0.0f;
        }
        fArr2[0] = f10;
        if (f11 <= 0.0f) {
            f11 = 0.0f;
        }
        fArr2[1] = f11;
        if (f12 >= 0.0f) {
            f12 = 0.0f;
        }
        fArr2[2] = f12;
        if (f13 >= 0.0f) {
            f13 = 0.0f;
        }
        fArr2[3] = f13;
        this.f61149w.reset();
        this.f61149w.setRotate(getCurrentAngle());
        this.f61149w.mapPoints(fArr2);
        return fArr2;
    }

    private void s() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        t(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    private void t(float f10, float f11) {
        float min = Math.min(Math.min(this.f61148v.width() / f10, this.f61148v.width() / f11), Math.min(this.f61148v.height() / f11, this.f61148v.height() / f10));
        this.D = min;
        this.C = min * this.f61151y;
    }

    public void A() {
        setImageToWrapCropBounds(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void C(float f10, float f11, float f12, long j4) {
        if (f10 > getMaxScale()) {
            f10 = getMaxScale();
        }
        float currentScale = getCurrentScale();
        b bVar = new b(this, j4, currentScale, f10 - currentScale, f11, f12);
        this.B = bVar;
        post(bVar);
    }

    public void D(float f10) {
        E(f10, this.f61148v.centerX(), this.f61148v.centerY());
    }

    public void E(float f10, float f11, float f12) {
        if (f10 <= getMaxScale()) {
            l(f10 / getCurrentScale(), f11, f12);
        }
    }

    public void F(float f10) {
        G(f10, this.f61148v.centerX(), this.f61148v.centerY());
    }

    public void G(float f10, float f11, float f12) {
        if (f10 >= getMinScale()) {
            l(f10 / getCurrentScale(), f11, f12);
        }
    }

    @Nullable
    public c getCropBoundsChangeListener() {
        return this.f61152z;
    }

    public float getMaxScale() {
        return this.C;
    }

    public float getMinScale() {
        return this.D;
    }

    public float getTargetAspectRatio() {
        return this.f61150x;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yalantis.ucrop.view.TransformImageView
    public void j() {
        int i4;
        int i10;
        int i11;
        super.j();
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        if (this.f61150x == 0.0f) {
            this.f61150x = intrinsicWidth / intrinsicHeight;
        }
        int i12 = this.f61207e;
        float f10 = this.f61150x;
        int i13 = (int) (i12 / f10);
        int i14 = this.f61208f;
        if (i13 > i14) {
            this.f61148v.set((i12 - ((int) (i14 * f10))) / 2, 0.0f, i10 + i11, i14);
        } else {
            this.f61148v.set(0.0f, (i14 - i13) / 2, i12, i13 + i4);
        }
        t(intrinsicWidth, intrinsicHeight);
        B(intrinsicWidth, intrinsicHeight);
        c cVar = this.f61152z;
        if (cVar != null) {
            cVar.a(this.f61150x);
        }
        TransformImageView.b bVar = this.f61209g;
        if (bVar != null) {
            bVar.c(getCurrentScale());
            this.f61209g.d(getCurrentAngle());
        }
    }

    @Override // com.yalantis.ucrop.view.TransformImageView
    public void l(float f10, float f11, float f12) {
        if (f10 > 1.0f && getCurrentScale() * f10 <= getMaxScale()) {
            super.l(f10, f11, f12);
        } else if (f10 >= 1.0f || getCurrentScale() * f10 < getMinScale()) {
        } else {
            super.l(f10, f11, f12);
        }
    }

    public void setCropBoundsChangeListener(@Nullable c cVar) {
        this.f61152z = cVar;
    }

    public void setCropRect(RectF rectF) {
        this.f61150x = rectF.width() / rectF.height();
        this.f61148v.set(rectF.left - getPaddingLeft(), rectF.top - getPaddingTop(), rectF.right - getPaddingRight(), rectF.bottom - getPaddingBottom());
        s();
        A();
    }

    public void setImageToWrapCropBounds(boolean z9) {
        float f10;
        float max;
        float f11;
        if (!this.f61213k || w()) {
            return;
        }
        float[] fArr = this.f61204b;
        float f12 = fArr[0];
        float f13 = fArr[1];
        float currentScale = getCurrentScale();
        float centerX = this.f61148v.centerX() - f12;
        float centerY = this.f61148v.centerY() - f13;
        this.f61149w.reset();
        this.f61149w.setTranslate(centerX, centerY);
        float[] fArr2 = this.f61203a;
        float[] copyOf = Arrays.copyOf(fArr2, fArr2.length);
        this.f61149w.mapPoints(copyOf);
        boolean x9 = x(copyOf);
        if (x9) {
            float[] r9 = r();
            f11 = -(r9[1] + r9[3]);
            f10 = -(r9[0] + r9[2]);
            max = 0.0f;
        } else {
            RectF rectF = new RectF(this.f61148v);
            this.f61149w.reset();
            this.f61149w.setRotate(getCurrentAngle());
            this.f61149w.mapRect(rectF);
            float[] c10 = g.c(this.f61203a);
            f10 = centerX;
            max = (Math.max(rectF.width() / c10[0], rectF.height() / c10[1]) * currentScale) - currentScale;
            f11 = centerY;
        }
        if (z9) {
            a aVar = new a(this, this.G, f12, f13, f10, f11, currentScale, max, x9);
            this.A = aVar;
            post(aVar);
            return;
        }
        m(f10, f11);
        if (x9) {
            return;
        }
        E(currentScale + max, this.f61148v.centerX(), this.f61148v.centerY());
    }

    public void setImageToWrapCropBoundsAnimDuration(@IntRange(from = 100) long j4) {
        if (j4 > 0) {
            this.G = j4;
            return;
        }
        throw new IllegalArgumentException("Animation duration cannot be negative value.");
    }

    public void setMaxResultImageSizeX(@IntRange(from = 10) int i4) {
        this.E = i4;
    }

    public void setMaxResultImageSizeY(@IntRange(from = 10) int i4) {
        this.F = i4;
    }

    public void setMaxScaleMultiplier(float f10) {
        this.f61151y = f10;
    }

    public void setTargetAspectRatio(float f10) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            this.f61150x = f10;
            return;
        }
        if (f10 == 0.0f) {
            this.f61150x = drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        } else {
            this.f61150x = f10;
        }
        c cVar = this.f61152z;
        if (cVar != null) {
            cVar.a(this.f61150x);
        }
    }

    public void u() {
        removeCallbacks(this.A);
        removeCallbacks(this.B);
    }

    public void v(@NonNull Bitmap.CompressFormat compressFormat, int i4, @Nullable a6.a aVar) {
        u();
        setImageToWrapCropBounds(false);
        com.yalantis.ucrop.model.c cVar = new com.yalantis.ucrop.model.c(this.f61148v, g.d(this.f61203a), getCurrentScale(), getCurrentAngle());
        com.yalantis.ucrop.model.a aVar2 = new com.yalantis.ucrop.model.a(this.E, this.F, compressFormat, i4, getImageInputPath(), getImageOutputPath(), getExifInfo());
        aVar2.j(getImageInputUri());
        aVar2.k(getImageOutputUri());
        new com.yalantis.ucrop.task.a(getContext(), getViewBitmap(), cVar, aVar2, aVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    protected boolean w() {
        return x(this.f61203a);
    }

    protected boolean x(float[] fArr) {
        this.f61149w.reset();
        this.f61149w.setRotate(-getCurrentAngle());
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        this.f61149w.mapPoints(copyOf);
        float[] b10 = g.b(this.f61148v);
        this.f61149w.mapPoints(b10);
        return g.d(copyOf).contains(g.d(b10));
    }

    public void y(float f10) {
        k(f10, this.f61148v.centerX(), this.f61148v.centerY());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z(@NonNull TypedArray typedArray) {
        float abs = Math.abs(typedArray.getFloat(c.o.C8, 0.0f));
        float abs2 = Math.abs(typedArray.getFloat(c.o.D8, 0.0f));
        if (abs != 0.0f && abs2 != 0.0f) {
            this.f61150x = abs / abs2;
        } else {
            this.f61150x = 0.0f;
        }
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropImageView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f61148v = new RectF();
        this.f61149w = new Matrix();
        this.f61151y = 10.0f;
        this.B = null;
        this.E = 0;
        this.F = 0;
        this.G = 500L;
    }
}
