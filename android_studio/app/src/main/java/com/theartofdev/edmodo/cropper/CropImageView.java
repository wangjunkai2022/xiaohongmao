package com.theartofdev.edmodo.cropper;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.exifinterface.media.ExifInterface;
import com.theartofdev.edmodo.cropper.CropOverlayView;
import com.theartofdev.edmodo.cropper.a;
import com.theartofdev.edmodo.cropper.b;
import com.theartofdev.edmodo.cropper.c;
import com.theartofdev.edmodo.cropper.g;
import java.lang.ref.WeakReference;
import java.util.UUID;

/* loaded from: classes3.dex */
public class CropImageView extends FrameLayout {
    private c A;
    private Uri B;
    private int C;
    private float D;
    private float E;
    private float F;
    private RectF G;
    private int H;
    private boolean I;
    private Uri J;
    private WeakReference<com.theartofdev.edmodo.cropper.b> K;
    private WeakReference<com.theartofdev.edmodo.cropper.a> L;

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f58833a;

    /* renamed from: b  reason: collision with root package name */
    private final CropOverlayView f58834b;

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f58835c;

    /* renamed from: d  reason: collision with root package name */
    private final Matrix f58836d;

    /* renamed from: e  reason: collision with root package name */
    private final ProgressBar f58837e;

    /* renamed from: f  reason: collision with root package name */
    private final float[] f58838f;

    /* renamed from: g  reason: collision with root package name */
    private final float[] f58839g;

    /* renamed from: h  reason: collision with root package name */
    private com.theartofdev.edmodo.cropper.e f58840h;

    /* renamed from: i  reason: collision with root package name */
    private Bitmap f58841i;

    /* renamed from: j  reason: collision with root package name */
    private int f58842j;

    /* renamed from: k  reason: collision with root package name */
    private int f58843k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f58844l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f58845m;

    /* renamed from: n  reason: collision with root package name */
    private int f58846n;

    /* renamed from: o  reason: collision with root package name */
    private int f58847o;

    /* renamed from: p  reason: collision with root package name */
    private int f58848p;

    /* renamed from: q  reason: collision with root package name */
    private ScaleType f58849q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f58850r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f58851s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f58852t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f58853u;

    /* renamed from: v  reason: collision with root package name */
    private int f58854v;

    /* renamed from: w  reason: collision with root package name */
    private e f58855w;

    /* renamed from: x  reason: collision with root package name */
    private d f58856x;

    /* renamed from: y  reason: collision with root package name */
    private f f58857y;

    /* renamed from: z  reason: collision with root package name */
    private g f58858z;

    /* loaded from: classes3.dex */
    public enum CropShape {
        RECTANGLE,
        OVAL
    }

    /* loaded from: classes3.dex */
    public enum Guidelines {
        OFF,
        ON_TOUCH,
        ON
    }

    /* loaded from: classes3.dex */
    public enum RequestSizeOptions {
        NONE,
        SAMPLING,
        RESIZE_INSIDE,
        RESIZE_FIT,
        RESIZE_EXACT
    }

    /* loaded from: classes3.dex */
    public enum ScaleType {
        FIT_CENTER,
        CENTER,
        CENTER_CROP,
        CENTER_INSIDE
    }

    /* loaded from: classes3.dex */
    class a implements CropOverlayView.b {
        a() {
        }

        @Override // com.theartofdev.edmodo.cropper.CropOverlayView.b
        public void a(boolean z9) {
            CropImageView.this.o(z9, true);
            e eVar = CropImageView.this.f58855w;
            if (eVar != null && !z9) {
                eVar.a(CropImageView.this.getCropRect());
            }
            d dVar = CropImageView.this.f58856x;
            if (dVar == null || !z9) {
                return;
            }
            dVar.a(CropImageView.this.getCropRect());
        }
    }

    /* loaded from: classes3.dex */
    public static class b {
        private final Bitmap mBitmap;
        private final float[] mCropPoints;
        private final Rect mCropRect;
        private final Exception mError;
        private final Bitmap mOriginalBitmap;
        private final Uri mOriginalUri;
        private final int mRotation;
        private final int mSampleSize;
        private final Uri mUri;
        private final Rect mWholeImageRect;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Bitmap bitmap, Uri uri, Bitmap bitmap2, Uri uri2, Exception exc, float[] fArr, Rect rect, Rect rect2, int i4, int i10) {
            this.mOriginalBitmap = bitmap;
            this.mOriginalUri = uri;
            this.mBitmap = bitmap2;
            this.mUri = uri2;
            this.mError = exc;
            this.mCropPoints = fArr;
            this.mCropRect = rect;
            this.mWholeImageRect = rect2;
            this.mRotation = i4;
            this.mSampleSize = i10;
        }

        public Bitmap getBitmap() {
            return this.mBitmap;
        }

        public float[] getCropPoints() {
            return this.mCropPoints;
        }

        public Rect getCropRect() {
            return this.mCropRect;
        }

        public Exception getError() {
            return this.mError;
        }

        public Bitmap getOriginalBitmap() {
            return this.mOriginalBitmap;
        }

        public Uri getOriginalUri() {
            return this.mOriginalUri;
        }

        public int getRotation() {
            return this.mRotation;
        }

        public int getSampleSize() {
            return this.mSampleSize;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public Rect getWholeImageRect() {
            return this.mWholeImageRect;
        }

        public boolean isSuccessful() {
            return this.mError == null;
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void g(CropImageView cropImageView, b bVar);
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(Rect rect);
    }

    /* loaded from: classes3.dex */
    public interface e {
        void a(Rect rect);
    }

    /* loaded from: classes3.dex */
    public interface f {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface g {
        void m(CropImageView cropImageView, Uri uri, Exception exc);
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    private void G(Bitmap bitmap, int i4, Uri uri, int i10, int i11) {
        Bitmap bitmap2 = this.f58841i;
        if (bitmap2 == null || !bitmap2.equals(bitmap)) {
            this.f58833a.clearAnimation();
            g();
            this.f58841i = bitmap;
            this.f58833a.setImageBitmap(bitmap);
            this.B = uri;
            this.f58848p = i4;
            this.C = i10;
            this.f58843k = i11;
            d(getWidth(), getHeight(), true, false);
            CropOverlayView cropOverlayView = this.f58834b;
            if (cropOverlayView != null) {
                cropOverlayView.r();
                H();
            }
        }
    }

    private void H() {
        CropOverlayView cropOverlayView = this.f58834b;
        if (cropOverlayView != null) {
            cropOverlayView.setVisibility((!this.f58851s || this.f58841i == null) ? 4 : 0);
        }
    }

    private void L() {
        this.f58837e.setVisibility(this.f58852t && ((this.f58841i == null && this.K != null) || this.L != null) ? 0 : 4);
    }

    private void N(boolean z9) {
        if (this.f58841i != null && !z9) {
            this.f58834b.u(getWidth(), getHeight(), (this.C * 100.0f) / com.theartofdev.edmodo.cropper.c.x(this.f58839g), (this.C * 100.0f) / com.theartofdev.edmodo.cropper.c.t(this.f58839g));
        }
        this.f58834b.t(z9 ? null : this.f58838f, getWidth(), getHeight());
    }

    private void d(float f10, float f11, boolean z9, boolean z10) {
        if (this.f58841i != null) {
            if (f10 <= 0.0f || f11 <= 0.0f) {
                return;
            }
            this.f58835c.invert(this.f58836d);
            RectF cropWindowRect = this.f58834b.getCropWindowRect();
            this.f58836d.mapRect(cropWindowRect);
            this.f58835c.reset();
            this.f58835c.postTranslate((f10 - this.f58841i.getWidth()) / 2.0f, (f11 - this.f58841i.getHeight()) / 2.0f);
            w();
            int i4 = this.f58843k;
            if (i4 > 0) {
                this.f58835c.postRotate(i4, com.theartofdev.edmodo.cropper.c.q(this.f58838f), com.theartofdev.edmodo.cropper.c.r(this.f58838f));
                w();
            }
            float min = Math.min(f10 / com.theartofdev.edmodo.cropper.c.x(this.f58838f), f11 / com.theartofdev.edmodo.cropper.c.t(this.f58838f));
            ScaleType scaleType = this.f58849q;
            if (scaleType == ScaleType.FIT_CENTER || ((scaleType == ScaleType.CENTER_INSIDE && min < 1.0f) || (min > 1.0f && this.f58853u))) {
                this.f58835c.postScale(min, min, com.theartofdev.edmodo.cropper.c.q(this.f58838f), com.theartofdev.edmodo.cropper.c.r(this.f58838f));
                w();
            }
            float f12 = this.f58844l ? -this.D : this.D;
            float f13 = this.f58845m ? -this.D : this.D;
            this.f58835c.postScale(f12, f13, com.theartofdev.edmodo.cropper.c.q(this.f58838f), com.theartofdev.edmodo.cropper.c.r(this.f58838f));
            w();
            this.f58835c.mapRect(cropWindowRect);
            if (z9) {
                this.E = f10 > com.theartofdev.edmodo.cropper.c.x(this.f58838f) ? 0.0f : Math.max(Math.min((f10 / 2.0f) - cropWindowRect.centerX(), -com.theartofdev.edmodo.cropper.c.u(this.f58838f)), getWidth() - com.theartofdev.edmodo.cropper.c.v(this.f58838f)) / f12;
                this.F = f11 <= com.theartofdev.edmodo.cropper.c.t(this.f58838f) ? Math.max(Math.min((f11 / 2.0f) - cropWindowRect.centerY(), -com.theartofdev.edmodo.cropper.c.w(this.f58838f)), getHeight() - com.theartofdev.edmodo.cropper.c.p(this.f58838f)) / f13 : 0.0f;
            } else {
                this.E = Math.min(Math.max(this.E * f12, -cropWindowRect.left), (-cropWindowRect.right) + f10) / f12;
                this.F = Math.min(Math.max(this.F * f13, -cropWindowRect.top), (-cropWindowRect.bottom) + f11) / f13;
            }
            this.f58835c.postTranslate(this.E * f12, this.F * f13);
            cropWindowRect.offset(this.E * f12, this.F * f13);
            this.f58834b.setCropWindowRect(cropWindowRect);
            w();
            this.f58834b.invalidate();
            if (z10) {
                this.f58840h.a(this.f58838f, this.f58835c);
                this.f58833a.startAnimation(this.f58840h);
            } else {
                this.f58833a.setImageMatrix(this.f58835c);
            }
            N(false);
        }
    }

    private void g() {
        Bitmap bitmap = this.f58841i;
        if (bitmap != null && (this.f58848p > 0 || this.B != null)) {
            bitmap.recycle();
        }
        this.f58841i = null;
        this.f58848p = 0;
        this.B = null;
        this.C = 1;
        this.f58843k = 0;
        this.D = 1.0f;
        this.E = 0.0f;
        this.F = 0.0f;
        this.f58835c.reset();
        this.J = null;
        this.f58833a.setImageBitmap(null);
        H();
    }

    private static int n(int i4, int i10, int i11) {
        return i4 == 1073741824 ? i10 : i4 == Integer.MIN_VALUE ? Math.min(i11, i10) : i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void o(boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.CropImageView.o(boolean, boolean):void");
    }

    private void w() {
        float[] fArr = this.f58838f;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = this.f58841i.getWidth();
        float[] fArr2 = this.f58838f;
        fArr2[3] = 0.0f;
        fArr2[4] = this.f58841i.getWidth();
        this.f58838f[5] = this.f58841i.getHeight();
        float[] fArr3 = this.f58838f;
        fArr3[6] = 0.0f;
        fArr3[7] = this.f58841i.getHeight();
        this.f58835c.mapPoints(this.f58838f);
        float[] fArr4 = this.f58839g;
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        fArr4[2] = 100.0f;
        fArr4[3] = 0.0f;
        fArr4[4] = 100.0f;
        fArr4[5] = 100.0f;
        fArr4[6] = 0.0f;
        fArr4[7] = 100.0f;
        this.f58835c.mapPoints(fArr4);
    }

    public void A(int i4) {
        int i10;
        if (this.f58841i != null) {
            if (i4 < 0) {
                i10 = (i4 % 360) + 360;
            } else {
                i10 = i4 % 360;
            }
            boolean z9 = !this.f58834b.m() && ((i10 > 45 && i10 < 135) || (i10 > 215 && i10 < 305));
            RectF rectF = com.theartofdev.edmodo.cropper.c.f58936c;
            rectF.set(this.f58834b.getCropWindowRect());
            float height = (z9 ? rectF.height() : rectF.width()) / 2.0f;
            float width = (z9 ? rectF.width() : rectF.height()) / 2.0f;
            if (z9) {
                boolean z10 = this.f58844l;
                this.f58844l = this.f58845m;
                this.f58845m = z10;
            }
            this.f58835c.invert(this.f58836d);
            float[] fArr = com.theartofdev.edmodo.cropper.c.f58937d;
            fArr[0] = rectF.centerX();
            fArr[1] = rectF.centerY();
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 1.0f;
            fArr[5] = 0.0f;
            this.f58836d.mapPoints(fArr);
            this.f58843k = (this.f58843k + i10) % 360;
            d(getWidth(), getHeight(), true, false);
            Matrix matrix = this.f58835c;
            float[] fArr2 = com.theartofdev.edmodo.cropper.c.f58938e;
            matrix.mapPoints(fArr2, fArr);
            float sqrt = (float) (this.D / Math.sqrt(Math.pow(fArr2[4] - fArr2[2], 2.0d) + Math.pow(fArr2[5] - fArr2[3], 2.0d)));
            this.D = sqrt;
            this.D = Math.max(sqrt, 1.0f);
            d(getWidth(), getHeight(), true, false);
            this.f58835c.mapPoints(fArr2, fArr);
            double sqrt2 = Math.sqrt(Math.pow(fArr2[4] - fArr2[2], 2.0d) + Math.pow(fArr2[5] - fArr2[3], 2.0d));
            float f10 = (float) (height * sqrt2);
            float f11 = (float) (width * sqrt2);
            rectF.set(fArr2[0] - f10, fArr2[1] - f11, fArr2[0] + f10, fArr2[1] + f11);
            this.f58834b.r();
            this.f58834b.setCropWindowRect(rectF);
            d(getWidth(), getHeight(), true, false);
            o(false, false);
            this.f58834b.i();
        }
    }

    public void B(Uri uri) {
        E(uri, Bitmap.CompressFormat.JPEG, 90, 0, 0, RequestSizeOptions.NONE);
    }

    public void C(Uri uri, Bitmap.CompressFormat compressFormat, int i4) {
        E(uri, compressFormat, i4, 0, 0, RequestSizeOptions.NONE);
    }

    public void D(Uri uri, Bitmap.CompressFormat compressFormat, int i4, int i10, int i11) {
        E(uri, compressFormat, i4, i10, i11, RequestSizeOptions.RESIZE_INSIDE);
    }

    public void E(Uri uri, Bitmap.CompressFormat compressFormat, int i4, int i10, int i11, RequestSizeOptions requestSizeOptions) {
        if (this.A != null) {
            M(i10, i11, requestSizeOptions, uri, compressFormat, i4);
            return;
        }
        throw new IllegalArgumentException("mOnCropImageCompleteListener is not set");
    }

    public void F(int i4, int i10) {
        this.f58834b.setAspectRatioX(i4);
        this.f58834b.setAspectRatioY(i10);
        setFixedAspectRatio(true);
    }

    public void I(Bitmap bitmap, ExifInterface exifInterface) {
        Bitmap bitmap2;
        int i4;
        if (bitmap == null || exifInterface == null) {
            bitmap2 = bitmap;
            i4 = 0;
        } else {
            c.b B = com.theartofdev.edmodo.cropper.c.B(bitmap, exifInterface);
            Bitmap bitmap3 = B.f58943a;
            int i10 = B.f58944b;
            this.f58842j = i10;
            i4 = i10;
            bitmap2 = bitmap3;
        }
        this.f58834b.setInitialCropWindowRect(null);
        G(bitmap2, 0, null, 1, i4);
    }

    public void J(int i4, int i10) {
        this.f58834b.v(i4, i10);
    }

    public void K(int i4, int i10) {
        this.f58834b.w(i4, i10);
    }

    public void M(int i4, int i10, RequestSizeOptions requestSizeOptions, Uri uri, Bitmap.CompressFormat compressFormat, int i11) {
        CropImageView cropImageView;
        Bitmap bitmap = this.f58841i;
        if (bitmap != null) {
            this.f58833a.clearAnimation();
            WeakReference<com.theartofdev.edmodo.cropper.a> weakReference = this.L;
            com.theartofdev.edmodo.cropper.a aVar = weakReference != null ? weakReference.get() : null;
            if (aVar != null) {
                aVar.cancel(true);
            }
            RequestSizeOptions requestSizeOptions2 = RequestSizeOptions.NONE;
            int i12 = requestSizeOptions != requestSizeOptions2 ? i4 : 0;
            int i13 = requestSizeOptions != requestSizeOptions2 ? i10 : 0;
            int width = bitmap.getWidth() * this.C;
            int height = bitmap.getHeight();
            int i14 = this.C;
            int i15 = height * i14;
            if (this.B != null && (i14 > 1 || requestSizeOptions == RequestSizeOptions.SAMPLING)) {
                this.L = new WeakReference<>(new com.theartofdev.edmodo.cropper.a(this, this.B, getCropPoints(), this.f58843k, width, i15, this.f58834b.m(), this.f58834b.getAspectRatioX(), this.f58834b.getAspectRatioY(), i12, i13, this.f58844l, this.f58845m, requestSizeOptions, uri, compressFormat, i11));
                cropImageView = this;
            } else {
                cropImageView = this;
                cropImageView.L = new WeakReference<>(new com.theartofdev.edmodo.cropper.a(this, bitmap, getCropPoints(), this.f58843k, this.f58834b.m(), this.f58834b.getAspectRatioX(), this.f58834b.getAspectRatioY(), i12, i13, this.f58844l, this.f58845m, requestSizeOptions, uri, compressFormat, i11));
            }
            cropImageView.L.get().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            L();
        }
    }

    public void e() {
        this.f58834b.setAspectRatioX(1);
        this.f58834b.setAspectRatioY(1);
        setFixedAspectRatio(false);
    }

    public void f() {
        g();
        this.f58834b.setInitialCropWindowRect(null);
    }

    public Pair<Integer, Integer> getAspectRatio() {
        return new Pair<>(Integer.valueOf(this.f58834b.getAspectRatioX()), Integer.valueOf(this.f58834b.getAspectRatioY()));
    }

    public float[] getCropPoints() {
        RectF cropWindowRect = this.f58834b.getCropWindowRect();
        float[] fArr = new float[8];
        float f10 = cropWindowRect.left;
        fArr[0] = f10;
        float f11 = cropWindowRect.top;
        fArr[1] = f11;
        float f12 = cropWindowRect.right;
        fArr[2] = f12;
        fArr[3] = f11;
        fArr[4] = f12;
        float f13 = cropWindowRect.bottom;
        fArr[5] = f13;
        fArr[6] = f10;
        fArr[7] = f13;
        this.f58835c.invert(this.f58836d);
        this.f58836d.mapPoints(fArr);
        for (int i4 = 0; i4 < 8; i4++) {
            fArr[i4] = fArr[i4] * this.C;
        }
        return fArr;
    }

    public Rect getCropRect() {
        int i4 = this.C;
        Bitmap bitmap = this.f58841i;
        if (bitmap == null) {
            return null;
        }
        return com.theartofdev.edmodo.cropper.c.s(getCropPoints(), bitmap.getWidth() * i4, i4 * bitmap.getHeight(), this.f58834b.m(), this.f58834b.getAspectRatioX(), this.f58834b.getAspectRatioY());
    }

    public CropShape getCropShape() {
        return this.f58834b.getCropShape();
    }

    public RectF getCropWindowRect() {
        CropOverlayView cropOverlayView = this.f58834b;
        if (cropOverlayView == null) {
            return null;
        }
        return cropOverlayView.getCropWindowRect();
    }

    public Bitmap getCroppedImage() {
        return k(0, 0, RequestSizeOptions.NONE);
    }

    public void getCroppedImageAsync() {
        m(0, 0, RequestSizeOptions.NONE);
    }

    public Guidelines getGuidelines() {
        return this.f58834b.getGuidelines();
    }

    public int getImageResource() {
        return this.f58848p;
    }

    public Uri getImageUri() {
        return this.B;
    }

    public int getMaxZoom() {
        return this.f58854v;
    }

    public int getRotatedDegrees() {
        return this.f58843k;
    }

    public ScaleType getScaleType() {
        return this.f58849q;
    }

    public Rect getWholeImageRect() {
        int i4 = this.C;
        Bitmap bitmap = this.f58841i;
        if (bitmap == null) {
            return null;
        }
        return new Rect(0, 0, bitmap.getWidth() * i4, bitmap.getHeight() * i4);
    }

    public void h() {
        this.f58844l = !this.f58844l;
        d(getWidth(), getHeight(), true, false);
    }

    public void i() {
        this.f58845m = !this.f58845m;
        d(getWidth(), getHeight(), true, false);
    }

    public Bitmap j(int i4, int i10) {
        return k(i4, i10, RequestSizeOptions.RESIZE_INSIDE);
    }

    public Bitmap k(int i4, int i10, RequestSizeOptions requestSizeOptions) {
        int i11;
        Bitmap bitmap;
        if (this.f58841i != null) {
            this.f58833a.clearAnimation();
            RequestSizeOptions requestSizeOptions2 = RequestSizeOptions.NONE;
            int i12 = requestSizeOptions != requestSizeOptions2 ? i4 : 0;
            int i13 = requestSizeOptions != requestSizeOptions2 ? i10 : 0;
            if (this.B != null && (this.C > 1 || requestSizeOptions == RequestSizeOptions.SAMPLING)) {
                i11 = i12;
                bitmap = com.theartofdev.edmodo.cropper.c.d(getContext(), this.B, getCropPoints(), this.f58843k, this.f58841i.getWidth() * this.C, this.f58841i.getHeight() * this.C, this.f58834b.m(), this.f58834b.getAspectRatioX(), this.f58834b.getAspectRatioY(), i12, i13, this.f58844l, this.f58845m).f58941a;
            } else {
                i11 = i12;
                bitmap = com.theartofdev.edmodo.cropper.c.g(this.f58841i, getCropPoints(), this.f58843k, this.f58834b.m(), this.f58834b.getAspectRatioX(), this.f58834b.getAspectRatioY(), this.f58844l, this.f58845m).f58941a;
            }
            return com.theartofdev.edmodo.cropper.c.y(bitmap, i11, i13, requestSizeOptions);
        }
        return null;
    }

    public void l(int i4, int i10) {
        m(i4, i10, RequestSizeOptions.RESIZE_INSIDE);
    }

    public void m(int i4, int i10, RequestSizeOptions requestSizeOptions) {
        if (this.A != null) {
            M(i4, i10, requestSizeOptions, null, null, 0);
            return;
        }
        throw new IllegalArgumentException("mOnCropImageCompleteListener is not set");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        if (this.f58846n > 0 && this.f58847o > 0) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = this.f58846n;
            layoutParams.height = this.f58847o;
            setLayoutParams(layoutParams);
            if (this.f58841i != null) {
                float f10 = i11 - i4;
                float f11 = i12 - i10;
                d(f10, f11, true, false);
                if (this.G != null) {
                    int i13 = this.H;
                    if (i13 != this.f58842j) {
                        this.f58843k = i13;
                        d(f10, f11, true, false);
                    }
                    this.f58835c.mapRect(this.G);
                    this.f58834b.setCropWindowRect(this.G);
                    o(false, false);
                    this.f58834b.i();
                    this.G = null;
                    return;
                } else if (this.I) {
                    this.I = false;
                    o(false, false);
                    return;
                } else {
                    return;
                }
            }
            N(true);
            return;
        }
        N(true);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        int width;
        int i11;
        super.onMeasure(i4, i10);
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i10);
        Bitmap bitmap = this.f58841i;
        if (bitmap != null) {
            if (size2 == 0) {
                size2 = bitmap.getHeight();
            }
            double width2 = size < this.f58841i.getWidth() ? size / this.f58841i.getWidth() : Double.POSITIVE_INFINITY;
            double height = size2 < this.f58841i.getHeight() ? size2 / this.f58841i.getHeight() : Double.POSITIVE_INFINITY;
            if (width2 == Double.POSITIVE_INFINITY && height == Double.POSITIVE_INFINITY) {
                width = this.f58841i.getWidth();
                i11 = this.f58841i.getHeight();
            } else if (width2 <= height) {
                i11 = (int) (this.f58841i.getHeight() * width2);
                width = size;
            } else {
                width = (int) (this.f58841i.getWidth() * height);
                i11 = size2;
            }
            int n9 = n(mode, size, width);
            int n10 = n(mode2, size2, i11);
            this.f58846n = n9;
            this.f58847o = n10;
            setMeasuredDimension(n9, n10);
            return;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            if (this.K == null && this.B == null && this.f58841i == null && this.f58848p == 0) {
                Uri uri = (Uri) bundle.getParcelable("LOADED_IMAGE_URI");
                if (uri != null) {
                    String string = bundle.getString("LOADED_IMAGE_STATE_BITMAP_KEY");
                    if (string != null) {
                        Pair<String, WeakReference<Bitmap>> pair = com.theartofdev.edmodo.cropper.c.f58940g;
                        Bitmap bitmap = (pair == null || !((String) pair.first).equals(string)) ? null : (Bitmap) ((WeakReference) com.theartofdev.edmodo.cropper.c.f58940g.second).get();
                        com.theartofdev.edmodo.cropper.c.f58940g = null;
                        if (bitmap != null && !bitmap.isRecycled()) {
                            G(bitmap, 0, uri, bundle.getInt("LOADED_SAMPLE_SIZE"), 0);
                        }
                    }
                    if (this.B == null) {
                        setImageUriAsync(uri);
                    }
                } else {
                    int i4 = bundle.getInt("LOADED_IMAGE_RESOURCE");
                    if (i4 > 0) {
                        setImageResource(i4);
                    } else {
                        Uri uri2 = (Uri) bundle.getParcelable("LOADING_IMAGE_URI");
                        if (uri2 != null) {
                            setImageUriAsync(uri2);
                        }
                    }
                }
                int i10 = bundle.getInt("DEGREES_ROTATED");
                this.H = i10;
                this.f58843k = i10;
                Rect rect = (Rect) bundle.getParcelable("INITIAL_CROP_RECT");
                if (rect != null && (rect.width() > 0 || rect.height() > 0)) {
                    this.f58834b.setInitialCropWindowRect(rect);
                }
                RectF rectF = (RectF) bundle.getParcelable("CROP_WINDOW_RECT");
                if (rectF != null && (rectF.width() > 0.0f || rectF.height() > 0.0f)) {
                    this.G = rectF;
                }
                this.f58834b.setCropShape(CropShape.valueOf(bundle.getString("CROP_SHAPE")));
                this.f58853u = bundle.getBoolean("CROP_AUTO_ZOOM_ENABLED");
                this.f58854v = bundle.getInt("CROP_MAX_ZOOM");
                this.f58844l = bundle.getBoolean("CROP_FLIP_HORIZONTALLY");
                this.f58845m = bundle.getBoolean("CROP_FLIP_VERTICALLY");
            }
            super.onRestoreInstanceState(bundle.getParcelable("instanceState"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        com.theartofdev.edmodo.cropper.b bVar;
        if (this.B == null && this.f58841i == null && this.f58848p < 1) {
            return super.onSaveInstanceState();
        }
        Bundle bundle = new Bundle();
        Uri uri = this.B;
        if (this.f58850r && uri == null && this.f58848p < 1) {
            uri = com.theartofdev.edmodo.cropper.c.D(getContext(), this.f58841i, this.J);
            this.J = uri;
        }
        if (uri != null && this.f58841i != null) {
            String uuid = UUID.randomUUID().toString();
            com.theartofdev.edmodo.cropper.c.f58940g = new Pair<>(uuid, new WeakReference(this.f58841i));
            bundle.putString("LOADED_IMAGE_STATE_BITMAP_KEY", uuid);
        }
        WeakReference<com.theartofdev.edmodo.cropper.b> weakReference = this.K;
        if (weakReference != null && (bVar = weakReference.get()) != null) {
            bundle.putParcelable("LOADING_IMAGE_URI", bVar.b());
        }
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putParcelable("LOADED_IMAGE_URI", uri);
        bundle.putInt("LOADED_IMAGE_RESOURCE", this.f58848p);
        bundle.putInt("LOADED_SAMPLE_SIZE", this.C);
        bundle.putInt("DEGREES_ROTATED", this.f58843k);
        bundle.putParcelable("INITIAL_CROP_RECT", this.f58834b.getInitialCropWindowRect());
        RectF rectF = com.theartofdev.edmodo.cropper.c.f58936c;
        rectF.set(this.f58834b.getCropWindowRect());
        this.f58835c.invert(this.f58836d);
        this.f58836d.mapRect(rectF);
        bundle.putParcelable("CROP_WINDOW_RECT", rectF);
        bundle.putString("CROP_SHAPE", this.f58834b.getCropShape().name());
        bundle.putBoolean("CROP_AUTO_ZOOM_ENABLED", this.f58853u);
        bundle.putInt("CROP_MAX_ZOOM", this.f58854v);
        bundle.putBoolean("CROP_FLIP_HORIZONTALLY", this.f58844l);
        bundle.putBoolean("CROP_FLIP_VERTICALLY", this.f58845m);
        return bundle;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        super.onSizeChanged(i4, i10, i11, i12);
        this.I = i11 > 0 && i12 > 0;
    }

    public boolean p() {
        return this.f58853u;
    }

    public boolean q() {
        return this.f58834b.m();
    }

    public boolean r() {
        return this.f58844l;
    }

    public boolean s() {
        return this.f58845m;
    }

    public void setAutoZoomEnabled(boolean z9) {
        if (this.f58853u != z9) {
            this.f58853u = z9;
            o(false, false);
            this.f58834b.invalidate();
        }
    }

    public void setCropRect(Rect rect) {
        this.f58834b.setInitialCropWindowRect(rect);
    }

    public void setCropShape(CropShape cropShape) {
        this.f58834b.setCropShape(cropShape);
    }

    public void setFixedAspectRatio(boolean z9) {
        this.f58834b.setFixedAspectRatio(z9);
    }

    public void setFlippedHorizontally(boolean z9) {
        if (this.f58844l != z9) {
            this.f58844l = z9;
            d(getWidth(), getHeight(), true, false);
        }
    }

    public void setFlippedVertically(boolean z9) {
        if (this.f58845m != z9) {
            this.f58845m = z9;
            d(getWidth(), getHeight(), true, false);
        }
    }

    public void setGuidelines(Guidelines guidelines) {
        this.f58834b.setGuidelines(guidelines);
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.f58834b.setInitialCropWindowRect(null);
        G(bitmap, 0, null, 1, 0);
    }

    public void setImageResource(int i4) {
        if (i4 != 0) {
            this.f58834b.setInitialCropWindowRect(null);
            G(BitmapFactory.decodeResource(getResources(), i4), i4, null, 1, 0);
        }
    }

    public void setImageUriAsync(Uri uri) {
        if (uri != null) {
            WeakReference<com.theartofdev.edmodo.cropper.b> weakReference = this.K;
            com.theartofdev.edmodo.cropper.b bVar = weakReference != null ? weakReference.get() : null;
            if (bVar != null) {
                bVar.cancel(true);
            }
            g();
            this.G = null;
            this.H = 0;
            this.f58834b.setInitialCropWindowRect(null);
            WeakReference<com.theartofdev.edmodo.cropper.b> weakReference2 = new WeakReference<>(new com.theartofdev.edmodo.cropper.b(this, uri));
            this.K = weakReference2;
            weakReference2.get().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            L();
        }
    }

    public void setMaxZoom(int i4) {
        if (this.f58854v == i4 || i4 <= 0) {
            return;
        }
        this.f58854v = i4;
        o(false, false);
        this.f58834b.invalidate();
    }

    public void setMultiTouchEnabled(boolean z9) {
        if (this.f58834b.x(z9)) {
            o(false, false);
            this.f58834b.invalidate();
        }
    }

    public void setOnCropImageCompleteListener(c cVar) {
        this.A = cVar;
    }

    public void setOnCropWindowChangedListener(f fVar) {
        this.f58857y = fVar;
    }

    public void setOnSetCropOverlayMovedListener(d dVar) {
        this.f58856x = dVar;
    }

    public void setOnSetCropOverlayReleasedListener(e eVar) {
        this.f58855w = eVar;
    }

    public void setOnSetImageUriCompleteListener(g gVar) {
        this.f58858z = gVar;
    }

    public void setRotatedDegrees(int i4) {
        int i10 = this.f58843k;
        if (i10 != i4) {
            A(i4 - i10);
        }
    }

    public void setSaveBitmapToInstanceState(boolean z9) {
        this.f58850r = z9;
    }

    public void setScaleType(ScaleType scaleType) {
        if (scaleType != this.f58849q) {
            this.f58849q = scaleType;
            this.D = 1.0f;
            this.F = 0.0f;
            this.E = 0.0f;
            this.f58834b.r();
            requestLayout();
        }
    }

    public void setShowCropOverlay(boolean z9) {
        if (this.f58851s != z9) {
            this.f58851s = z9;
            H();
        }
    }

    public void setShowProgressBar(boolean z9) {
        if (this.f58852t != z9) {
            this.f58852t = z9;
            L();
        }
    }

    public void setSnapRadius(float f10) {
        if (f10 >= 0.0f) {
            this.f58834b.setSnapRadius(f10);
        }
    }

    public boolean t() {
        return this.f58850r;
    }

    public boolean u() {
        return this.f58851s;
    }

    public boolean v() {
        return this.f58852t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(a.C0495a c0495a) {
        this.L = null;
        L();
        c cVar = this.A;
        if (cVar != null) {
            cVar.g(this, new b(this.f58841i, this.B, c0495a.f58919a, c0495a.f58920b, c0495a.f58921c, getCropPoints(), getCropRect(), getWholeImageRect(), getRotatedDegrees(), c0495a.f58923e));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(b.a aVar) {
        this.K = null;
        L();
        if (aVar.f58933e == null) {
            int i4 = aVar.f58932d;
            this.f58842j = i4;
            G(aVar.f58930b, 0, aVar.f58929a, aVar.f58931c, i4);
        }
        g gVar = this.f58858z;
        if (gVar != null) {
            gVar.m(this, aVar.f58929a, aVar.f58933e);
        }
    }

    public void z() {
        this.D = 1.0f;
        this.E = 0.0f;
        this.F = 0.0f;
        this.f58843k = this.f58842j;
        this.f58844l = false;
        this.f58845m = false;
        d(getWidth(), getHeight(), false, false);
        this.f58834b.s();
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Bundle bundleExtra;
        this.f58835c = new Matrix();
        this.f58836d = new Matrix();
        this.f58838f = new float[8];
        this.f58839g = new float[8];
        this.f58850r = false;
        this.f58851s = true;
        this.f58852t = true;
        this.f58853u = true;
        this.C = 1;
        this.D = 1.0f;
        CropImageOptions cropImageOptions = null;
        Intent intent = context instanceof Activity ? ((Activity) context).getIntent() : null;
        if (intent != null && (bundleExtra = intent.getBundleExtra(CropImage.f58821c)) != null) {
            cropImageOptions = (CropImageOptions) bundleExtra.getParcelable(CropImage.f58820b);
        }
        if (cropImageOptions == null) {
            cropImageOptions = new CropImageOptions();
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.m.f59635c4, 0, 0);
                try {
                    int i4 = g.m.f59739n4;
                    cropImageOptions.fixAspectRatio = obtainStyledAttributes.getBoolean(i4, cropImageOptions.fixAspectRatio);
                    int i10 = g.m.d4;
                    cropImageOptions.aspectRatioX = obtainStyledAttributes.getInteger(i10, cropImageOptions.aspectRatioX);
                    cropImageOptions.aspectRatioY = obtainStyledAttributes.getInteger(g.m.e4, cropImageOptions.aspectRatioY);
                    cropImageOptions.scaleType = ScaleType.values()[obtainStyledAttributes.getInt(g.m.D4, cropImageOptions.scaleType.ordinal())];
                    cropImageOptions.autoZoomEnabled = obtainStyledAttributes.getBoolean(g.m.f59663f4, cropImageOptions.autoZoomEnabled);
                    cropImageOptions.multiTouchEnabled = obtainStyledAttributes.getBoolean(g.m.B4, cropImageOptions.multiTouchEnabled);
                    cropImageOptions.maxZoom = obtainStyledAttributes.getInteger(g.m.f59829w4, cropImageOptions.maxZoom);
                    cropImageOptions.cropShape = CropShape.values()[obtainStyledAttributes.getInt(g.m.E4, cropImageOptions.cropShape.ordinal())];
                    cropImageOptions.guidelines = Guidelines.values()[obtainStyledAttributes.getInt(g.m.f59769q4, cropImageOptions.guidelines.ordinal())];
                    cropImageOptions.snapRadius = obtainStyledAttributes.getDimension(g.m.H4, cropImageOptions.snapRadius);
                    cropImageOptions.touchRadius = obtainStyledAttributes.getDimension(g.m.I4, cropImageOptions.touchRadius);
                    cropImageOptions.initialCropWindowPaddingRatio = obtainStyledAttributes.getFloat(g.m.f59799t4, cropImageOptions.initialCropWindowPaddingRatio);
                    cropImageOptions.borderLineThickness = obtainStyledAttributes.getDimension(g.m.f59729m4, cropImageOptions.borderLineThickness);
                    cropImageOptions.borderLineColor = obtainStyledAttributes.getInteger(g.m.f59719l4, cropImageOptions.borderLineColor);
                    int i11 = g.m.f59709k4;
                    cropImageOptions.borderCornerThickness = obtainStyledAttributes.getDimension(i11, cropImageOptions.borderCornerThickness);
                    cropImageOptions.borderCornerOffset = obtainStyledAttributes.getDimension(g.m.j4, cropImageOptions.borderCornerOffset);
                    cropImageOptions.borderCornerLength = obtainStyledAttributes.getDimension(g.m.i4, cropImageOptions.borderCornerLength);
                    cropImageOptions.borderCornerColor = obtainStyledAttributes.getInteger(g.m.h4, cropImageOptions.borderCornerColor);
                    cropImageOptions.guidelinesThickness = obtainStyledAttributes.getDimension(g.m.f59789s4, cropImageOptions.guidelinesThickness);
                    cropImageOptions.guidelinesColor = obtainStyledAttributes.getInteger(g.m.f59779r4, cropImageOptions.guidelinesColor);
                    cropImageOptions.backgroundColor = obtainStyledAttributes.getInteger(g.m.g4, cropImageOptions.backgroundColor);
                    cropImageOptions.showCropOverlay = obtainStyledAttributes.getBoolean(g.m.F4, this.f58851s);
                    cropImageOptions.showProgressBar = obtainStyledAttributes.getBoolean(g.m.G4, this.f58852t);
                    cropImageOptions.borderCornerThickness = obtainStyledAttributes.getDimension(i11, cropImageOptions.borderCornerThickness);
                    cropImageOptions.minCropWindowWidth = (int) obtainStyledAttributes.getDimension(g.m.A4, cropImageOptions.minCropWindowWidth);
                    cropImageOptions.minCropWindowHeight = (int) obtainStyledAttributes.getDimension(g.m.f59859z4, cropImageOptions.minCropWindowHeight);
                    cropImageOptions.minCropResultWidth = (int) obtainStyledAttributes.getFloat(g.m.f59849y4, cropImageOptions.minCropResultWidth);
                    cropImageOptions.minCropResultHeight = (int) obtainStyledAttributes.getFloat(g.m.f59839x4, cropImageOptions.minCropResultHeight);
                    cropImageOptions.maxCropResultWidth = (int) obtainStyledAttributes.getFloat(g.m.f59819v4, cropImageOptions.maxCropResultWidth);
                    cropImageOptions.maxCropResultHeight = (int) obtainStyledAttributes.getFloat(g.m.f59809u4, cropImageOptions.maxCropResultHeight);
                    int i12 = g.m.f59749o4;
                    cropImageOptions.flipHorizontally = obtainStyledAttributes.getBoolean(i12, cropImageOptions.flipHorizontally);
                    cropImageOptions.flipVertically = obtainStyledAttributes.getBoolean(i12, cropImageOptions.flipVertically);
                    this.f58850r = obtainStyledAttributes.getBoolean(g.m.C4, this.f58850r);
                    if (obtainStyledAttributes.hasValue(i10) && obtainStyledAttributes.hasValue(i10) && !obtainStyledAttributes.hasValue(i4)) {
                        cropImageOptions.fixAspectRatio = true;
                    }
                } finally {
                    obtainStyledAttributes.recycle();
                }
            }
        }
        cropImageOptions.validate();
        this.f58849q = cropImageOptions.scaleType;
        this.f58853u = cropImageOptions.autoZoomEnabled;
        this.f58854v = cropImageOptions.maxZoom;
        this.f58851s = cropImageOptions.showCropOverlay;
        this.f58852t = cropImageOptions.showProgressBar;
        this.f58844l = cropImageOptions.flipHorizontally;
        this.f58845m = cropImageOptions.flipVertically;
        View inflate = LayoutInflater.from(context).inflate(g.i.D, (ViewGroup) this, true);
        ImageView imageView = (ImageView) inflate.findViewById(g.C0496g.f59310c);
        this.f58833a = imageView;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        CropOverlayView cropOverlayView = (CropOverlayView) inflate.findViewById(g.C0496g.f59304a);
        this.f58834b = cropOverlayView;
        cropOverlayView.setCropWindowChangeListener(new a());
        cropOverlayView.setInitialAttributeValues(cropImageOptions);
        this.f58837e = (ProgressBar) inflate.findViewById(g.C0496g.f59307b);
        L();
    }
}
