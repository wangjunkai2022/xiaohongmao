package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ClockHandView extends View {
    private static final int ANIMATION_DURATION = 200;
    private boolean animatingOnTouchUp;
    private final float centerDotRadius;
    private boolean changedDuringTouch;
    private int circleRadius;
    private double degRad;
    private float downX;
    private float downY;
    private boolean isInTapRegion;
    private final List<OnRotateListener> listeners;
    private OnActionUpListener onActionUpListener;
    private float originalDeg;
    private final Paint paint;
    private ValueAnimator rotationAnimator;
    private int scaledTouchSlop;
    private final RectF selectorBox;
    private final int selectorRadius;
    @Px
    private final int selectorStrokeWidth;

    /* loaded from: classes2.dex */
    public interface OnActionUpListener {
        void onActionUp(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z9);
    }

    /* loaded from: classes2.dex */
    public interface OnRotateListener {
        void onRotate(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z9);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    private void drawSelector(Canvas canvas) {
        int width;
        int height = getHeight() / 2;
        float width2 = getWidth() / 2;
        float f10 = height;
        this.paint.setStrokeWidth(0.0f);
        canvas.drawCircle((this.circleRadius * ((float) Math.cos(this.degRad))) + width2, (this.circleRadius * ((float) Math.sin(this.degRad))) + f10, this.selectorRadius, this.paint);
        double sin = Math.sin(this.degRad);
        double cos = Math.cos(this.degRad);
        this.paint.setStrokeWidth(this.selectorStrokeWidth);
        canvas.drawLine(width2, f10, width + ((int) (cos * r6)), height + ((int) (r6 * sin)), this.paint);
        canvas.drawCircle(width2, f10, this.centerDotRadius, this.paint);
    }

    private int getDegreesFromXY(float f10, float f11) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f11 - (getHeight() / 2), f10 - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    private Pair<Float, Float> getValuesForAnimation(float f10) {
        float handRotation = getHandRotation();
        if (Math.abs(handRotation - f10) > 180.0f) {
            if (handRotation > 180.0f && f10 < 180.0f) {
                f10 += 360.0f;
            }
            if (handRotation < 180.0f && f10 > 180.0f) {
                handRotation += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(handRotation), Float.valueOf(f10));
    }

    private boolean handleTouchInput(float f10, float f11, boolean z9, boolean z10, boolean z11) {
        float degreesFromXY = getDegreesFromXY(f10, f11);
        boolean z12 = false;
        boolean z13 = getHandRotation() != degreesFromXY;
        if (z10 && z13) {
            return true;
        }
        if (z13 || z9) {
            if (z11 && this.animatingOnTouchUp) {
                z12 = true;
            }
            setHandRotation(degreesFromXY, z12);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHandRotationInternal(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z9) {
        float f11 = f10 % 360.0f;
        this.originalDeg = f11;
        this.degRad = Math.toRadians(f11 - 90.0f);
        float width = (getWidth() / 2) + (this.circleRadius * ((float) Math.cos(this.degRad)));
        float height = (getHeight() / 2) + (this.circleRadius * ((float) Math.sin(this.degRad)));
        RectF rectF = this.selectorBox;
        int i4 = this.selectorRadius;
        rectF.set(width - i4, height - i4, width + i4, height + i4);
        for (OnRotateListener onRotateListener : this.listeners) {
            onRotateListener.onRotate(f11, z9);
        }
        invalidate();
    }

    public void addOnRotateListener(OnRotateListener onRotateListener) {
        this.listeners.add(onRotateListener);
    }

    public RectF getCurrentSelectorBox() {
        return this.selectorBox;
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    public float getHandRotation() {
        return this.originalDeg;
    }

    public int getSelectorRadius() {
        return this.selectorRadius;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawSelector(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        setHandRotation(getHandRotation());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z9;
        boolean z10;
        boolean z11;
        OnActionUpListener onActionUpListener;
        int actionMasked = motionEvent.getActionMasked();
        float x9 = motionEvent.getX();
        float y9 = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i4 = (int) (x9 - this.downX);
                int i10 = (int) (y9 - this.downY);
                this.isInTapRegion = (i4 * i4) + (i10 * i10) > this.scaledTouchSlop;
                boolean z12 = this.changedDuringTouch;
                z9 = actionMasked == 1;
                z10 = z12;
            } else {
                z9 = false;
                z10 = false;
            }
            z11 = false;
        } else {
            this.downX = x9;
            this.downY = y9;
            this.isInTapRegion = true;
            this.changedDuringTouch = false;
            z9 = false;
            z10 = false;
            z11 = true;
        }
        boolean handleTouchInput = handleTouchInput(x9, y9, z10, z11, z9) | this.changedDuringTouch;
        this.changedDuringTouch = handleTouchInput;
        if (handleTouchInput && z9 && (onActionUpListener = this.onActionUpListener) != null) {
            onActionUpListener.onActionUp(getDegreesFromXY(x9, y9), this.isInTapRegion);
        }
        return true;
    }

    public void setAnimateOnTouchUp(boolean z9) {
        this.animatingOnTouchUp = z9;
    }

    public void setCircleRadius(@Dimension int i4) {
        this.circleRadius = i4;
        invalidate();
    }

    public void setHandRotation(@FloatRange(from = 0.0d, to = 360.0d) float f10) {
        setHandRotation(f10, false);
    }

    public void setOnActionUpListener(OnActionUpListener onActionUpListener) {
        this.onActionUpListener = onActionUpListener;
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public void setHandRotation(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z9) {
        ValueAnimator valueAnimator = this.rotationAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z9) {
            setHandRotationInternal(f10, false);
            return;
        }
        Pair<Float, Float> valuesForAnimation = getValuesForAnimation(f10);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) valuesForAnimation.first).floatValue(), ((Float) valuesForAnimation.second).floatValue());
        this.rotationAnimator = ofFloat;
        ofFloat.setDuration(200L);
        this.rotationAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.ClockHandView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ClockHandView.this.setHandRotationInternal(((Float) valueAnimator2.getAnimatedValue()).floatValue(), true);
            }
        });
        this.rotationAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.timepicker.ClockHandView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animator.end();
            }
        });
        this.rotationAnimator.start();
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.listeners = new ArrayList();
        Paint paint = new Paint();
        this.paint = paint;
        this.selectorBox = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i4, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.selectorRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.selectorStrokeWidth = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.centerDotRadius = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        setHandRotation(0.0f);
        this.scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        obtainStyledAttributes.recycle();
    }
}
