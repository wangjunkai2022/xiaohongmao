package com.yalantis.ucrop.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.yalantis.ucrop.util.d;
import com.yalantis.ucrop.util.g;

/* loaded from: classes3.dex */
public class TransformImageView extends AppCompatImageView {

    /* renamed from: r  reason: collision with root package name */
    private static final String f61199r = "TransformImageView";

    /* renamed from: s  reason: collision with root package name */
    private static final int f61200s = 8;

    /* renamed from: t  reason: collision with root package name */
    private static final int f61201t = 2;

    /* renamed from: u  reason: collision with root package name */
    private static final int f61202u = 9;

    /* renamed from: a  reason: collision with root package name */
    protected final float[] f61203a;

    /* renamed from: b  reason: collision with root package name */
    protected final float[] f61204b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f61205c;

    /* renamed from: d  reason: collision with root package name */
    protected Matrix f61206d;

    /* renamed from: e  reason: collision with root package name */
    protected int f61207e;

    /* renamed from: f  reason: collision with root package name */
    protected int f61208f;

    /* renamed from: g  reason: collision with root package name */
    protected b f61209g;

    /* renamed from: h  reason: collision with root package name */
    private float[] f61210h;

    /* renamed from: i  reason: collision with root package name */
    private float[] f61211i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f61212j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f61213k;

    /* renamed from: l  reason: collision with root package name */
    private int f61214l;

    /* renamed from: m  reason: collision with root package name */
    private String f61215m;

    /* renamed from: n  reason: collision with root package name */
    private String f61216n;

    /* renamed from: o  reason: collision with root package name */
    private Uri f61217o;

    /* renamed from: p  reason: collision with root package name */
    private Uri f61218p;

    /* renamed from: q  reason: collision with root package name */
    private com.yalantis.ucrop.model.b f61219q;

    /* loaded from: classes3.dex */
    class a implements a6.b {
        a() {
        }

        @Override // a6.b
        public void a(@NonNull Exception exc) {
            Log.e(TransformImageView.f61199r, "onFailure: setImageUri", exc);
            b bVar = TransformImageView.this.f61209g;
            if (bVar != null) {
                bVar.b(exc);
            }
        }

        @Override // a6.b
        public void b(@NonNull Bitmap bitmap, @NonNull com.yalantis.ucrop.model.b bVar, @NonNull Uri uri, @Nullable Uri uri2) {
            TransformImageView.this.f61217o = uri;
            TransformImageView.this.f61218p = uri2;
            TransformImageView.this.f61215m = uri.getPath();
            TransformImageView.this.f61216n = uri2 != null ? uri2.getPath() : null;
            TransformImageView.this.f61219q = bVar;
            TransformImageView transformImageView = TransformImageView.this;
            transformImageView.f61212j = true;
            transformImageView.setImageBitmap(bitmap);
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a();

        void b(@NonNull Exception exc);

        void c(float f10);

        void d(float f10);
    }

    public TransformImageView(Context context) {
        this(context, null);
    }

    private void p() {
        this.f61206d.mapPoints(this.f61203a, this.f61210h);
        this.f61206d.mapPoints(this.f61204b, this.f61211i);
    }

    public float f(@NonNull Matrix matrix) {
        return (float) (-(Math.atan2(h(matrix, 1), h(matrix, 0)) * 57.29577951308232d));
    }

    public float g(@NonNull Matrix matrix) {
        return (float) Math.sqrt(Math.pow(h(matrix, 0), 2.0d) + Math.pow(h(matrix, 3), 2.0d));
    }

    public float getCurrentAngle() {
        return f(this.f61206d);
    }

    public float getCurrentScale() {
        return g(this.f61206d);
    }

    public com.yalantis.ucrop.model.b getExifInfo() {
        return this.f61219q;
    }

    public String getImageInputPath() {
        return this.f61215m;
    }

    public Uri getImageInputUri() {
        return this.f61217o;
    }

    public String getImageOutputPath() {
        return this.f61216n;
    }

    public Uri getImageOutputUri() {
        return this.f61218p;
    }

    public int getMaxBitmapSize() {
        if (this.f61214l <= 0) {
            this.f61214l = com.yalantis.ucrop.util.a.b(getContext());
        }
        return this.f61214l;
    }

    @Nullable
    public Bitmap getViewBitmap() {
        if (getDrawable() == null || !(getDrawable() instanceof d)) {
            return null;
        }
        return ((d) getDrawable()).a();
    }

    protected float h(@NonNull Matrix matrix, @IntRange(from = 0, to = 9) int i4) {
        matrix.getValues(this.f61205c);
        return this.f61205c[i4];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        Log.d(f61199r, String.format("Image size: [%d:%d]", Integer.valueOf((int) intrinsicWidth), Integer.valueOf((int) intrinsicHeight)));
        RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        this.f61210h = g.b(rectF);
        this.f61211i = g.a(rectF);
        this.f61213k = true;
        b bVar = this.f61209g;
        if (bVar != null) {
            bVar.a();
        }
    }

    public void k(float f10, float f11, float f12) {
        if (f10 != 0.0f) {
            this.f61206d.postRotate(f10, f11, f12);
            setImageMatrix(this.f61206d);
            b bVar = this.f61209g;
            if (bVar != null) {
                bVar.d(f(this.f61206d));
            }
        }
    }

    public void l(float f10, float f11, float f12) {
        if (f10 != 0.0f) {
            this.f61206d.postScale(f10, f10, f11, f12);
            setImageMatrix(this.f61206d);
            b bVar = this.f61209g;
            if (bVar != null) {
                bVar.c(g(this.f61206d));
            }
        }
    }

    public void m(float f10, float f11) {
        if (f10 == 0.0f && f11 == 0.0f) {
            return;
        }
        this.f61206d.postTranslate(f10, f11);
        setImageMatrix(this.f61206d);
    }

    protected void n(@NonNull String str, @NonNull Matrix matrix) {
        float h4 = h(matrix, 2);
        float h10 = h(matrix, 5);
        float g4 = g(matrix);
        float f10 = f(matrix);
        Log.d(f61199r, str + ": matrix: { x: " + h4 + ", y: " + h10 + ", scale: " + g4 + ", angle: " + f10 + " }");
    }

    public void o(@NonNull Uri uri, @Nullable Uri uri2) throws Exception {
        int maxBitmapSize = getMaxBitmapSize();
        com.yalantis.ucrop.util.a.d(getContext(), uri, uri2, maxBitmapSize, maxBitmapSize, new a());
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        if (z9 || (this.f61212j && !this.f61213k)) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            this.f61207e = (getWidth() - getPaddingRight()) - paddingLeft;
            this.f61208f = (getHeight() - getPaddingBottom()) - paddingTop;
            j();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        setImageDrawable(new d(bitmap));
    }

    @Override // android.widget.ImageView
    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
        this.f61206d.set(matrix);
        p();
    }

    public void setMaxBitmapSize(int i4) {
        this.f61214l = i4;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        } else {
            Log.w(f61199r, "Invalid ScaleType. Only ScaleType.MATRIX can be used");
        }
    }

    public void setTransformImageListener(b bVar) {
        this.f61209g = bVar;
    }

    public TransformImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TransformImageView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f61203a = new float[8];
        this.f61204b = new float[2];
        this.f61205c = new float[9];
        this.f61206d = new Matrix();
        this.f61212j = false;
        this.f61213k = false;
        this.f61214l = 0;
        i();
    }
}
