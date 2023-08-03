package com.wang.avi;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.wang.avi.indicators.BallPulseIndicator;

/* loaded from: classes3.dex */
public class AVLoadingIndicatorView extends View {
    private static final BallPulseIndicator DEFAULT_INDICATOR = new BallPulseIndicator();
    private static final int MIN_DELAY = 500;
    private static final int MIN_SHOW_TIME = 500;
    private static final String TAG = "AVLoadingIndicatorView";
    private final Runnable mDelayedHide;
    private final Runnable mDelayedShow;
    private boolean mDismissed;
    private Indicator mIndicator;
    private int mIndicatorColor;
    int mMaxHeight;
    int mMaxWidth;
    int mMinHeight;
    int mMinWidth;
    private boolean mPostedHide;
    private boolean mPostedShow;
    private boolean mShouldStartAnimationDrawable;
    private long mStartTime;

    public AVLoadingIndicatorView(Context context) {
        super(context);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, null, 0, 0);
    }

    private void init(Context context, AttributeSet attributeSet, int i4, int i10) {
        this.mMinWidth = 24;
        this.mMaxWidth = 48;
        this.mMinHeight = 24;
        this.mMaxHeight = 48;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AVLoadingIndicatorView, i4, i10);
        this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_minWidth, this.mMinWidth);
        this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_maxWidth, this.mMaxWidth);
        this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_minHeight, this.mMinHeight);
        this.mMaxHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_maxHeight, this.mMaxHeight);
        String string = obtainStyledAttributes.getString(R.styleable.AVLoadingIndicatorView_indicatorName);
        this.mIndicatorColor = obtainStyledAttributes.getColor(R.styleable.AVLoadingIndicatorView_indicatorColor, -1);
        setIndicator(string);
        if (this.mIndicator == null) {
            setIndicator(DEFAULT_INDICATOR);
        }
        obtainStyledAttributes.recycle();
    }

    private void removeCallbacks() {
        removeCallbacks(this.mDelayedHide);
        removeCallbacks(this.mDelayedShow);
    }

    private void updateDrawableBounds(int i4, int i10) {
        Indicator indicator;
        int i11;
        int paddingRight = i4 - (getPaddingRight() + getPaddingLeft());
        int paddingTop = i10 - (getPaddingTop() + getPaddingBottom());
        if (this.mIndicator != null) {
            float intrinsicWidth = indicator.getIntrinsicWidth() / this.mIndicator.getIntrinsicHeight();
            float f10 = paddingRight;
            float f11 = paddingTop;
            float f12 = f10 / f11;
            int i12 = 0;
            if (intrinsicWidth != f12) {
                if (f12 > intrinsicWidth) {
                    int i13 = (int) (f11 * intrinsicWidth);
                    int i14 = (paddingRight - i13) / 2;
                    i12 = i14;
                    paddingRight = i13 + i14;
                } else {
                    int i15 = (int) (f10 * (1.0f / intrinsicWidth));
                    int i16 = (paddingTop - i15) / 2;
                    int i17 = i15 + i16;
                    i11 = i16;
                    paddingTop = i17;
                    this.mIndicator.setBounds(i12, i11, paddingRight, paddingTop);
                }
            }
            i11 = 0;
            this.mIndicator.setBounds(i12, i11, paddingRight, paddingTop);
        }
    }

    private void updateDrawableState() {
        int[] drawableState = getDrawableState();
        Indicator indicator = this.mIndicator;
        if (indicator == null || !indicator.isStateful()) {
            return;
        }
        this.mIndicator.setState(drawableState);
    }

    void drawTrack(Canvas canvas) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            int save = canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            indicator.draw(canvas);
            canvas.restoreToCount(save);
            if (this.mShouldStartAnimationDrawable) {
                indicator.start();
                this.mShouldStartAnimationDrawable = false;
            }
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f10, float f11) {
        super.drawableHotspotChanged(f10, f11);
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.setHotspot(f10, f11);
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        updateDrawableState();
    }

    public Indicator getIndicator() {
        return this.mIndicator;
    }

    public void hide() {
        this.mDismissed = true;
        removeCallbacks(this.mDelayedShow);
        long currentTimeMillis = System.currentTimeMillis();
        long j4 = this.mStartTime;
        long j10 = currentTimeMillis - j4;
        if (j10 < 500 && j4 != -1) {
            if (this.mPostedHide) {
                return;
            }
            postDelayed(this.mDelayedHide, 500 - j10);
            this.mPostedHide = true;
            return;
        }
        setVisibility(8);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (verifyDrawable(drawable)) {
            Rect bounds = drawable.getBounds();
            int scrollX = getScrollX() + getPaddingLeft();
            int scrollY = getScrollY() + getPaddingTop();
            invalidate(bounds.left + scrollX, bounds.top + scrollY, bounds.right + scrollX, bounds.bottom + scrollY);
            return;
        }
        super.invalidateDrawable(drawable);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startAnimation();
        removeCallbacks();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        stopAnimation();
        super.onDetachedFromWindow();
        removeCallbacks();
    }

    @Override // android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawTrack(canvas);
    }

    @Override // android.view.View
    protected synchronized void onMeasure(int i4, int i10) {
        int i11;
        int i12;
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            i12 = Math.max(this.mMinWidth, Math.min(this.mMaxWidth, indicator.getIntrinsicWidth()));
            i11 = Math.max(this.mMinHeight, Math.min(this.mMaxHeight, indicator.getIntrinsicHeight()));
        } else {
            i11 = 0;
            i12 = 0;
        }
        updateDrawableState();
        setMeasuredDimension(View.resolveSizeAndState(i12 + getPaddingLeft() + getPaddingRight(), i4, 0), View.resolveSizeAndState(i11 + getPaddingTop() + getPaddingBottom(), i10, 0));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        updateDrawableBounds(i4, i10);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i4) {
        super.onVisibilityChanged(view, i4);
        if (i4 != 8 && i4 != 4) {
            startAnimation();
        } else {
            stopAnimation();
        }
    }

    public void setIndicator(Indicator indicator) {
        Indicator indicator2 = this.mIndicator;
        if (indicator2 != indicator) {
            if (indicator2 != null) {
                indicator2.setCallback(null);
                unscheduleDrawable(this.mIndicator);
            }
            this.mIndicator = indicator;
            setIndicatorColor(this.mIndicatorColor);
            if (indicator != null) {
                indicator.setCallback(this);
            }
            postInvalidate();
        }
    }

    public void setIndicatorColor(int i4) {
        this.mIndicatorColor = i4;
        this.mIndicator.setColor(i4);
    }

    @Override // android.view.View
    public void setVisibility(int i4) {
        if (getVisibility() != i4) {
            super.setVisibility(i4);
            if (i4 != 8 && i4 != 4) {
                startAnimation();
            } else {
                stopAnimation();
            }
        }
    }

    public void show() {
        this.mStartTime = -1L;
        this.mDismissed = false;
        removeCallbacks(this.mDelayedHide);
        if (this.mPostedShow) {
            return;
        }
        postDelayed(this.mDelayedShow, 500L);
        this.mPostedShow = true;
    }

    public void smoothToHide() {
        startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
        setVisibility(8);
    }

    public void smoothToShow() {
        startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
        setVisibility(0);
    }

    void startAnimation() {
        if (getVisibility() != 0) {
            return;
        }
        if (this.mIndicator instanceof Animatable) {
            this.mShouldStartAnimationDrawable = true;
        }
        postInvalidate();
    }

    void stopAnimation() {
        Indicator indicator = this.mIndicator;
        if (indicator instanceof Animatable) {
            indicator.stop();
            this.mShouldStartAnimationDrawable = false;
        }
        postInvalidate();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mIndicator || super.verifyDrawable(drawable);
    }

    public void setIndicator(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (!str.contains(".")) {
            sb.append(getClass().getPackage().getName());
            sb.append(".indicators");
            sb.append(".");
        }
        sb.append(str);
        try {
            setIndicator((Indicator) Class.forName(sb.toString()).newInstance());
        } catch (ClassNotFoundException unused) {
            Log.e(TAG, "Didn't find your class , check the name again !");
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (InstantiationException e10) {
            e10.printStackTrace();
        }
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, attributeSet, 0, R.style.AVLoadingIndicatorView);
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, attributeSet, i4, R.style.AVLoadingIndicatorView);
    }

    @TargetApi(21)
    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, attributeSet, i4, R.style.AVLoadingIndicatorView);
    }
}
