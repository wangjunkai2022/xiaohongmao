package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* loaded from: classes4.dex */
public class CropTransformation extends jp.wasabeef.glide.transformations.a {

    /* renamed from: f  reason: collision with root package name */
    private static final int f84362f = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final String f84363g = "jp.wasabeef.glide.transformations.CropTransformation.1";

    /* renamed from: c  reason: collision with root package name */
    private int f84364c;

    /* renamed from: d  reason: collision with root package name */
    private int f84365d;

    /* renamed from: e  reason: collision with root package name */
    private CropType f84366e;

    /* loaded from: classes4.dex */
    public enum CropType {
        TOP,
        CENTER,
        BOTTOM
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f84368a;

        static {
            int[] iArr = new int[CropType.values().length];
            f84368a = iArr;
            try {
                iArr[CropType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f84368a[CropType.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f84368a[CropType.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public CropTransformation(int width, int height) {
        this(width, height, CropType.CENTER);
    }

    private float e(float scaledHeight) {
        int i4 = a.f84368a[this.f84366e.ordinal()];
        if (i4 != 2) {
            if (i4 != 3) {
                return 0.0f;
            }
            return this.f84365d - scaledHeight;
        }
        return (this.f84365d - scaledHeight) / 2.0f;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84363g + this.f84364c + this.f84365d + this.f84366e).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int i4 = this.f84364c;
        if (i4 == 0) {
            i4 = toTransform.getWidth();
        }
        this.f84364c = i4;
        int i10 = this.f84365d;
        if (i10 == 0) {
            i10 = toTransform.getHeight();
        }
        this.f84365d = i10;
        Bitmap e4 = pool.e(this.f84364c, this.f84365d, toTransform.getConfig() != null ? toTransform.getConfig() : Bitmap.Config.ARGB_8888);
        e4.setHasAlpha(true);
        float max = Math.max(this.f84364c / toTransform.getWidth(), this.f84365d / toTransform.getHeight());
        float width = toTransform.getWidth() * max;
        float height = max * toTransform.getHeight();
        float f10 = (this.f84364c - width) / 2.0f;
        float e10 = e(height);
        RectF rectF = new RectF(f10, e10, width + f10, height + e10);
        c(toTransform, e4);
        new Canvas(e4).drawBitmap(toTransform, (Rect) null, rectF, (Paint) null);
        return e4;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        if (o9 instanceof CropTransformation) {
            CropTransformation cropTransformation = (CropTransformation) o9;
            if (cropTransformation.f84364c == this.f84364c && cropTransformation.f84365d == this.f84365d && cropTransformation.f84366e == this.f84366e) {
                return true;
            }
        }
        return false;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return (-1462327117) + (this.f84364c * com.google.android.exoplayer2.audio.a.f21096f) + (this.f84365d * 1000) + (this.f84366e.ordinal() * 10);
    }

    public String toString() {
        return "CropTransformation(width=" + this.f84364c + ", height=" + this.f84365d + ", cropType=" + this.f84366e + ")";
    }

    public CropTransformation(int width, int height, CropType cropType) {
        CropType cropType2 = CropType.CENTER;
        this.f84364c = width;
        this.f84365d = height;
        this.f84366e = cropType;
    }
}
