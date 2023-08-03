package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.cardview.R;

/* loaded from: classes.dex */
class RoundRectDrawableWithShadow extends Drawable {
    private static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    private static final float SHADOW_MULTIPLIER = 1.5f;
    static RoundRectHelper sRoundRectHelper;
    private ColorStateList mBackground;
    private final RectF mCardBounds;
    private float mCornerRadius;
    private Paint mCornerShadowPaint;
    private Path mCornerShadowPath;
    private Paint mEdgeShadowPaint;
    private final int mInsetShadow;
    private float mRawMaxShadowSize;
    private float mRawShadowSize;
    private final int mShadowEndColor;
    private float mShadowSize;
    private final int mShadowStartColor;
    private boolean mDirty = true;
    private boolean mAddPaddingForCorners = true;
    private boolean mPrintedShadowClipWarning = false;
    private Paint mPaint = new Paint(5);

    /* loaded from: classes.dex */
    interface RoundRectHelper {
        void drawRoundRect(Canvas canvas, RectF rectF, float f10, Paint paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoundRectDrawableWithShadow(Resources resources, ColorStateList colorStateList, float f10, float f11, float f12) {
        this.mShadowStartColor = resources.getColor(R.color.cardview_shadow_start_color);
        this.mShadowEndColor = resources.getColor(R.color.cardview_shadow_end_color);
        this.mInsetShadow = resources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
        setBackground(colorStateList);
        Paint paint = new Paint(5);
        this.mCornerShadowPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.mCornerRadius = (int) (f10 + 0.5f);
        this.mCardBounds = new RectF();
        Paint paint2 = new Paint(this.mCornerShadowPaint);
        this.mEdgeShadowPaint = paint2;
        paint2.setAntiAlias(false);
        setShadowSize(f11, f12);
    }

    private void buildComponents(Rect rect) {
        float f10 = this.mRawMaxShadowSize;
        float f11 = SHADOW_MULTIPLIER * f10;
        this.mCardBounds.set(rect.left + f10, rect.top + f11, rect.right - f10, rect.bottom - f11);
        buildShadowCorners();
    }

    private void buildShadowCorners() {
        float f10 = this.mCornerRadius;
        RectF rectF = new RectF(-f10, -f10, f10, f10);
        RectF rectF2 = new RectF(rectF);
        float f11 = this.mShadowSize;
        rectF2.inset(-f11, -f11);
        Path path = this.mCornerShadowPath;
        if (path == null) {
            this.mCornerShadowPath = new Path();
        } else {
            path.reset();
        }
        this.mCornerShadowPath.setFillType(Path.FillType.EVEN_ODD);
        this.mCornerShadowPath.moveTo(-this.mCornerRadius, 0.0f);
        this.mCornerShadowPath.rLineTo(-this.mShadowSize, 0.0f);
        this.mCornerShadowPath.arcTo(rectF2, 180.0f, 90.0f, false);
        this.mCornerShadowPath.arcTo(rectF, 270.0f, -90.0f, false);
        this.mCornerShadowPath.close();
        float f12 = this.mCornerRadius;
        float f13 = f12 / (this.mShadowSize + f12);
        Paint paint = this.mCornerShadowPaint;
        float f14 = this.mCornerRadius + this.mShadowSize;
        int i4 = this.mShadowStartColor;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f14, new int[]{i4, i4, this.mShadowEndColor}, new float[]{0.0f, f13, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.mEdgeShadowPaint;
        float f15 = this.mCornerRadius;
        float f16 = this.mShadowSize;
        int i10 = this.mShadowStartColor;
        paint2.setShader(new LinearGradient(0.0f, (-f15) + f16, 0.0f, (-f15) - f16, new int[]{i10, i10, this.mShadowEndColor}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.mEdgeShadowPaint.setAntiAlias(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float calculateHorizontalPadding(float f10, float f11, boolean z9) {
        return z9 ? (float) (f10 + ((1.0d - COS_45) * f11)) : f10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float calculateVerticalPadding(float f10, float f11, boolean z9) {
        return z9 ? (float) ((f10 * SHADOW_MULTIPLIER) + ((1.0d - COS_45) * f11)) : f10 * SHADOW_MULTIPLIER;
    }

    private void drawShadow(Canvas canvas) {
        float f10 = this.mCornerRadius;
        float f11 = (-f10) - this.mShadowSize;
        float f12 = f10 + this.mInsetShadow + (this.mRawShadowSize / 2.0f);
        float f13 = f12 * 2.0f;
        boolean z9 = this.mCardBounds.width() - f13 > 0.0f;
        boolean z10 = this.mCardBounds.height() - f13 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.mCardBounds;
        canvas.translate(rectF.left + f12, rectF.top + f12);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z9) {
            canvas.drawRect(0.0f, f11, this.mCardBounds.width() - f13, -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.mCardBounds;
        canvas.translate(rectF2.right - f12, rectF2.bottom - f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z9) {
            canvas.drawRect(0.0f, f11, this.mCardBounds.width() - f13, (-this.mCornerRadius) + this.mShadowSize, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.mCardBounds;
        canvas.translate(rectF3.left + f12, rectF3.bottom - f12);
        canvas.rotate(270.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z10) {
            canvas.drawRect(0.0f, f11, this.mCardBounds.height() - f13, -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.mCardBounds;
        canvas.translate(rectF4.right - f12, rectF4.top + f12);
        canvas.rotate(90.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z10) {
            canvas.drawRect(0.0f, f11, this.mCardBounds.height() - f13, -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(save4);
    }

    private void setBackground(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.mBackground = colorStateList;
        this.mPaint.setColor(colorStateList.getColorForState(getState(), this.mBackground.getDefaultColor()));
    }

    private void setShadowSize(float f10, float f11) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f10 + ". Must be >= 0");
        } else if (f11 >= 0.0f) {
            float even = toEven(f10);
            float even2 = toEven(f11);
            if (even > even2) {
                if (!this.mPrintedShadowClipWarning) {
                    this.mPrintedShadowClipWarning = true;
                }
                even = even2;
            }
            if (this.mRawShadowSize == even && this.mRawMaxShadowSize == even2) {
                return;
            }
            this.mRawShadowSize = even;
            this.mRawMaxShadowSize = even2;
            this.mShadowSize = (int) ((even * SHADOW_MULTIPLIER) + this.mInsetShadow + 0.5f);
            this.mDirty = true;
            invalidateSelf();
        } else {
            throw new IllegalArgumentException("Invalid max shadow size " + f11 + ". Must be >= 0");
        }
    }

    private int toEven(float f10) {
        int i4 = (int) (f10 + 0.5f);
        return i4 % 2 == 1 ? i4 - 1 : i4;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mDirty) {
            buildComponents(getBounds());
            this.mDirty = false;
        }
        canvas.translate(0.0f, this.mRawShadowSize / 2.0f);
        drawShadow(canvas);
        canvas.translate(0.0f, (-this.mRawShadowSize) / 2.0f);
        sRoundRectHelper.drawRoundRect(canvas, this.mCardBounds, this.mCornerRadius, this.mPaint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getColor() {
        return this.mBackground;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getCornerRadius() {
        return this.mCornerRadius;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getMaxShadowAndCornerPadding(Rect rect) {
        getPadding(rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getMaxShadowSize() {
        return this.mRawMaxShadowSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getMinHeight() {
        float f10 = this.mRawMaxShadowSize;
        return (Math.max(f10, this.mCornerRadius + this.mInsetShadow + ((f10 * SHADOW_MULTIPLIER) / 2.0f)) * 2.0f) + (((this.mRawMaxShadowSize * SHADOW_MULTIPLIER) + this.mInsetShadow) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getMinWidth() {
        float f10 = this.mRawMaxShadowSize;
        return (Math.max(f10, this.mCornerRadius + this.mInsetShadow + (f10 / 2.0f)) * 2.0f) + ((this.mRawMaxShadowSize + this.mInsetShadow) * 2.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(calculateVerticalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        int ceil2 = (int) Math.ceil(calculateHorizontalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getShadowSize() {
        return this.mRawShadowSize;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.mBackground;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mDirty = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.mBackground;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.mPaint.getColor() == colorForState) {
            return false;
        }
        this.mPaint.setColor(colorForState);
        this.mDirty = true;
        invalidateSelf();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAddPaddingForCorners(boolean z9) {
        this.mAddPaddingForCorners = z9;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        this.mPaint.setAlpha(i4);
        this.mCornerShadowPaint.setAlpha(i4);
        this.mEdgeShadowPaint.setAlpha(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setColor(@Nullable ColorStateList colorStateList) {
        setBackground(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCornerRadius(float f10) {
        if (f10 >= 0.0f) {
            float f11 = (int) (f10 + 0.5f);
            if (this.mCornerRadius == f11) {
                return;
            }
            this.mCornerRadius = f11;
            this.mDirty = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException("Invalid radius " + f10 + ". Must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMaxShadowSize(float f10) {
        setShadowSize(this.mRawShadowSize, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShadowSize(float f10) {
        setShadowSize(f10, this.mRawMaxShadowSize);
    }
}
