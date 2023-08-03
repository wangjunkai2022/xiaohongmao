package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* loaded from: classes4.dex */
public class RoundedCornersTransformation extends jp.wasabeef.glide.transformations.a {

    /* renamed from: g  reason: collision with root package name */
    private static final int f84369g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final String f84370h = "jp.wasabeef.glide.transformations.RoundedCornersTransformation.1";

    /* renamed from: c  reason: collision with root package name */
    private final int f84371c;

    /* renamed from: d  reason: collision with root package name */
    private final int f84372d;

    /* renamed from: e  reason: collision with root package name */
    private final int f84373e;

    /* renamed from: f  reason: collision with root package name */
    private final CornerType f84374f;

    /* loaded from: classes4.dex */
    public enum CornerType {
        ALL,
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT,
        OTHER_TOP_LEFT,
        OTHER_TOP_RIGHT,
        OTHER_BOTTOM_LEFT,
        OTHER_BOTTOM_RIGHT,
        DIAGONAL_FROM_TOP_LEFT,
        DIAGONAL_FROM_TOP_RIGHT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f84376a;

        static {
            int[] iArr = new int[CornerType.values().length];
            f84376a = iArr;
            try {
                iArr[CornerType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f84376a[CornerType.TOP_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f84376a[CornerType.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f84376a[CornerType.BOTTOM_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f84376a[CornerType.BOTTOM_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f84376a[CornerType.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f84376a[CornerType.BOTTOM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f84376a[CornerType.LEFT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f84376a[CornerType.RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f84376a[CornerType.OTHER_TOP_LEFT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f84376a[CornerType.OTHER_TOP_RIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f84376a[CornerType.OTHER_BOTTOM_LEFT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f84376a[CornerType.OTHER_BOTTOM_RIGHT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f84376a[CornerType.DIAGONAL_FROM_TOP_LEFT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f84376a[CornerType.DIAGONAL_FROM_TOP_RIGHT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public RoundedCornersTransformation(int radius, int margin) {
        this(radius, margin, CornerType.ALL);
    }

    private void e(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84373e;
        int i10 = this.f84372d;
        RectF rectF = new RectF(i4, bottom - i10, i4 + i10, bottom);
        int i11 = this.f84371c;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        int i12 = this.f84373e;
        canvas.drawRect(new RectF(i12, i12, i12 + this.f84372d, bottom - this.f84371c), paint);
        int i13 = this.f84373e;
        canvas.drawRect(new RectF(this.f84371c + i13, i13, right, bottom), paint);
    }

    private void f(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84372d;
        RectF rectF = new RectF(right - i4, bottom - i4, right, bottom);
        int i10 = this.f84371c;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        int i11 = this.f84373e;
        canvas.drawRect(new RectF(i11, i11, right - this.f84371c, bottom), paint);
        int i12 = this.f84371c;
        canvas.drawRect(new RectF(right - i12, this.f84373e, right, bottom - i12), paint);
    }

    private void g(Canvas canvas, Paint paint, float right, float bottom) {
        RectF rectF = new RectF(this.f84373e, bottom - this.f84372d, right, bottom);
        int i4 = this.f84371c;
        canvas.drawRoundRect(rectF, i4, i4, paint);
        int i10 = this.f84373e;
        canvas.drawRect(new RectF(i10, i10, right, bottom - this.f84371c), paint);
    }

    private void h(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84373e;
        int i10 = this.f84372d;
        RectF rectF = new RectF(i4, i4, i4 + i10, i4 + i10);
        int i11 = this.f84371c;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        int i12 = this.f84372d;
        RectF rectF2 = new RectF(right - i12, bottom - i12, right, bottom);
        int i13 = this.f84371c;
        canvas.drawRoundRect(rectF2, i13, i13, paint);
        int i14 = this.f84373e;
        int i15 = this.f84371c;
        canvas.drawRect(new RectF(i14, i14 + i15, right - i15, bottom), paint);
        int i16 = this.f84373e;
        int i17 = this.f84371c;
        canvas.drawRect(new RectF(i16 + i17, i16, right, bottom - i17), paint);
    }

    private void i(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84372d;
        int i10 = this.f84373e;
        RectF rectF = new RectF(right - i4, i10, right, i10 + i4);
        int i11 = this.f84371c;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        int i12 = this.f84373e;
        int i13 = this.f84372d;
        RectF rectF2 = new RectF(i12, bottom - i13, i12 + i13, bottom);
        int i14 = this.f84371c;
        canvas.drawRoundRect(rectF2, i14, i14, paint);
        int i15 = this.f84373e;
        int i16 = this.f84371c;
        canvas.drawRect(new RectF(i15, i15, right - i16, bottom - i16), paint);
        int i17 = this.f84373e;
        int i18 = this.f84371c;
        canvas.drawRect(new RectF(i17 + i18, i17 + i18, right, bottom), paint);
    }

    private void j(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84373e;
        RectF rectF = new RectF(i4, i4, i4 + this.f84372d, bottom);
        int i10 = this.f84371c;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        int i11 = this.f84373e;
        canvas.drawRect(new RectF(this.f84371c + i11, i11, right, bottom), paint);
    }

    private void k(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84373e;
        RectF rectF = new RectF(i4, i4, right, i4 + this.f84372d);
        int i10 = this.f84371c;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        RectF rectF2 = new RectF(right - this.f84372d, this.f84373e, right, bottom);
        int i11 = this.f84371c;
        canvas.drawRoundRect(rectF2, i11, i11, paint);
        int i12 = this.f84373e;
        int i13 = this.f84371c;
        canvas.drawRect(new RectF(i12, i12 + i13, right - i13, bottom), paint);
    }

    private void l(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84373e;
        RectF rectF = new RectF(i4, i4, right, i4 + this.f84372d);
        int i10 = this.f84371c;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        int i11 = this.f84373e;
        RectF rectF2 = new RectF(i11, i11, i11 + this.f84372d, bottom);
        int i12 = this.f84371c;
        canvas.drawRoundRect(rectF2, i12, i12, paint);
        int i13 = this.f84373e;
        int i14 = this.f84371c;
        canvas.drawRect(new RectF(i13 + i14, i13 + i14, right, bottom), paint);
    }

    private void m(Canvas canvas, Paint paint, float right, float bottom) {
        RectF rectF = new RectF(this.f84373e, bottom - this.f84372d, right, bottom);
        int i4 = this.f84371c;
        canvas.drawRoundRect(rectF, i4, i4, paint);
        RectF rectF2 = new RectF(right - this.f84372d, this.f84373e, right, bottom);
        int i10 = this.f84371c;
        canvas.drawRoundRect(rectF2, i10, i10, paint);
        int i11 = this.f84373e;
        int i12 = this.f84371c;
        canvas.drawRect(new RectF(i11, i11, right - i12, bottom - i12), paint);
    }

    private void n(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84373e;
        RectF rectF = new RectF(i4, i4, i4 + this.f84372d, bottom);
        int i10 = this.f84371c;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        RectF rectF2 = new RectF(this.f84373e, bottom - this.f84372d, right, bottom);
        int i11 = this.f84371c;
        canvas.drawRoundRect(rectF2, i11, i11, paint);
        int i12 = this.f84373e;
        int i13 = this.f84371c;
        canvas.drawRect(new RectF(i12 + i13, i12, right, bottom - i13), paint);
    }

    private void o(Canvas canvas, Paint paint, float right, float bottom) {
        RectF rectF = new RectF(right - this.f84372d, this.f84373e, right, bottom);
        int i4 = this.f84371c;
        canvas.drawRoundRect(rectF, i4, i4, paint);
        int i10 = this.f84373e;
        canvas.drawRect(new RectF(i10, i10, right - this.f84371c, bottom), paint);
    }

    private void p(Canvas canvas, Paint paint, float width, float height) {
        int i4 = this.f84373e;
        float f10 = width - i4;
        float f11 = height - i4;
        switch (a.f84376a[this.f84374f.ordinal()]) {
            case 1:
                int i10 = this.f84373e;
                RectF rectF = new RectF(i10, i10, f10, f11);
                int i11 = this.f84371c;
                canvas.drawRoundRect(rectF, i11, i11, paint);
                return;
            case 2:
                q(canvas, paint, f10, f11);
                return;
            case 3:
                r(canvas, paint, f10, f11);
                return;
            case 4:
                e(canvas, paint, f10, f11);
                return;
            case 5:
                f(canvas, paint, f10, f11);
                return;
            case 6:
                s(canvas, paint, f10, f11);
                return;
            case 7:
                g(canvas, paint, f10, f11);
                return;
            case 8:
                j(canvas, paint, f10, f11);
                return;
            case 9:
                o(canvas, paint, f10, f11);
                return;
            case 10:
                m(canvas, paint, f10, f11);
                return;
            case 11:
                n(canvas, paint, f10, f11);
                return;
            case 12:
                k(canvas, paint, f10, f11);
                return;
            case 13:
                l(canvas, paint, f10, f11);
                return;
            case 14:
                h(canvas, paint, f10, f11);
                return;
            case 15:
                i(canvas, paint, f10, f11);
                return;
            default:
                int i12 = this.f84373e;
                RectF rectF2 = new RectF(i12, i12, f10, f11);
                int i13 = this.f84371c;
                canvas.drawRoundRect(rectF2, i13, i13, paint);
                return;
        }
    }

    private void q(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84373e;
        int i10 = this.f84372d;
        RectF rectF = new RectF(i4, i4, i4 + i10, i4 + i10);
        int i11 = this.f84371c;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        int i12 = this.f84373e;
        int i13 = this.f84371c;
        canvas.drawRect(new RectF(i12, i12 + i13, i12 + i13, bottom), paint);
        int i14 = this.f84373e;
        canvas.drawRect(new RectF(this.f84371c + i14, i14, right, bottom), paint);
    }

    private void r(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84372d;
        int i10 = this.f84373e;
        RectF rectF = new RectF(right - i4, i10, right, i10 + i4);
        int i11 = this.f84371c;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        int i12 = this.f84373e;
        canvas.drawRect(new RectF(i12, i12, right - this.f84371c, bottom), paint);
        int i13 = this.f84371c;
        canvas.drawRect(new RectF(right - i13, this.f84373e + i13, right, bottom), paint);
    }

    private void s(Canvas canvas, Paint paint, float right, float bottom) {
        int i4 = this.f84373e;
        RectF rectF = new RectF(i4, i4, right, i4 + this.f84372d);
        int i10 = this.f84371c;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        int i11 = this.f84373e;
        canvas.drawRect(new RectF(i11, i11 + this.f84371c, right, bottom), paint);
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84370h + this.f84371c + this.f84372d + this.f84373e + this.f84374f).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int width = toTransform.getWidth();
        int height = toTransform.getHeight();
        Bitmap e4 = pool.e(width, height, Bitmap.Config.ARGB_8888);
        e4.setHasAlpha(true);
        c(toTransform, e4);
        Canvas canvas = new Canvas(e4);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(toTransform, tileMode, tileMode));
        p(canvas, paint, width, height);
        return e4;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        if (o9 instanceof RoundedCornersTransformation) {
            RoundedCornersTransformation roundedCornersTransformation = (RoundedCornersTransformation) o9;
            if (roundedCornersTransformation.f84371c == this.f84371c && roundedCornersTransformation.f84372d == this.f84372d && roundedCornersTransformation.f84373e == this.f84373e && roundedCornersTransformation.f84374f == this.f84374f) {
                return true;
            }
        }
        return false;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 425235636 + (this.f84371c * 10000) + (this.f84372d * 1000) + (this.f84373e * 100) + (this.f84374f.ordinal() * 10);
    }

    public String toString() {
        return "RoundedTransformation(radius=" + this.f84371c + ", margin=" + this.f84373e + ", diameter=" + this.f84372d + ", cornerType=" + this.f84374f.name() + ")";
    }

    public RoundedCornersTransformation(int radius, int margin, CornerType cornerType) {
        this.f84371c = radius;
        this.f84372d = radius * 2;
        this.f84373e = margin;
        this.f84374f = cornerType;
    }
}
