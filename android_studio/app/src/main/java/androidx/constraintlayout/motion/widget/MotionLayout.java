package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    private static final boolean DEBUG = false;
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    private static final float EPSILON = 1.0E-5f;
    public static boolean IS_IN_EDIT_MODE = false;
    static final int MAX_KEY_FRAMES = 50;
    static final String TAG = "MotionLayout";
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    boolean firstDown;
    private float lastPos;
    private float lastY;
    private long mAnimationStartTime;
    private int mBeginState;
    private RectF mBoundsCheck;
    int mCurrentState;
    int mDebugPath;
    private DecelerateInterpolator mDecelerateLogic;
    private ArrayList<MotionHelper> mDecoratorsHelpers;
    private boolean mDelayedApply;
    private DesignTool mDesignTool;
    DevModeDraw mDevModeDraw;
    private int mEndState;
    int mEndWrapHeight;
    int mEndWrapWidth;
    HashMap<View, MotionController> mFrameArrayList;
    private int mFrames;
    int mHeightMeasureMode;
    private boolean mInLayout;
    private boolean mInRotation;
    boolean mInTransition;
    boolean mIndirectTransition;
    private boolean mInteractionEnabled;
    Interpolator mInterpolator;
    private Matrix mInverseMatrix;
    boolean mIsAnimating;
    private boolean mKeepAnimating;
    private KeyCache mKeyCache;
    private long mLastDrawTime;
    private float mLastFps;
    private int mLastHeightMeasureSpec;
    int mLastLayoutHeight;
    int mLastLayoutWidth;
    float mLastVelocity;
    private int mLastWidthMeasureSpec;
    private float mListenerPosition;
    private int mListenerState;
    protected boolean mMeasureDuringTransition;
    Model mModel;
    private boolean mNeedsFireTransitionCompleted;
    int mOldHeight;
    int mOldWidth;
    private Runnable mOnComplete;
    private ArrayList<MotionHelper> mOnHideHelpers;
    private ArrayList<MotionHelper> mOnShowHelpers;
    float mPostInterpolationPosition;
    HashMap<View, ViewState> mPreRotate;
    private int mPreRotateHeight;
    private int mPreRotateWidth;
    private int mPreviouseRotation;
    Interpolator mProgressInterpolator;
    private View mRegionView;
    int mRotatMode;
    MotionScene mScene;
    private int[] mScheduledTransitionTo;
    int mScheduledTransitions;
    float mScrollTargetDT;
    float mScrollTargetDX;
    float mScrollTargetDY;
    long mScrollTargetTime;
    int mStartWrapHeight;
    int mStartWrapWidth;
    private StateCache mStateCache;
    private StopLogic mStopLogic;
    Rect mTempRect;
    private boolean mTemporalInterpolator;
    ArrayList<Integer> mTransitionCompleted;
    private float mTransitionDuration;
    float mTransitionGoalPosition;
    private boolean mTransitionInstantly;
    float mTransitionLastPosition;
    private long mTransitionLastTime;
    private TransitionListener mTransitionListener;
    private CopyOnWriteArrayList<TransitionListener> mTransitionListeners;
    float mTransitionPosition;
    TransitionState mTransitionState;
    boolean mUndergoingMotion;
    int mWidthMeasureMode;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$5  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState;

        static {
            int[] iArr = new int[TransitionState.values().length];
            $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    class DecelerateInterpolator extends MotionInterpolator {
        float maxA;
        float initalV = 0.0f;
        float currentP = 0.0f;

        DecelerateInterpolator() {
        }

        public void config(float velocity, float position, float maxAcceleration) {
            this.initalV = velocity;
            this.currentP = position;
            this.maxA = maxAcceleration;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float time) {
            float f10;
            float f11;
            float f12 = this.initalV;
            if (f12 > 0.0f) {
                float f13 = this.maxA;
                if (f12 / f13 < time) {
                    time = f12 / f13;
                }
                MotionLayout.this.mLastVelocity = f12 - (f13 * time);
                f10 = (f12 * time) - (((f13 * time) * time) / 2.0f);
                f11 = this.currentP;
            } else {
                float f14 = this.maxA;
                if ((-f12) / f14 < time) {
                    time = (-f12) / f14;
                }
                MotionLayout.this.mLastVelocity = (f14 * time) + f12;
                f10 = (f12 * time) + (((f14 * time) * time) / 2.0f);
                f11 = this.currentP;
            }
            return f10 + f11;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public float getVelocity() {
            return MotionLayout.this.mLastVelocity;
        }
    }

    /* loaded from: classes.dex */
    private class DevModeDraw {
        private static final int DEBUG_PATH_TICKS_PER_MS = 16;
        DashPathEffect mDashPathEffect;
        Paint mFillPaint;
        int mKeyFrameCount;
        float[] mKeyFramePoints;
        Paint mPaint;
        Paint mPaintGraph;
        Paint mPaintKeyframes;
        Path mPath;
        int[] mPathMode;
        float[] mPoints;
        private float[] mRectangle;
        int mShadowTranslate;
        Paint mTextPaint;
        final int RED_COLOR = -21965;
        final int KEYFRAME_COLOR = -2067046;
        final int GRAPH_COLOR = -13391360;
        final int SHADOW_COLOR = 1996488704;
        final int DIAMOND_SIZE = 10;
        Rect mBounds = new Rect();
        boolean mPresentationMode = false;

        public DevModeDraw() {
            this.mShadowTranslate = 1;
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setAntiAlias(true);
            this.mPaint.setColor(-21965);
            this.mPaint.setStrokeWidth(2.0f);
            this.mPaint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.mPaintKeyframes = paint2;
            paint2.setAntiAlias(true);
            this.mPaintKeyframes.setColor(-2067046);
            this.mPaintKeyframes.setStrokeWidth(2.0f);
            this.mPaintKeyframes.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.mPaintGraph = paint3;
            paint3.setAntiAlias(true);
            this.mPaintGraph.setColor(-13391360);
            this.mPaintGraph.setStrokeWidth(2.0f);
            this.mPaintGraph.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.mTextPaint = paint4;
            paint4.setAntiAlias(true);
            this.mTextPaint.setColor(-13391360);
            this.mTextPaint.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.mRectangle = new float[8];
            Paint paint5 = new Paint();
            this.mFillPaint = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.mDashPathEffect = dashPathEffect;
            this.mPaintGraph.setPathEffect(dashPathEffect);
            this.mKeyFramePoints = new float[100];
            this.mPathMode = new int[50];
            if (this.mPresentationMode) {
                this.mPaint.setStrokeWidth(8.0f);
                this.mFillPaint.setStrokeWidth(8.0f);
                this.mPaintKeyframes.setStrokeWidth(8.0f);
                this.mShadowTranslate = 4;
            }
        }

        private void drawBasicPath(Canvas canvas) {
            canvas.drawLines(this.mPoints, this.mPaint);
        }

        private void drawPathAsConfigured(Canvas canvas) {
            boolean z9 = false;
            boolean z10 = false;
            for (int i4 = 0; i4 < this.mKeyFrameCount; i4++) {
                int[] iArr = this.mPathMode;
                if (iArr[i4] == 1) {
                    z9 = true;
                }
                if (iArr[i4] == 0) {
                    z10 = true;
                }
            }
            if (z9) {
                drawPathRelative(canvas);
            }
            if (z10) {
                drawPathCartesian(canvas);
            }
        }

        private void drawPathCartesian(Canvas canvas) {
            float[] fArr = this.mPoints;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[fArr.length - 2];
            float f13 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f10, f12), Math.max(f11, f13), Math.max(f10, f12), Math.max(f11, f13), this.mPaintGraph);
            canvas.drawLine(Math.min(f10, f12), Math.min(f11, f13), Math.min(f10, f12), Math.max(f11, f13), this.mPaintGraph);
        }

        private void drawPathCartesianTicks(Canvas canvas, float x9, float y9) {
            float[] fArr = this.mPoints;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[fArr.length - 2];
            float f13 = fArr[fArr.length - 1];
            float min = Math.min(f10, f12);
            float max = Math.max(f11, f13);
            float min2 = x9 - Math.min(f10, f12);
            float max2 = Math.max(f11, f13) - y9;
            StringBuilder sb = new StringBuilder(15);
            sb.append(((int) (((min2 * 100.0f) / Math.abs(f12 - f10)) + 0.5d)) / 100.0f);
            String sb2 = sb.toString();
            getTextBounds(sb2, this.mTextPaint);
            canvas.drawText(sb2, ((min2 / 2.0f) - (this.mBounds.width() / 2)) + min, y9 - 20.0f, this.mTextPaint);
            canvas.drawLine(x9, y9, Math.min(f10, f12), y9, this.mPaintGraph);
            StringBuilder sb3 = new StringBuilder(15);
            sb3.append(((int) (((max2 * 100.0f) / Math.abs(f13 - f11)) + 0.5d)) / 100.0f);
            String sb4 = sb3.toString();
            getTextBounds(sb4, this.mTextPaint);
            canvas.drawText(sb4, x9 + 5.0f, max - ((max2 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(x9, y9, x9, Math.max(f11, f13), this.mPaintGraph);
        }

        private void drawPathRelative(Canvas canvas) {
            float[] fArr = this.mPoints;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.mPaintGraph);
        }

        private void drawPathRelativeTicks(Canvas canvas, float x9, float y9) {
            float[] fArr = this.mPoints;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[fArr.length - 2];
            float f13 = fArr[fArr.length - 1];
            float hypot = (float) Math.hypot(f10 - f12, f11 - f13);
            float f14 = f12 - f10;
            float f15 = f13 - f11;
            float f16 = (((x9 - f10) * f14) + ((y9 - f11) * f15)) / (hypot * hypot);
            float f17 = f10 + (f14 * f16);
            float f18 = f11 + (f16 * f15);
            Path path = new Path();
            path.moveTo(x9, y9);
            path.lineTo(f17, f18);
            float hypot2 = (float) Math.hypot(f17 - x9, f18 - y9);
            StringBuilder sb = new StringBuilder(15);
            sb.append(((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
            String sb2 = sb.toString();
            getTextBounds(sb2, this.mTextPaint);
            canvas.drawTextOnPath(sb2, path, (hypot2 / 2.0f) - (this.mBounds.width() / 2), -20.0f, this.mTextPaint);
            canvas.drawLine(x9, y9, f17, f18, this.mPaintGraph);
        }

        private void drawPathScreenTicks(Canvas canvas, float x9, float y9, int viewWidth, int viewHeight) {
            StringBuilder sb = new StringBuilder(15);
            sb.append(((int) ((((x9 - (viewWidth / 2)) * 100.0f) / (MotionLayout.this.getWidth() - viewWidth)) + 0.5d)) / 100.0f);
            String sb2 = sb.toString();
            getTextBounds(sb2, this.mTextPaint);
            canvas.drawText(sb2, ((x9 / 2.0f) - (this.mBounds.width() / 2)) + 0.0f, y9 - 20.0f, this.mTextPaint);
            canvas.drawLine(x9, y9, Math.min(0.0f, 1.0f), y9, this.mPaintGraph);
            StringBuilder sb3 = new StringBuilder(15);
            sb3.append(((int) ((((y9 - (viewHeight / 2)) * 100.0f) / (MotionLayout.this.getHeight() - viewHeight)) + 0.5d)) / 100.0f);
            String sb4 = sb3.toString();
            getTextBounds(sb4, this.mTextPaint);
            canvas.drawText(sb4, x9 + 5.0f, 0.0f - ((y9 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(x9, y9, x9, Math.max(0.0f, 1.0f), this.mPaintGraph);
        }

        private void drawRectangle(Canvas canvas, MotionController motionController) {
            this.mPath.reset();
            for (int i4 = 0; i4 <= 50; i4++) {
                motionController.buildRect(i4 / 50, this.mRectangle, 0);
                Path path = this.mPath;
                float[] fArr = this.mRectangle;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.mPath;
                float[] fArr2 = this.mRectangle;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.mPath;
                float[] fArr3 = this.mRectangle;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.mPath;
                float[] fArr4 = this.mRectangle;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.mPath.close();
            }
            this.mPaint.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.mPath, this.mPaint);
            canvas.translate(-2.0f, -2.0f);
            this.mPaint.setColor(SupportMenu.CATEGORY_MASK);
            canvas.drawPath(this.mPath, this.mPaint);
        }

        private void drawTicks(Canvas canvas, int mode, int keyFrames, MotionController motionController) {
            int i4;
            int i10;
            float f10;
            float f11;
            View view = motionController.mView;
            if (view != null) {
                i4 = view.getWidth();
                i10 = motionController.mView.getHeight();
            } else {
                i4 = 0;
                i10 = 0;
            }
            for (int i11 = 1; i11 < keyFrames - 1; i11++) {
                if (mode != 4 || this.mPathMode[i11 - 1] != 0) {
                    float[] fArr = this.mKeyFramePoints;
                    int i12 = i11 * 2;
                    float f12 = fArr[i12];
                    float f13 = fArr[i12 + 1];
                    this.mPath.reset();
                    this.mPath.moveTo(f12, f13 + 10.0f);
                    this.mPath.lineTo(f12 + 10.0f, f13);
                    this.mPath.lineTo(f12, f13 - 10.0f);
                    this.mPath.lineTo(f12 - 10.0f, f13);
                    this.mPath.close();
                    int i13 = i11 - 1;
                    motionController.getKeyFrame(i13);
                    if (mode == 4) {
                        int[] iArr = this.mPathMode;
                        if (iArr[i13] == 1) {
                            drawPathRelativeTicks(canvas, f12 - 0.0f, f13 - 0.0f);
                        } else if (iArr[i13] == 0) {
                            drawPathCartesianTicks(canvas, f12 - 0.0f, f13 - 0.0f);
                        } else if (iArr[i13] == 2) {
                            f10 = f13;
                            f11 = f12;
                            drawPathScreenTicks(canvas, f12 - 0.0f, f13 - 0.0f, i4, i10);
                            canvas.drawPath(this.mPath, this.mFillPaint);
                        }
                        f10 = f13;
                        f11 = f12;
                        canvas.drawPath(this.mPath, this.mFillPaint);
                    } else {
                        f10 = f13;
                        f11 = f12;
                    }
                    if (mode == 2) {
                        drawPathRelativeTicks(canvas, f11 - 0.0f, f10 - 0.0f);
                    }
                    if (mode == 3) {
                        drawPathCartesianTicks(canvas, f11 - 0.0f, f10 - 0.0f);
                    }
                    if (mode == 6) {
                        drawPathScreenTicks(canvas, f11 - 0.0f, f10 - 0.0f, i4, i10);
                    }
                    canvas.drawPath(this.mPath, this.mFillPaint);
                }
            }
            float[] fArr2 = this.mPoints;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.mPaintKeyframes);
                float[] fArr3 = this.mPoints;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.mPaintKeyframes);
            }
        }

        private void drawTranslation(Canvas canvas, float x12, float y12, float x22, float y22) {
            canvas.drawRect(x12, y12, x22, y22, this.mPaintGraph);
            canvas.drawLine(x12, y12, x22, y22, this.mPaintGraph);
        }

        public void draw(Canvas canvas, HashMap<View, MotionController> frameArrayList, int duration, int debugPath) {
            if (frameArrayList == null || frameArrayList.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (debugPath & 1) == 2) {
                String resourceName = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.mEndState);
                float progress = MotionLayout.this.getProgress();
                StringBuilder sb = new StringBuilder(String.valueOf(resourceName).length() + 16);
                sb.append(resourceName);
                sb.append(":");
                sb.append(progress);
                String sb2 = sb.toString();
                canvas.drawText(sb2, 10.0f, MotionLayout.this.getHeight() - 30, this.mTextPaint);
                canvas.drawText(sb2, 11.0f, MotionLayout.this.getHeight() - 29, this.mPaint);
            }
            for (MotionController motionController : frameArrayList.values()) {
                int drawPath = motionController.getDrawPath();
                if (debugPath > 0 && drawPath == 0) {
                    drawPath = 1;
                }
                if (drawPath != 0) {
                    this.mKeyFrameCount = motionController.buildKeyFrames(this.mKeyFramePoints, this.mPathMode);
                    if (drawPath >= 1) {
                        int i4 = duration / 16;
                        float[] fArr = this.mPoints;
                        if (fArr == null || fArr.length != i4 * 2) {
                            this.mPoints = new float[i4 * 2];
                            this.mPath = new Path();
                        }
                        int i10 = this.mShadowTranslate;
                        canvas.translate(i10, i10);
                        this.mPaint.setColor(1996488704);
                        this.mFillPaint.setColor(1996488704);
                        this.mPaintKeyframes.setColor(1996488704);
                        this.mPaintGraph.setColor(1996488704);
                        motionController.buildPath(this.mPoints, i4);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        this.mPaint.setColor(-21965);
                        this.mPaintKeyframes.setColor(-2067046);
                        this.mFillPaint.setColor(-2067046);
                        this.mPaintGraph.setColor(-13391360);
                        int i11 = this.mShadowTranslate;
                        canvas.translate(-i11, -i11);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        if (drawPath == 5) {
                            drawRectangle(canvas, motionController);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void drawAll(Canvas canvas, int mode, int keyFrames, MotionController motionController) {
            if (mode == 4) {
                drawPathAsConfigured(canvas);
            }
            if (mode == 2) {
                drawPathRelative(canvas);
            }
            if (mode == 3) {
                drawPathCartesian(canvas);
            }
            drawBasicPath(canvas);
            drawTicks(canvas, mode, keyFrames, motionController);
        }

        void getTextBounds(String text, Paint paint) {
            paint.getTextBounds(text, 0, text.length(), this.mBounds);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Model {
        int mEndId;
        int mStartId;
        ConstraintWidgetContainer mLayoutStart = new ConstraintWidgetContainer();
        ConstraintWidgetContainer mLayoutEnd = new ConstraintWidgetContainer();
        ConstraintSet mStart = null;
        ConstraintSet mEnd = null;

        Model() {
        }

        private void computeStartEndSize(int widthMeasureSpec, int heightMeasureSpec) {
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            MotionLayout motionLayout = MotionLayout.this;
            if (motionLayout.mCurrentState == motionLayout.getStartState()) {
                MotionLayout motionLayout2 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutEnd;
                ConstraintSet constraintSet = this.mEnd;
                motionLayout2.resolveSystem(constraintWidgetContainer, optimizationLevel, (constraintSet == null || constraintSet.mRotate == 0) ? widthMeasureSpec : heightMeasureSpec, (constraintSet == null || constraintSet.mRotate == 0) ? heightMeasureSpec : widthMeasureSpec);
                ConstraintSet constraintSet2 = this.mStart;
                if (constraintSet2 != null) {
                    MotionLayout motionLayout3 = MotionLayout.this;
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    int i4 = constraintSet2.mRotate;
                    int i10 = i4 == 0 ? widthMeasureSpec : heightMeasureSpec;
                    if (i4 == 0) {
                        widthMeasureSpec = heightMeasureSpec;
                    }
                    motionLayout3.resolveSystem(constraintWidgetContainer2, optimizationLevel, i10, widthMeasureSpec);
                    return;
                }
                return;
            }
            ConstraintSet constraintSet3 = this.mStart;
            if (constraintSet3 != null) {
                MotionLayout motionLayout4 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                int i11 = constraintSet3.mRotate;
                motionLayout4.resolveSystem(constraintWidgetContainer3, optimizationLevel, i11 == 0 ? widthMeasureSpec : heightMeasureSpec, i11 == 0 ? heightMeasureSpec : widthMeasureSpec);
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            ConstraintWidgetContainer constraintWidgetContainer4 = this.mLayoutEnd;
            ConstraintSet constraintSet4 = this.mEnd;
            int i12 = (constraintSet4 == null || constraintSet4.mRotate == 0) ? widthMeasureSpec : heightMeasureSpec;
            if (constraintSet4 == null || constraintSet4.mRotate == 0) {
                widthMeasureSpec = heightMeasureSpec;
            }
            motionLayout5.resolveSystem(constraintWidgetContainer4, optimizationLevel, i12, widthMeasureSpec);
        }

        @SuppressLint({"LogConditional"})
        private void debugLayout(String title, ConstraintWidgetContainer c10) {
            String name = Debug.getName((View) c10.getCompanionWidget());
            StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(name).length());
            sb.append(title);
            sb.append(" ");
            sb.append(name);
            String sb2 = sb.toString();
            String valueOf = String.valueOf(c10);
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 12 + valueOf.length());
            sb3.append(sb2);
            sb3.append("  ========= ");
            sb3.append(valueOf);
            Log.v(MotionLayout.TAG, sb3.toString());
            int size = c10.getChildren().size();
            for (int i4 = 0; i4 < size; i4++) {
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 14);
                sb4.append(sb2);
                sb4.append("[");
                sb4.append(i4);
                sb4.append("] ");
                String sb5 = sb4.toString();
                ConstraintWidget constraintWidget = c10.getChildren().get(i4);
                String str = constraintWidget.mTop.mTarget != null ? ExifInterface.GPS_DIRECTION_TRUE : "_";
                String valueOf2 = String.valueOf(str.length() != 0 ? "".concat(str) : new String(""));
                String str2 = constraintWidget.mBottom.mTarget != null ? "B" : "_";
                String valueOf3 = String.valueOf(str2.length() != 0 ? valueOf2.concat(str2) : new String(valueOf2));
                String str3 = constraintWidget.mLeft.mTarget != null ? "L" : "_";
                String valueOf4 = String.valueOf(str3.length() != 0 ? valueOf3.concat(str3) : new String(valueOf3));
                String str4 = constraintWidget.mRight.mTarget != null ? "R" : "_";
                String concat = str4.length() != 0 ? valueOf4.concat(str4) : new String(valueOf4);
                View view = (View) constraintWidget.getCompanionWidget();
                String name2 = Debug.getName(view);
                if (view instanceof TextView) {
                    String valueOf5 = String.valueOf(name2);
                    String valueOf6 = String.valueOf(((TextView) view).getText());
                    StringBuilder sb6 = new StringBuilder(valueOf5.length() + 2 + valueOf6.length());
                    sb6.append(valueOf5);
                    sb6.append("(");
                    sb6.append(valueOf6);
                    sb6.append(")");
                    name2 = sb6.toString();
                }
                String valueOf7 = String.valueOf(constraintWidget);
                StringBuilder sb7 = new StringBuilder(String.valueOf(sb5).length() + 4 + String.valueOf(name2).length() + valueOf7.length() + String.valueOf(concat).length());
                sb7.append(sb5);
                sb7.append("  ");
                sb7.append(name2);
                sb7.append(" ");
                sb7.append(valueOf7);
                sb7.append(" ");
                sb7.append(concat);
                Log.v(MotionLayout.TAG, sb7.toString());
            }
            Log.v(MotionLayout.TAG, String.valueOf(sb2).concat(" done. "));
        }

        @SuppressLint({"LogConditional"})
        private void debugLayoutParam(String str, ConstraintLayout.LayoutParams params) {
            String str2 = params.startToStart != -1 ? "SS" : "__";
            String valueOf = String.valueOf(str2.length() != 0 ? " ".concat(str2) : new String(" "));
            String str3 = params.startToEnd != -1 ? "|SE" : "|__";
            String valueOf2 = String.valueOf(str3.length() != 0 ? valueOf.concat(str3) : new String(valueOf));
            String str4 = params.endToStart != -1 ? "|ES" : "|__";
            String valueOf3 = String.valueOf(str4.length() != 0 ? valueOf2.concat(str4) : new String(valueOf2));
            String str5 = params.endToEnd != -1 ? "|EE" : "|__";
            String valueOf4 = String.valueOf(str5.length() != 0 ? valueOf3.concat(str5) : new String(valueOf3));
            String str6 = params.leftToLeft != -1 ? "|LL" : "|__";
            String valueOf5 = String.valueOf(str6.length() != 0 ? valueOf4.concat(str6) : new String(valueOf4));
            String str7 = params.leftToRight != -1 ? "|LR" : "|__";
            String valueOf6 = String.valueOf(str7.length() != 0 ? valueOf5.concat(str7) : new String(valueOf5));
            String str8 = params.rightToLeft != -1 ? "|RL" : "|__";
            String valueOf7 = String.valueOf(str8.length() != 0 ? valueOf6.concat(str8) : new String(valueOf6));
            String str9 = params.rightToRight != -1 ? "|RR" : "|__";
            String valueOf8 = String.valueOf(str9.length() != 0 ? valueOf7.concat(str9) : new String(valueOf7));
            String str10 = params.topToTop != -1 ? "|TT" : "|__";
            String valueOf9 = String.valueOf(str10.length() != 0 ? valueOf8.concat(str10) : new String(valueOf8));
            String str11 = params.topToBottom != -1 ? "|TB" : "|__";
            String valueOf10 = String.valueOf(str11.length() != 0 ? valueOf9.concat(str11) : new String(valueOf9));
            String str12 = params.bottomToTop != -1 ? "|BT" : "|__";
            String valueOf11 = String.valueOf(str12.length() != 0 ? valueOf10.concat(str12) : new String(valueOf10));
            String str13 = params.bottomToBottom != -1 ? "|BB" : "|__";
            String concat = str13.length() != 0 ? valueOf11.concat(str13) : new String(valueOf11);
            String valueOf12 = String.valueOf(str);
            String valueOf13 = String.valueOf(concat);
            Log.v(MotionLayout.TAG, valueOf13.length() != 0 ? valueOf12.concat(valueOf13) : new String(valueOf12));
        }

        @SuppressLint({"LogConditional"})
        private void debugWidget(String str, ConstraintWidget child) {
            String str2;
            String str3;
            String str4;
            ConstraintAnchor constraintAnchor = child.mTop.mTarget;
            String str5 = ExifInterface.GPS_DIRECTION_TRUE;
            String str6 = "__";
            if (constraintAnchor != null) {
                String str7 = constraintAnchor.mType == ConstraintAnchor.Type.TOP ? ExifInterface.GPS_DIRECTION_TRUE : "B";
                str2 = str7.length() != 0 ? ExifInterface.GPS_DIRECTION_TRUE.concat(str7) : new String(ExifInterface.GPS_DIRECTION_TRUE);
            } else {
                str2 = "__";
            }
            String valueOf = String.valueOf(str2);
            String valueOf2 = String.valueOf(valueOf.length() != 0 ? " ".concat(valueOf) : new String(" "));
            ConstraintAnchor constraintAnchor2 = child.mBottom.mTarget;
            if (constraintAnchor2 != null) {
                if (constraintAnchor2.mType != ConstraintAnchor.Type.TOP) {
                    str5 = "B";
                }
                str3 = str5.length() != 0 ? "B".concat(str5) : new String("B");
            } else {
                str3 = "__";
            }
            String valueOf3 = String.valueOf(str3);
            String valueOf4 = String.valueOf(valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2));
            ConstraintAnchor constraintAnchor3 = child.mLeft.mTarget;
            if (constraintAnchor3 != null) {
                String str8 = constraintAnchor3.mType == ConstraintAnchor.Type.LEFT ? "L" : "R";
                str4 = str8.length() != 0 ? "L".concat(str8) : new String("L");
            } else {
                str4 = "__";
            }
            String valueOf5 = String.valueOf(str4);
            String valueOf6 = String.valueOf(valueOf5.length() != 0 ? valueOf4.concat(valueOf5) : new String(valueOf4));
            ConstraintAnchor constraintAnchor4 = child.mRight.mTarget;
            if (constraintAnchor4 != null) {
                String str9 = constraintAnchor4.mType != ConstraintAnchor.Type.LEFT ? "R" : "L";
                str6 = str9.length() != 0 ? "R".concat(str9) : new String("R");
            }
            String valueOf7 = String.valueOf(str6);
            String concat = valueOf7.length() != 0 ? valueOf6.concat(valueOf7) : new String(valueOf6);
            String valueOf8 = String.valueOf(child);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6 + String.valueOf(concat).length() + valueOf8.length());
            sb.append(str);
            sb.append(concat);
            sb.append(" ---  ");
            sb.append(valueOf8);
            Log.v(MotionLayout.TAG, sb.toString());
        }

        private void setupConstraintWidget(ConstraintWidgetContainer base, ConstraintSet cSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, base);
            sparseArray.put(MotionLayout.this.getId(), base);
            if (cSet != null && cSet.mRotate != 0) {
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.resolveSystem(this.mLayoutEnd, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getHeight(), 1073741824), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getWidth(), 1073741824));
            }
            Iterator<ConstraintWidget> it = base.getChildren().iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                sparseArray.put(((View) next.getCompanionWidget()).getId(), next);
            }
            Iterator<ConstraintWidget> it2 = base.getChildren().iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                View view = (View) next2.getCompanionWidget();
                cSet.applyToLayoutParams(view.getId(), layoutParams);
                next2.setWidth(cSet.getWidth(view.getId()));
                next2.setHeight(cSet.getHeight(view.getId()));
                if (view instanceof ConstraintHelper) {
                    cSet.applyToHelper((ConstraintHelper) view, next2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).validateParams();
                    }
                }
                layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, next2, layoutParams, sparseArray);
                if (cSet.getVisibilityMode(view.getId()) == 1) {
                    next2.setVisibility(view.getVisibility());
                } else {
                    next2.setVisibility(cSet.getVisibility(view.getId()));
                }
            }
            Iterator<ConstraintWidget> it3 = base.getChildren().iterator();
            while (it3.hasNext()) {
                ConstraintWidget next3 = it3.next();
                if (next3 instanceof VirtualLayout) {
                    Helper helper = (Helper) next3;
                    ((ConstraintHelper) next3.getCompanionWidget()).updatePreLayout(base, helper, sparseArray);
                    ((VirtualLayout) helper).captureWidgets();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0103  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x016f A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void build() {
            /*
                Method dump skipped, instructions count: 410
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.Model.build():void");
        }

        void copy(ConstraintWidgetContainer src, ConstraintWidgetContainer dest) {
            ConstraintWidget constraintWidget;
            ArrayList<ConstraintWidget> children = src.getChildren();
            HashMap<ConstraintWidget, ConstraintWidget> hashMap = new HashMap<>();
            hashMap.put(src, dest);
            dest.getChildren().clear();
            dest.copy(src, hashMap);
            Iterator<ConstraintWidget> it = children.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                if (next instanceof androidx.constraintlayout.core.widgets.Barrier) {
                    constraintWidget = new androidx.constraintlayout.core.widgets.Barrier();
                } else if (next instanceof Guideline) {
                    constraintWidget = new Guideline();
                } else if (next instanceof Flow) {
                    constraintWidget = new Flow();
                } else if (next instanceof Placeholder) {
                    constraintWidget = new Placeholder();
                } else if (next instanceof Helper) {
                    constraintWidget = new HelperWidget();
                } else {
                    constraintWidget = new ConstraintWidget();
                }
                dest.add(constraintWidget);
                hashMap.put(next, constraintWidget);
            }
            Iterator<ConstraintWidget> it2 = children.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                hashMap.get(next2).copy(next2, hashMap);
            }
        }

        ConstraintWidget getWidget(ConstraintWidgetContainer container, View view) {
            if (container.getCompanionWidget() == view) {
                return container;
            }
            ArrayList<ConstraintWidget> children = container.getChildren();
            int size = children.size();
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget = children.get(i4);
                if (constraintWidget.getCompanionWidget() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        void initFrom(ConstraintWidgetContainer baseLayout, ConstraintSet start, ConstraintSet end) {
            this.mStart = start;
            this.mEnd = end;
            this.mLayoutStart = new ConstraintWidgetContainer();
            this.mLayoutEnd = new ConstraintWidgetContainer();
            this.mLayoutStart.setMeasurer(((ConstraintLayout) MotionLayout.this).mLayoutWidget.getMeasurer());
            this.mLayoutEnd.setMeasurer(((ConstraintLayout) MotionLayout.this).mLayoutWidget.getMeasurer());
            this.mLayoutStart.removeAllChildren();
            this.mLayoutEnd.removeAllChildren();
            copy(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.mLayoutStart);
            copy(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.mLayoutEnd);
            if (MotionLayout.this.mTransitionLastPosition > 0.5d) {
                if (start != null) {
                    setupConstraintWidget(this.mLayoutStart, start);
                }
                setupConstraintWidget(this.mLayoutEnd, end);
            } else {
                setupConstraintWidget(this.mLayoutEnd, end);
                if (start != null) {
                    setupConstraintWidget(this.mLayoutStart, start);
                }
            }
            this.mLayoutStart.setRtl(MotionLayout.this.isRtl());
            this.mLayoutStart.updateHierarchy();
            this.mLayoutEnd.setRtl(MotionLayout.this.isRtl());
            this.mLayoutEnd.updateHierarchy();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.mLayoutEnd.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer2.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    this.mLayoutEnd.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            }
        }

        public boolean isNotConfiguredWith(int startId, int endId) {
            return (startId == this.mStartId && endId == this.mEndId) ? false : true;
        }

        public void measure(int widthMeasureSpec, int heightMeasureSpec) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.mWidthMeasureMode = mode;
            motionLayout.mHeightMeasureMode = mode2;
            motionLayout.getOptimizationLevel();
            computeStartEndSize(widthMeasureSpec, heightMeasureSpec);
            if (((MotionLayout.this.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                computeStartEndSize(widthMeasureSpec, heightMeasureSpec);
                MotionLayout.this.mStartWrapWidth = this.mLayoutStart.getWidth();
                MotionLayout.this.mStartWrapHeight = this.mLayoutStart.getHeight();
                MotionLayout.this.mEndWrapWidth = this.mLayoutEnd.getWidth();
                MotionLayout.this.mEndWrapHeight = this.mLayoutEnd.getHeight();
                MotionLayout motionLayout2 = MotionLayout.this;
                motionLayout2.mMeasureDuringTransition = (motionLayout2.mStartWrapWidth == motionLayout2.mEndWrapWidth && motionLayout2.mStartWrapHeight == motionLayout2.mEndWrapHeight) ? false : true;
            }
            MotionLayout motionLayout3 = MotionLayout.this;
            int i4 = motionLayout3.mStartWrapWidth;
            int i10 = motionLayout3.mStartWrapHeight;
            int i11 = motionLayout3.mWidthMeasureMode;
            if (i11 == Integer.MIN_VALUE || i11 == 0) {
                i4 = (int) (i4 + (motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapWidth - i4)));
            }
            int i12 = i4;
            int i13 = motionLayout3.mHeightMeasureMode;
            if (i13 == Integer.MIN_VALUE || i13 == 0) {
                i10 = (int) (i10 + (motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapHeight - i10)));
            }
            MotionLayout.this.resolveMeasuredDimension(widthMeasureSpec, heightMeasureSpec, i12, i10, this.mLayoutStart.isWidthMeasuredTooSmall() || this.mLayoutEnd.isWidthMeasuredTooSmall(), this.mLayoutStart.isHeightMeasuredTooSmall() || this.mLayoutEnd.isHeightMeasuredTooSmall());
        }

        public void reEvaluateState() {
            measure(MotionLayout.this.mLastWidthMeasureSpec, MotionLayout.this.mLastHeightMeasureSpec);
            MotionLayout.this.setupMotionViews();
        }

        public void setMeasuredId(int startId, int endId) {
            this.mStartId = startId;
            this.mEndId = endId;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface MotionTracker {
        void addMovement(MotionEvent event);

        void clear();

        void computeCurrentVelocity(int units);

        void computeCurrentVelocity(int units, float maxVelocity);

        float getXVelocity();

        float getXVelocity(int id);

        float getYVelocity();

        float getYVelocity(int id);

        void recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class StateCache {
        float mProgress = Float.NaN;
        float mVelocity = Float.NaN;
        int startState = -1;
        int endState = -1;
        final String KeyProgress = "motion.progress";
        final String KeyVelocity = "motion.velocity";
        final String KeyStartState = "motion.StartState";
        final String KeyEndState = "motion.EndState";

        StateCache() {
        }

        void apply() {
            int i4 = this.startState;
            if (i4 != -1 || this.endState != -1) {
                if (i4 == -1) {
                    MotionLayout.this.transitionToState(this.endState);
                } else {
                    int i10 = this.endState;
                    if (i10 == -1) {
                        MotionLayout.this.setState(i4, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i4, i10);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.mVelocity)) {
                if (Float.isNaN(this.mProgress)) {
                    return;
                }
                MotionLayout.this.setProgress(this.mProgress);
                return;
            }
            MotionLayout.this.setProgress(this.mProgress, this.mVelocity);
            this.mProgress = Float.NaN;
            this.mVelocity = Float.NaN;
            this.startState = -1;
            this.endState = -1;
        }

        public Bundle getTransitionState() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.mProgress);
            bundle.putFloat("motion.velocity", this.mVelocity);
            bundle.putInt("motion.StartState", this.startState);
            bundle.putInt("motion.EndState", this.endState);
            return bundle;
        }

        public void recordState() {
            this.endState = MotionLayout.this.mEndState;
            this.startState = MotionLayout.this.mBeginState;
            this.mVelocity = MotionLayout.this.getVelocity();
            this.mProgress = MotionLayout.this.getProgress();
        }

        public void setEndState(int endState) {
            this.endState = endState;
        }

        public void setProgress(float progress) {
            this.mProgress = progress;
        }

        public void setStartState(int startState) {
            this.startState = startState;
        }

        public void setTransitionState(Bundle bundle) {
            this.mProgress = bundle.getFloat("motion.progress");
            this.mVelocity = bundle.getFloat("motion.velocity");
            this.startState = bundle.getInt("motion.StartState");
            this.endState = bundle.getInt("motion.EndState");
        }

        public void setVelocity(float mVelocity) {
            this.mVelocity = mVelocity;
        }
    }

    /* loaded from: classes.dex */
    public interface TransitionListener {
        void onTransitionChange(MotionLayout motionLayout, int startId, int endId, float progress);

        void onTransitionCompleted(MotionLayout motionLayout, int currentId);

        void onTransitionStarted(MotionLayout motionLayout, int startId, int endId);

        void onTransitionTrigger(MotionLayout motionLayout, int triggerId, boolean positive, float progress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(null);
    }

    private boolean callTransformedTouchEvent(View view, MotionEvent event, float offsetX, float offsetY) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            event.offsetLocation(offsetX, offsetY);
            boolean onTouchEvent = view.onTouchEvent(event);
            event.offsetLocation(-offsetX, -offsetY);
            return onTouchEvent;
        }
        MotionEvent obtain = MotionEvent.obtain(event);
        obtain.offsetLocation(offsetX, offsetY);
        if (this.mInverseMatrix == null) {
            this.mInverseMatrix = new Matrix();
        }
        matrix.invert(this.mInverseMatrix);
        obtain.transform(this.mInverseMatrix);
        boolean onTouchEvent2 = view.onTouchEvent(obtain);
        obtain.recycle();
        return onTouchEvent2;
    }

    private void checkStructure() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int startId = motionScene.getStartId();
        MotionScene motionScene2 = this.mScene;
        checkStructure(startId, motionScene2.getConstraintSet(motionScene2.getStartId()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        Iterator<MotionScene.Transition> it = this.mScene.getDefinedTransitions().iterator();
        while (it.hasNext()) {
            MotionScene.Transition next = it.next();
            if (next == this.mScene.mCurrentTransition) {
                Log.v(TAG, "CHECK: CURRENT");
            }
            checkStructure(next);
            int startConstraintSetId = next.getStartConstraintSetId();
            int endConstraintSetId = next.getEndConstraintSetId();
            String name = Debug.getName(getContext(), startConstraintSetId);
            String name2 = Debug.getName(getContext(), endConstraintSetId);
            if (sparseIntArray.get(startConstraintSetId) == endConstraintSetId) {
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 53 + String.valueOf(name2).length());
                sb.append("CHECK: two transitions with the same start and end ");
                sb.append(name);
                sb.append("->");
                sb.append(name2);
                Log.e(TAG, sb.toString());
            }
            if (sparseIntArray2.get(endConstraintSetId) == startConstraintSetId) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 43 + String.valueOf(name2).length());
                sb2.append("CHECK: you can't have reverse transitions");
                sb2.append(name);
                sb2.append("->");
                sb2.append(name2);
                Log.e(TAG, sb2.toString());
            }
            sparseIntArray.put(startConstraintSetId, endConstraintSetId);
            sparseIntArray2.put(endConstraintSetId, startConstraintSetId);
            if (this.mScene.getConstraintSet(startConstraintSetId) == null) {
                String valueOf = String.valueOf(name);
                Log.e(TAG, valueOf.length() != 0 ? " no such constraintSetStart ".concat(valueOf) : new String(" no such constraintSetStart "));
            }
            if (this.mScene.getConstraintSet(endConstraintSetId) == null) {
                String valueOf2 = String.valueOf(name);
                Log.e(TAG, valueOf2.length() != 0 ? " no such constraintSetEnd ".concat(valueOf2) : new String(" no such constraintSetEnd "));
            }
        }
    }

    private void computeCurrentPositions() {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.setStartCurrentState(childAt);
            }
        }
    }

    @SuppressLint({"LogConditional"})
    private void debugPos() {
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            String location = Debug.getLocation();
            String name = Debug.getName(this);
            String name2 = Debug.getName(getContext(), this.mCurrentState);
            String name3 = Debug.getName(childAt);
            int left = childAt.getLeft();
            int top = childAt.getTop();
            StringBuilder sb = new StringBuilder(String.valueOf(location).length() + 27 + String.valueOf(name).length() + String.valueOf(name2).length() + String.valueOf(name3).length());
            sb.append(" ");
            sb.append(location);
            sb.append(" ");
            sb.append(name);
            sb.append(" ");
            sb.append(name2);
            sb.append(" ");
            sb.append(name3);
            sb.append(left);
            sb.append(" ");
            sb.append(top);
            Log.v(TAG, sb.toString());
        }
    }

    private void evaluateLayout() {
        boolean z9;
        float signum = Math.signum(this.mTransitionGoalPosition - this.mTransitionLastPosition);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.mInterpolator;
        float f10 = this.mTransitionLastPosition + (!(interpolator instanceof StopLogic) ? ((((float) (nanoTime - this.mTransitionLastTime)) * signum) * 1.0E-9f) / this.mTransitionDuration : 0.0f);
        if (this.mTransitionInstantly) {
            f10 = this.mTransitionGoalPosition;
        }
        int i4 = (signum > 0.0f ? 1 : (signum == 0.0f ? 0 : -1));
        if ((i4 <= 0 || f10 < this.mTransitionGoalPosition) && (signum > 0.0f || f10 > this.mTransitionGoalPosition)) {
            z9 = false;
        } else {
            f10 = this.mTransitionGoalPosition;
            z9 = true;
        }
        if (interpolator != null && !z9) {
            if (this.mTemporalInterpolator) {
                f10 = interpolator.getInterpolation(((float) (nanoTime - this.mAnimationStartTime)) * 1.0E-9f);
            } else {
                f10 = interpolator.getInterpolation(f10);
            }
        }
        if ((i4 > 0 && f10 >= this.mTransitionGoalPosition) || (signum <= 0.0f && f10 <= this.mTransitionGoalPosition)) {
            f10 = this.mTransitionGoalPosition;
        }
        this.mPostInterpolationPosition = f10;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.mProgressInterpolator;
        if (interpolator2 != null) {
            f10 = interpolator2.getInterpolation(f10);
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.interpolate(childAt, f10, nanoTime2, this.mKeyCache);
            }
        }
        if (this.mMeasureDuringTransition) {
            requestLayout();
        }
    }

    private void fireTransitionChange() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) || this.mListenerPosition == this.mTransitionPosition) {
            return;
        }
        if (this.mListenerState != -1) {
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionStarted(this, this.mBeginState, this.mEndState);
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().onTransitionStarted(this, this.mBeginState, this.mEndState);
                }
            }
            this.mIsAnimating = true;
        }
        this.mListenerState = -1;
        float f10 = this.mTransitionPosition;
        this.mListenerPosition = f10;
        TransitionListener transitionListener2 = this.mTransitionListener;
        if (transitionListener2 != null) {
            transitionListener2.onTransitionChange(this, this.mBeginState, this.mEndState, f10);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList3 = this.mTransitionListeners;
        if (copyOnWriteArrayList3 != null) {
            Iterator<TransitionListener> it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().onTransitionChange(this, this.mBeginState, this.mEndState, this.mTransitionPosition);
            }
        }
        this.mIsAnimating = true;
    }

    private void fireTransitionStarted(MotionLayout motionLayout, int mBeginState, int mEndState) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionStarted(this, mBeginState, mEndState);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionStarted(motionLayout, mBeginState, mEndState);
            }
        }
    }

    private boolean handlesTouchEvent(float x9, float y9, View view, MotionEvent event) {
        boolean z9;
        View childAt;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                if (handlesTouchEvent((childAt.getLeft() + x9) - view.getScrollX(), (childAt.getTop() + y9) - view.getScrollY(), viewGroup.getChildAt(childCount), event)) {
                    z9 = true;
                    break;
                }
            }
        }
        z9 = false;
        if (!z9) {
            this.mBoundsCheck.set(x9, y9, (view.getRight() + x9) - view.getLeft(), (view.getBottom() + y9) - view.getTop());
            if ((event.getAction() != 0 || this.mBoundsCheck.contains(event.getX(), event.getY())) && callTransformedTouchEvent(view, event, -x9, -y9)) {
                return true;
            }
        }
        return z9;
    }

    private void init(AttributeSet attrs) {
        MotionScene motionScene;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.MotionLayout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            boolean z9 = true;
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = obtainStyledAttributes.getIndex(i4);
                if (index == R.styleable.MotionLayout_layoutDescription) {
                    this.mScene = new MotionScene(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R.styleable.MotionLayout_currentState) {
                    this.mCurrentState = obtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R.styleable.MotionLayout_motionProgress) {
                    this.mTransitionGoalPosition = obtainStyledAttributes.getFloat(index, 0.0f);
                    this.mInTransition = true;
                } else if (index == R.styleable.MotionLayout_applyMotionScene) {
                    z9 = obtainStyledAttributes.getBoolean(index, z9);
                } else if (index == R.styleable.MotionLayout_showPaths) {
                    if (this.mDebugPath == 0) {
                        this.mDebugPath = obtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R.styleable.MotionLayout_motionDebug) {
                    this.mDebugPath = obtainStyledAttributes.getInt(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
            if (this.mScene == null) {
                Log.e(TAG, "WARNING NO app:layoutDescription tag");
            }
            if (!z9) {
                this.mScene = null;
            }
        }
        if (this.mDebugPath != 0) {
            checkStructure();
        }
        if (this.mCurrentState != -1 || (motionScene = this.mScene) == null) {
            return;
        }
        this.mCurrentState = motionScene.getStartId();
        this.mBeginState = this.mScene.getStartId();
        this.mEndState = this.mScene.getEndId();
    }

    private void processTransitionCompleted() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if (this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.mIsAnimating = false;
        Iterator<Integer> it = this.mTransitionCompleted.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionCompleted(this, next.intValue());
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it2 = copyOnWriteArrayList2.iterator();
                while (it2.hasNext()) {
                    it2.next().onTransitionCompleted(this, next.intValue());
                }
            }
        }
        this.mTransitionCompleted.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupMotionViews() {
        int childCount = getChildCount();
        this.mModel.build();
        boolean z9 = true;
        this.mInTransition = true;
        SparseArray sparseArray = new SparseArray();
        int i4 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int gatPathMotionArc = this.mScene.gatPathMotionArc();
        if (gatPathMotionArc != -1) {
            for (int i11 = 0; i11 < childCount; i11++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i11));
                if (motionController != null) {
                    motionController.setPathMotionArc(gatPathMotionArc);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.mFrameArrayList.size()];
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i13));
            if (motionController2.getAnimateRelativeTo() != -1) {
                sparseBooleanArray.put(motionController2.getAnimateRelativeTo(), true);
                iArr[i12] = motionController2.getAnimateRelativeTo();
                i12++;
            }
        }
        if (this.mDecoratorsHelpers != null) {
            for (int i14 = 0; i14 < i12; i14++) {
                MotionController motionController3 = this.mFrameArrayList.get(findViewById(iArr[i14]));
                if (motionController3 != null) {
                    this.mScene.getKeyFrames(motionController3);
                }
            }
            Iterator<MotionHelper> it = this.mDecoratorsHelpers.iterator();
            while (it.hasNext()) {
                it.next().onPreSetup(this, this.mFrameArrayList);
            }
            for (int i15 = 0; i15 < i12; i15++) {
                MotionController motionController4 = this.mFrameArrayList.get(findViewById(iArr[i15]));
                if (motionController4 != null) {
                    motionController4.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i16 = 0; i16 < i12; i16++) {
                MotionController motionController5 = this.mFrameArrayList.get(findViewById(iArr[i16]));
                if (motionController5 != null) {
                    this.mScene.getKeyFrames(motionController5);
                    motionController5.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt2 = getChildAt(i17);
            MotionController motionController6 = this.mFrameArrayList.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && motionController6 != null) {
                this.mScene.getKeyFrames(motionController6);
                motionController6.setup(width, height, this.mTransitionDuration, getNanoTime());
            }
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            boolean z10 = ((double) staggered) < 0.0d;
            float abs = Math.abs(staggered);
            float f10 = -3.4028235E38f;
            float f11 = Float.MAX_VALUE;
            int i18 = 0;
            float f12 = Float.MAX_VALUE;
            float f13 = -3.4028235E38f;
            while (true) {
                if (i18 >= childCount) {
                    z9 = false;
                    break;
                }
                MotionController motionController7 = this.mFrameArrayList.get(getChildAt(i18));
                if (!Float.isNaN(motionController7.mMotionStagger)) {
                    break;
                }
                float finalX = motionController7.getFinalX();
                float finalY = motionController7.getFinalY();
                float f14 = z10 ? finalY - finalX : finalY + finalX;
                f12 = Math.min(f12, f14);
                f13 = Math.max(f13, f14);
                i18++;
            }
            if (!z9) {
                while (i4 < childCount) {
                    MotionController motionController8 = this.mFrameArrayList.get(getChildAt(i4));
                    float finalX2 = motionController8.getFinalX();
                    float finalY2 = motionController8.getFinalY();
                    float f15 = z10 ? finalY2 - finalX2 : finalY2 + finalX2;
                    motionController8.mStaggerScale = 1.0f / (1.0f - abs);
                    motionController8.mStaggerOffset = abs - (((f15 - f12) * abs) / (f13 - f12));
                    i4++;
                }
                return;
            }
            for (int i19 = 0; i19 < childCount; i19++) {
                MotionController motionController9 = this.mFrameArrayList.get(getChildAt(i19));
                if (!Float.isNaN(motionController9.mMotionStagger)) {
                    f11 = Math.min(f11, motionController9.mMotionStagger);
                    f10 = Math.max(f10, motionController9.mMotionStagger);
                }
            }
            while (i4 < childCount) {
                MotionController motionController10 = this.mFrameArrayList.get(getChildAt(i4));
                if (!Float.isNaN(motionController10.mMotionStagger)) {
                    motionController10.mStaggerScale = 1.0f / (1.0f - abs);
                    if (z10) {
                        motionController10.mStaggerOffset = abs - (((f10 - motionController10.mMotionStagger) / (f10 - f11)) * abs);
                    } else {
                        motionController10.mStaggerOffset = abs - (((motionController10.mMotionStagger - f11) * abs) / (f10 - f11));
                    }
                }
                i4++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect toRect(ConstraintWidget cw) {
        this.mTempRect.top = cw.getY();
        this.mTempRect.left = cw.getX();
        Rect rect = this.mTempRect;
        int width = cw.getWidth();
        Rect rect2 = this.mTempRect;
        rect.right = width + rect2.left;
        int height = cw.getHeight();
        Rect rect3 = this.mTempRect;
        rect2.bottom = height + rect3.top;
        return rect3;
    }

    private static boolean willJump(float velocity, float position, float maxAcceleration) {
        if (velocity > 0.0f) {
            float f10 = velocity / maxAcceleration;
            return position + ((velocity * f10) - (((maxAcceleration * f10) * f10) / 2.0f)) > 1.0f;
        }
        float f11 = (-velocity) / maxAcceleration;
        return position + ((velocity * f11) + (((maxAcceleration * f11) * f11) / 2.0f)) < 0.0f;
    }

    public void addTransitionListener(TransitionListener listener) {
        if (this.mTransitionListeners == null) {
            this.mTransitionListeners = new CopyOnWriteArrayList<>();
        }
        this.mTransitionListeners.add(listener);
    }

    void animateTo(float position) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        float f10 = this.mTransitionLastPosition;
        float f11 = this.mTransitionPosition;
        if (f10 != f11 && this.mTransitionInstantly) {
            this.mTransitionLastPosition = f11;
        }
        float f12 = this.mTransitionLastPosition;
        if (f12 == position) {
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = position;
        this.mTransitionDuration = motionScene.getDuration() / 1000.0f;
        setProgress(this.mTransitionGoalPosition);
        this.mInterpolator = null;
        this.mProgressInterpolator = this.mScene.getInterpolator();
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        this.mInTransition = true;
        this.mTransitionPosition = f12;
        this.mTransitionLastPosition = f12;
        invalidate();
    }

    public boolean applyViewTransition(int viewTransitionId, MotionController motionController) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.applyViewTransition(viewTransitionId, motionController);
        }
        return false;
    }

    public ConstraintSet cloneConstraintSet(int id) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        ConstraintSet constraintSet = motionScene.getConstraintSet(id);
        ConstraintSet constraintSet2 = new ConstraintSet();
        constraintSet2.clone(constraintSet);
        return constraintSet2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void disableAutoTransition(boolean disable) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        motionScene.disableAutoTransition(disable);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        long j4;
        ViewTransitionController viewTransitionController;
        ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
        if (arrayList != null) {
            Iterator<MotionHelper> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onPreDraw(canvas);
            }
        }
        evaluate(false);
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (viewTransitionController = motionScene.mViewTransitionController) != null) {
            viewTransitionController.animate();
        }
        super.dispatchDraw(canvas);
        if (this.mScene == null) {
            return;
        }
        if ((this.mDebugPath & 1) == 1 && !isInEditMode()) {
            this.mFrames++;
            long nanoTime = getNanoTime();
            long j10 = this.mLastDrawTime;
            if (j10 != -1) {
                if (nanoTime - j10 > 200000000) {
                    this.mLastFps = ((int) ((this.mFrames / (((float) j4) * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.mFrames = 0;
                    this.mLastDrawTime = nanoTime;
                }
            } else {
                this.mLastDrawTime = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            float f10 = this.mLastFps;
            String state = Debug.getState(this, this.mBeginState);
            StringBuilder sb = new StringBuilder(String.valueOf(state).length() + 24);
            sb.append(f10);
            sb.append(" fps ");
            sb.append(state);
            sb.append(" -> ");
            String valueOf = String.valueOf(sb.toString());
            String state2 = Debug.getState(this, this.mEndState);
            int i4 = this.mCurrentState;
            String state3 = i4 == -1 ? "undefined" : Debug.getState(this, i4);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 36 + String.valueOf(state2).length() + String.valueOf(state3).length());
            sb2.append(valueOf);
            sb2.append(state2);
            sb2.append(" (progress: ");
            sb2.append(progress);
            sb2.append(" ) state=");
            sb2.append(state3);
            String sb3 = sb2.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(sb3, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(sb3, 10.0f, getHeight() - 30, paint);
        }
        if (this.mDebugPath > 1) {
            if (this.mDevModeDraw == null) {
                this.mDevModeDraw = new DevModeDraw();
            }
            this.mDevModeDraw.draw(canvas, this.mFrameArrayList, this.mScene.getDuration(), this.mDebugPath);
        }
        ArrayList<MotionHelper> arrayList2 = this.mDecoratorsHelpers;
        if (arrayList2 != null) {
            Iterator<MotionHelper> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                it2.next().onPostDraw(canvas);
            }
        }
    }

    public void enableTransition(int transitionID, boolean enable) {
        MotionScene.Transition transition = getTransition(transitionID);
        if (enable) {
            transition.setEnabled(true);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (transition == motionScene.mCurrentTransition) {
            Iterator<MotionScene.Transition> it = motionScene.getTransitionsWithState(this.mCurrentState).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                MotionScene.Transition next = it.next();
                if (next.isEnabled()) {
                    this.mScene.mCurrentTransition = next;
                    break;
                }
            }
        }
        transition.setEnabled(false);
    }

    public void enableViewTransition(int viewTransitionId, boolean enable) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.enableViewTransition(viewTransitionId, enable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void endTrigger(boolean start) {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            MotionController motionController = this.mFrameArrayList.get(getChildAt(i4));
            if (motionController != null) {
                motionController.endTrigger(start);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void evaluate(boolean r24) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.evaluate(boolean):void");
    }

    protected void fireTransitionCompleted() {
        int i4;
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener != null || ((copyOnWriteArrayList = this.mTransitionListeners) != null && !copyOnWriteArrayList.isEmpty())) && this.mListenerState == -1) {
            this.mListenerState = this.mCurrentState;
            if (this.mTransitionCompleted.isEmpty()) {
                i4 = -1;
            } else {
                ArrayList<Integer> arrayList = this.mTransitionCompleted;
                i4 = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i10 = this.mCurrentState;
            if (i4 != i10 && i10 != -1) {
                this.mTransitionCompleted.add(Integer.valueOf(i10));
            }
        }
        processTransitionCompleted();
        Runnable runnable = this.mOnComplete;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null || this.mScheduledTransitions <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.mScheduledTransitionTo;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.mScheduledTransitions--;
    }

    public void fireTrigger(int triggerId, boolean positive, float progress) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionTrigger(this, triggerId, positive, progress);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionTrigger(this, triggerId, positive, progress);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getAnchorDpDt(int mTouchAnchorId, float pos, float locationX, float locationY, float[] mAnchorDpDt) {
        String resourceName;
        HashMap<View, MotionController> hashMap = this.mFrameArrayList;
        View viewById = getViewById(mTouchAnchorId);
        MotionController motionController = hashMap.get(viewById);
        if (motionController != null) {
            motionController.getDpDt(pos, locationX, locationY, mAnchorDpDt);
            float y9 = viewById.getY();
            this.lastPos = pos;
            this.lastY = y9;
            return;
        }
        if (viewById == null) {
            StringBuilder sb = new StringBuilder(11);
            sb.append(mTouchAnchorId);
            resourceName = sb.toString();
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(mTouchAnchorId);
        }
        String valueOf = String.valueOf(resourceName);
        Log.w(TAG, valueOf.length() != 0 ? "WARNING could not find view id ".concat(valueOf) : new String("WARNING could not find view id "));
    }

    public ConstraintSet getConstraintSet(int id) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSet(id);
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSetIds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getConstraintSetNames(int id) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.lookUpConstraintName(id);
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public void getDebugMode(boolean showPaths) {
        this.mDebugPath = showPaths ? 2 : 1;
        invalidate();
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getDefinedTransitions();
    }

    public DesignTool getDesignTool() {
        if (this.mDesignTool == null) {
            this.mDesignTool = new DesignTool(this);
        }
        return this.mDesignTool;
    }

    public int getEndState() {
        return this.mEndState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionController getMotionController(int mTouchAnchorId) {
        return this.mFrameArrayList.get(findViewById(mTouchAnchorId));
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.mTransitionLastPosition;
    }

    public MotionScene getScene() {
        return this.mScene;
    }

    public int getStartState() {
        return this.mBeginState;
    }

    public float getTargetPosition() {
        return this.mTransitionGoalPosition;
    }

    public MotionScene.Transition getTransition(int id) {
        return this.mScene.getTransitionById(id);
    }

    public Bundle getTransitionState() {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.recordState();
        return this.mStateCache.getTransitionState();
    }

    public long getTransitionTimeMs() {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mTransitionDuration = motionScene.getDuration() / 1000.0f;
        }
        return this.mTransitionDuration * 1000.0f;
    }

    public float getVelocity() {
        return this.mLastVelocity;
    }

    public void getViewVelocity(View view, float posOnViewX, float posOnViewY, float[] returnVelocity, int type) {
        float f10;
        float f11 = this.mLastVelocity;
        float f12 = this.mTransitionLastPosition;
        if (this.mInterpolator != null) {
            float signum = Math.signum(this.mTransitionGoalPosition - f12);
            float interpolation = this.mInterpolator.getInterpolation(this.mTransitionLastPosition + EPSILON);
            float interpolation2 = this.mInterpolator.getInterpolation(this.mTransitionLastPosition);
            f11 = (signum * ((interpolation - interpolation2) / EPSILON)) / this.mTransitionDuration;
            f10 = interpolation2;
        } else {
            f10 = f12;
        }
        Interpolator interpolator = this.mInterpolator;
        if (interpolator instanceof MotionInterpolator) {
            f11 = ((MotionInterpolator) interpolator).getVelocity();
        }
        MotionController motionController = this.mFrameArrayList.get(view);
        if ((type & 1) == 0) {
            motionController.getPostLayoutDvDp(f10, view.getWidth(), view.getHeight(), posOnViewX, posOnViewY, returnVelocity);
        } else {
            motionController.getDpDt(f10, posOnViewX, posOnViewY, returnVelocity);
        }
        if (type < 2) {
            returnVelocity[0] = returnVelocity[0] * f11;
            returnVelocity[1] = returnVelocity[1] * f11;
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    public boolean isDelayedApplicationOfInitialState() {
        return this.mDelayedApply;
    }

    public boolean isInRotation() {
        return this.mInRotation;
    }

    public boolean isInteractionEnabled() {
        return this.mInteractionEnabled;
    }

    public boolean isViewTransitionEnabled(int viewTransitionId) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.isViewTransitionEnabled(viewTransitionId);
        }
        return false;
    }

    public void jumpToState(int id) {
        if (!isAttachedToWindow()) {
            this.mCurrentState = id;
        }
        if (this.mBeginState == id) {
            setProgress(0.0f);
        } else if (this.mEndState == id) {
            setProgress(1.0f);
        } else {
            setTransition(id, id);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int motionScene) {
        MotionScene.Transition transition;
        if (motionScene != 0) {
            try {
                MotionScene motionScene2 = new MotionScene(getContext(), this, motionScene);
                this.mScene = motionScene2;
                if (this.mCurrentState == -1) {
                    this.mCurrentState = motionScene2.getStartId();
                    this.mBeginState = this.mScene.getStartId();
                    this.mEndState = this.mScene.getEndId();
                }
                if (isAttachedToWindow()) {
                    try {
                        Display display = getDisplay();
                        this.mPreviouseRotation = display == null ? 0 : display.getRotation();
                        MotionScene motionScene3 = this.mScene;
                        if (motionScene3 != null) {
                            ConstraintSet constraintSet = motionScene3.getConstraintSet(this.mCurrentState);
                            this.mScene.readFallback(this);
                            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
                            if (arrayList != null) {
                                Iterator<MotionHelper> it = arrayList.iterator();
                                while (it.hasNext()) {
                                    it.next().onFinishedMotionScene(this);
                                }
                            }
                            if (constraintSet != null) {
                                constraintSet.applyTo(this);
                            }
                            this.mBeginState = this.mCurrentState;
                        }
                        onNewStateAttachHandlers();
                        StateCache stateCache = this.mStateCache;
                        if (stateCache != null) {
                            if (this.mDelayedApply) {
                                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        MotionLayout.this.mStateCache.apply();
                                    }
                                });
                                return;
                            } else {
                                stateCache.apply();
                                return;
                            }
                        }
                        MotionScene motionScene4 = this.mScene;
                        if (motionScene4 == null || (transition = motionScene4.mCurrentTransition) == null || transition.getAutoTransition() != 4) {
                            return;
                        }
                        transitionToEnd();
                        setState(TransitionState.SETUP);
                        setState(TransitionState.MOVING);
                        return;
                    } catch (Exception e4) {
                        throw new IllegalArgumentException("unable to parse MotionScene file", e4);
                    }
                }
                this.mScene = null;
                return;
            } catch (Exception e10) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e10);
            }
        }
        this.mScene = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int lookUpConstraintId(String id) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return 0;
        }
        return motionScene.lookUpConstraintId(id);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MotionTracker obtainVelocityTracker() {
        return MyTracker.obtain();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        MotionScene.Transition transition;
        int i4;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            this.mPreviouseRotation = display.getRotation();
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (i4 = this.mCurrentState) != -1) {
            ConstraintSet constraintSet = motionScene.getConstraintSet(i4);
            this.mScene.readFallback(this);
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            if (arrayList != null) {
                Iterator<MotionHelper> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().onFinishedMotionScene(this);
                }
            }
            if (constraintSet != null) {
                constraintSet.applyTo(this);
            }
            this.mBeginState = this.mCurrentState;
        }
        onNewStateAttachHandlers();
        StateCache stateCache = this.mStateCache;
        if (stateCache != null) {
            if (this.mDelayedApply) {
                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MotionLayout.this.mStateCache.apply();
                    }
                });
                return;
            } else {
                stateCache.apply();
                return;
            }
        }
        MotionScene motionScene2 = this.mScene;
        if (motionScene2 == null || (transition = motionScene2.mCurrentTransition) == null || transition.getAutoTransition() != 4) {
            return;
        }
        transitionToEnd();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        TouchResponse touchResponse;
        int touchRegionId;
        RectF touchRegion;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && this.mInteractionEnabled) {
            ViewTransitionController viewTransitionController = motionScene.mViewTransitionController;
            if (viewTransitionController != null) {
                viewTransitionController.touchEvent(event);
            }
            MotionScene.Transition transition = this.mScene.mCurrentTransition;
            if (transition != null && transition.isEnabled() && (touchResponse = transition.getTouchResponse()) != null && ((event.getAction() != 0 || (touchRegion = touchResponse.getTouchRegion(this, new RectF())) == null || touchRegion.contains(event.getX(), event.getY())) && (touchRegionId = touchResponse.getTouchRegionId()) != -1)) {
                View view = this.mRegionView;
                if (view == null || view.getId() != touchRegionId) {
                    this.mRegionView = findViewById(touchRegionId);
                }
                View view2 = this.mRegionView;
                if (view2 != null) {
                    this.mBoundsCheck.set(view2.getLeft(), this.mRegionView.getTop(), this.mRegionView.getRight(), this.mRegionView.getBottom());
                    if (this.mBoundsCheck.contains(event.getX(), event.getY()) && !handlesTouchEvent(this.mRegionView.getLeft(), this.mRegionView.getTop(), this.mRegionView, event)) {
                        return onTouchEvent(event);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        this.mInLayout = true;
        try {
            if (this.mScene == null) {
                super.onLayout(changed, left, top, right, bottom);
                return;
            }
            int i4 = right - left;
            int i10 = bottom - top;
            if (this.mLastLayoutWidth != i4 || this.mLastLayoutHeight != i10) {
                rebuildScene();
                evaluate(true);
            }
            this.mLastLayoutWidth = i4;
            this.mLastLayoutHeight = i10;
            this.mOldWidth = i4;
            this.mOldHeight = i10;
        } finally {
            this.mInLayout = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mScene == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        boolean z9 = false;
        boolean z10 = (this.mLastWidthMeasureSpec == widthMeasureSpec && this.mLastHeightMeasureSpec == heightMeasureSpec) ? false : true;
        if (this.mNeedsFireTransitionCompleted) {
            this.mNeedsFireTransitionCompleted = false;
            onNewStateAttachHandlers();
            processTransitionCompleted();
            z10 = true;
        }
        if (this.mDirtyHierarchy) {
            z10 = true;
        }
        this.mLastWidthMeasureSpec = widthMeasureSpec;
        this.mLastHeightMeasureSpec = heightMeasureSpec;
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if ((z10 || this.mModel.isNotConfiguredWith(startId, endId)) && this.mBeginState != -1) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(startId), this.mScene.getConstraintSet(endId));
            this.mModel.reEvaluateState();
            this.mModel.setMeasuredId(startId, endId);
        } else {
            if (z10) {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            }
            z9 = true;
        }
        if (this.mMeasureDuringTransition || z9) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int width = this.mLayoutWidget.getWidth() + getPaddingLeft() + getPaddingRight();
            int height = this.mLayoutWidget.getHeight() + paddingTop;
            int i4 = this.mWidthMeasureMode;
            if (i4 == Integer.MIN_VALUE || i4 == 0) {
                int i10 = this.mStartWrapWidth;
                width = (int) (i10 + (this.mPostInterpolationPosition * (this.mEndWrapWidth - i10)));
                requestLayout();
            }
            int i11 = this.mHeightMeasureMode;
            if (i11 == Integer.MIN_VALUE || i11 == 0) {
                int i12 = this.mStartWrapHeight;
                height = (int) (i12 + (this.mPostInterpolationPosition * (this.mEndWrapHeight - i12)));
                requestLayout();
            }
            setMeasuredDimension(width, height);
        }
        evaluateLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View target, float velocityX, float velocityY, boolean consumed) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View target, float velocityX, float velocityY) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull final View target, int dx, int dy, @NonNull int[] consumed, int type) {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        int touchRegionId;
        MotionScene motionScene = this.mScene;
        if (motionScene == null || (transition = motionScene.mCurrentTransition) == null || !transition.isEnabled()) {
            return;
        }
        int i4 = -1;
        if (!transition.isEnabled() || (touchResponse = transition.getTouchResponse()) == null || (touchRegionId = touchResponse.getTouchRegionId()) == -1 || target.getId() == touchRegionId) {
            if (motionScene.getMoveWhenScrollAtTop()) {
                TouchResponse touchResponse2 = transition.getTouchResponse();
                if (touchResponse2 != null && (touchResponse2.getFlags() & 4) != 0) {
                    i4 = dy;
                }
                float f10 = this.mTransitionPosition;
                if ((f10 == 1.0f || f10 == 0.0f) && target.canScrollVertically(i4)) {
                    return;
                }
            }
            if (transition.getTouchResponse() != null && (transition.getTouchResponse().getFlags() & 1) != 0) {
                float progressDirection = motionScene.getProgressDirection(dx, dy);
                float f11 = this.mTransitionLastPosition;
                if ((f11 <= 0.0f && progressDirection < 0.0f) || (f11 >= 1.0f && progressDirection > 0.0f)) {
                    target.setNestedScrollingEnabled(false);
                    target.post(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.3
                        @Override // java.lang.Runnable
                        public void run() {
                            target.setNestedScrollingEnabled(true);
                        }
                    });
                    return;
                }
            }
            float f12 = this.mTransitionPosition;
            long nanoTime = getNanoTime();
            float f13 = dx;
            this.mScrollTargetDX = f13;
            float f14 = dy;
            this.mScrollTargetDY = f14;
            this.mScrollTargetDT = (float) ((nanoTime - this.mScrollTargetTime) * 1.0E-9d);
            this.mScrollTargetTime = nanoTime;
            motionScene.processScrollMove(f13, f14);
            if (f12 != this.mTransitionPosition) {
                consumed[0] = dx;
                consumed[1] = dy;
            }
            evaluate(false);
            if (consumed[0] == 0 && consumed[1] == 0) {
                return;
            }
            this.mUndergoingMotion = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type, int[] consumed) {
        if (this.mUndergoingMotion || dxConsumed != 0 || dyConsumed != 0) {
            consumed[0] = consumed[0] + dxUnconsumed;
            consumed[1] = consumed[1] + dyUnconsumed;
        }
        this.mUndergoingMotion = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View child, @NonNull View target, int axes, int type) {
        this.mScrollTargetTime = getNanoTime();
        this.mScrollTargetDT = 0.0f;
        this.mScrollTargetDX = 0.0f;
        this.mScrollTargetDY = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onNewStateAttachHandlers() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        if (motionScene.autoTransition(this, this.mCurrentState)) {
            requestLayout();
            return;
        }
        int i4 = this.mCurrentState;
        if (i4 != -1) {
            this.mScene.addOnClickListeners(this, i4);
        }
        if (this.mScene.supportTouch()) {
            this.mScene.setupTouch();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int layoutDirection) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setRtl(isRtl());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View child, @NonNull View target, int axes, int type) {
        MotionScene.Transition transition;
        MotionScene motionScene = this.mScene;
        return (motionScene == null || (transition = motionScene.mCurrentTransition) == null || transition.getTouchResponse() == null || (this.mScene.mCurrentTransition.getTouchResponse().getFlags() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View target, int type) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            float f10 = this.mScrollTargetDT;
            if (f10 == 0.0f) {
                return;
            }
            motionScene.processScrollUp(this.mScrollTargetDX / f10, this.mScrollTargetDY / f10);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null && this.mInteractionEnabled && motionScene.supportTouch()) {
            MotionScene.Transition transition = this.mScene.mCurrentTransition;
            if (transition != null && !transition.isEnabled()) {
                return super.onTouchEvent(event);
            }
            this.mScene.processTouchEvent(event, getCurrentState(), this);
            if (this.mScene.mCurrentTransition.isTransitionFlag(4)) {
                return this.mScene.mCurrentTransition.getTouchResponse().isDragStarted();
            }
            return true;
        }
        return super.onTouchEvent(event);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.mTransitionListeners == null) {
                this.mTransitionListeners = new CopyOnWriteArrayList<>();
            }
            this.mTransitionListeners.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.mOnShowHelpers == null) {
                    this.mOnShowHelpers = new ArrayList<>();
                }
                this.mOnShowHelpers.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.mOnHideHelpers == null) {
                    this.mOnHideHelpers = new ArrayList<>();
                }
                this.mOnHideHelpers.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.mDecoratorsHelpers == null) {
                    this.mDecoratorsHelpers = new ArrayList<>();
                }
                this.mDecoratorsHelpers.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.mOnHideHelpers;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void parseLayoutDescription(int id) {
        this.mConstraintLayoutSpec = null;
    }

    @Deprecated
    public void rebuildMotion() {
        Log.e(TAG, "This method is deprecated. Please call rebuildScene() instead.");
        rebuildScene();
    }

    public void rebuildScene() {
        this.mModel.reEvaluateState();
        invalidate();
    }

    public boolean removeTransitionListener(TransitionListener listener) {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList == null) {
            return false;
        }
        return copyOnWriteArrayList.remove(listener);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (!this.mMeasureDuringTransition && this.mCurrentState == -1 && (motionScene = this.mScene) != null && (transition = motionScene.mCurrentTransition) != null) {
            int layoutDuringTransition = transition.getLayoutDuringTransition();
            if (layoutDuringTransition == 0) {
                return;
            }
            if (layoutDuringTransition == 2) {
                int childCount = getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    this.mFrameArrayList.get(getChildAt(i4)).remeasure();
                }
                return;
            }
        }
        super.requestLayout();
    }

    @RequiresApi(api = 17)
    public void rotateTo(int id, int duration) {
        this.mInRotation = true;
        this.mPreRotateWidth = getWidth();
        this.mPreRotateHeight = getHeight();
        int rotation = getDisplay().getRotation();
        this.mRotatMode = (rotation + 1) % 4 <= (this.mPreviouseRotation + 1) % 4 ? 2 : 1;
        this.mPreviouseRotation = rotation;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            ViewState viewState = this.mPreRotate.get(childAt);
            if (viewState == null) {
                viewState = new ViewState();
                this.mPreRotate.put(childAt, viewState);
            }
            viewState.getState(childAt);
        }
        this.mBeginState = -1;
        this.mEndState = id;
        this.mScene.setTransition(-1, id);
        this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(this.mEndState));
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        invalidate();
        transitionToEnd(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.2
            @Override // java.lang.Runnable
            public void run() {
                MotionLayout.this.mInRotation = false;
            }
        });
        if (duration > 0) {
            this.mTransitionDuration = duration / 1000.0f;
        }
    }

    public void scheduleTransitionTo(int id) {
        if (getCurrentState() == -1) {
            transitionToState(id);
            return;
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null) {
            this.mScheduledTransitionTo = new int[4];
        } else if (iArr.length <= this.mScheduledTransitions) {
            this.mScheduledTransitionTo = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.mScheduledTransitionTo;
        int i4 = this.mScheduledTransitions;
        this.mScheduledTransitions = i4 + 1;
        iArr2[i4] = id;
    }

    public void setDebugMode(int debugMode) {
        this.mDebugPath = debugMode;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean delayedApply) {
        this.mDelayedApply = delayedApply;
    }

    public void setInteractionEnabled(boolean enabled) {
        this.mInteractionEnabled = enabled;
    }

    public void setInterpolatedProgress(float pos) {
        if (this.mScene != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolator = this.mScene.getInterpolator();
            if (interpolator != null) {
                setProgress(interpolator.getInterpolation(pos));
                return;
            }
        }
        setProgress(pos);
    }

    public void setOnHide(float progress) {
        ArrayList<MotionHelper> arrayList = this.mOnHideHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.mOnHideHelpers.get(i4).setProgress(progress);
            }
        }
    }

    public void setOnShow(float progress) {
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.mOnShowHelpers.get(i4).setProgress(progress);
            }
        }
    }

    public void setProgress(float pos, float velocity) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setProgress(pos);
            this.mStateCache.setVelocity(velocity);
            return;
        }
        setProgress(pos);
        setState(TransitionState.MOVING);
        this.mLastVelocity = velocity;
        int i4 = (velocity > 0.0f ? 1 : (velocity == 0.0f ? 0 : -1));
        if (i4 != 0) {
            animateTo(i4 <= 0 ? 0.0f : 1.0f);
        } else if (pos == 0.0f || pos == 1.0f) {
        } else {
            animateTo(pos <= 0.5f ? 0.0f : 1.0f);
        }
    }

    public void setScene(MotionScene scene) {
        this.mScene = scene;
        scene.setRtl(isRtl());
        rebuildScene();
    }

    void setStartState(int beginId) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setStartState(beginId);
            this.mStateCache.setEndState(beginId);
            return;
        }
        this.mCurrentState = beginId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setState(TransitionState newState) {
        TransitionState transitionState = TransitionState.FINISHED;
        if (newState == transitionState && this.mCurrentState == -1) {
            return;
        }
        TransitionState transitionState2 = this.mTransitionState;
        this.mTransitionState = newState;
        TransitionState transitionState3 = TransitionState.MOVING;
        if (transitionState2 == transitionState3 && newState == transitionState3) {
            fireTransitionChange();
        }
        int i4 = AnonymousClass5.$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[transitionState2.ordinal()];
        if (i4 != 1 && i4 != 2) {
            if (i4 == 3 && newState == transitionState) {
                fireTransitionCompleted();
                return;
            }
            return;
        }
        if (newState == transitionState3) {
            fireTransitionChange();
        }
        if (newState == transitionState) {
            fireTransitionCompleted();
        }
    }

    public void setTransition(int beginId, int endId) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setStartState(beginId);
            this.mStateCache.setEndState(endId);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mBeginState = beginId;
            this.mEndState = endId;
            motionScene.setTransition(beginId, endId);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(beginId), this.mScene.getConstraintSet(endId));
            rebuildScene();
            this.mTransitionLastPosition = 0.0f;
            transitionToStart();
        }
    }

    public void setTransitionDuration(int milliseconds) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "MotionScene not defined");
        } else {
            motionScene.setDuration(milliseconds);
        }
    }

    public void setTransitionListener(TransitionListener listener) {
        this.mTransitionListener = listener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.setTransitionState(bundle);
        if (isAttachedToWindow()) {
            this.mStateCache.apply();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        String name = Debug.getName(context, this.mBeginState);
        String name2 = Debug.getName(context, this.mEndState);
        float f10 = this.mTransitionLastPosition;
        float f11 = this.mLastVelocity;
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 47 + String.valueOf(name2).length());
        sb.append(name);
        sb.append("->");
        sb.append(name2);
        sb.append(" (pos:");
        sb.append(f10);
        sb.append(" Dpos/Dt:");
        sb.append(f11);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
        if (r10 != 7) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void touchAnimateTo(int r10, float r11, float r12) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.touchAnimateTo(int, float, float):void");
    }

    public void touchSpringTo(float position, float currentVelocity) {
        if (this.mScene == null || this.mTransitionLastPosition == position) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        this.mTransitionGoalPosition = position;
        this.mInTransition = true;
        this.mStopLogic.springConfig(this.mTransitionLastPosition, position, currentVelocity, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
        int i4 = this.mCurrentState;
        this.mTransitionGoalPosition = position;
        this.mCurrentState = i4;
        this.mInterpolator = this.mStopLogic;
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    public void transitionToEnd() {
        animateTo(1.0f);
        this.mOnComplete = null;
    }

    public void transitionToStart() {
        animateTo(0.0f);
    }

    public void transitionToState(int id) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setEndState(id);
            return;
        }
        transitionToState(id, -1, -1);
    }

    public void updateState(int stateId, ConstraintSet set) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setConstraintSet(stateId, set);
        }
        updateState();
        if (this.mCurrentState == stateId) {
            set.applyTo(this);
        }
    }

    public void updateStateAnimate(int stateId, ConstraintSet set, int duration) {
        if (this.mScene != null && this.mCurrentState == stateId) {
            int i4 = R.id.view_transition;
            updateState(i4, getConstraintSet(stateId));
            setState(i4, -1, -1);
            updateState(stateId, set);
            MotionScene.Transition transition = new MotionScene.Transition(-1, this.mScene, i4, stateId);
            transition.setDuration(duration);
            setTransition(transition);
            transitionToEnd();
        }
    }

    public void viewTransition(int viewTransitionId, View... view) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.viewTransition(viewTransitionId, view);
        } else {
            Log.e(TAG, " no motionScene");
        }
    }

    /* loaded from: classes.dex */
    private static class MyTracker implements MotionTracker {

        /* renamed from: me  reason: collision with root package name */
        private static MyTracker f436me = new MyTracker();
        VelocityTracker tracker;

        private MyTracker() {
        }

        public static MyTracker obtain() {
            f436me.tracker = VelocityTracker.obtain();
            return f436me;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void addMovement(MotionEvent event) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(event);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void clear() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int units) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(units);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void recycle() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.tracker = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int units, float maxVelocity) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(units, maxVelocity);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity(int id) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity(id);
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity(int id) {
            if (this.tracker != null) {
                return getYVelocity(id);
            }
            return 0.0f;
        }
    }

    public void transitionToEnd(Runnable onComplete) {
        animateTo(1.0f);
        this.mOnComplete = onComplete;
    }

    public void transitionToState(int id, int duration) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setEndState(id);
            return;
        }
        transitionToState(id, -1, -1, duration);
    }

    public void updateState() {
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        rebuildScene();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int id, int screenWidth, int screenHeight) {
        setState(TransitionState.SETUP);
        this.mCurrentState = id;
        this.mBeginState = -1;
        this.mEndState = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(id, screenWidth, screenHeight);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.getConstraintSet(id).applyTo(this);
        }
    }

    public void setProgress(float pos) {
        int i4 = (pos > 0.0f ? 1 : (pos == 0.0f ? 0 : -1));
        if (i4 < 0 || pos > 1.0f) {
            Log.w(TAG, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setProgress(pos);
            return;
        }
        if (i4 <= 0) {
            if (this.mTransitionLastPosition == 1.0f && this.mCurrentState == this.mEndState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mBeginState;
            if (this.mTransitionLastPosition == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (pos >= 1.0f) {
            if (this.mTransitionLastPosition == 0.0f && this.mCurrentState == this.mBeginState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mEndState;
            if (this.mTransitionLastPosition == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.mCurrentState = -1;
            setState(TransitionState.MOVING);
        }
        if (this.mScene == null) {
            return;
        }
        this.mTransitionInstantly = true;
        this.mTransitionGoalPosition = pos;
        this.mTransitionPosition = pos;
        this.mTransitionLastTime = -1L;
        this.mAnimationStartTime = -1L;
        this.mInterpolator = null;
        this.mInTransition = true;
        invalidate();
    }

    public void transitionToState(int id, int screenWidth, int screenHeight) {
        transitionToState(id, screenWidth, screenHeight, -1);
    }

    public void transitionToState(int id, int screenWidth, int screenHeight, int duration) {
        StateSet stateSet;
        int convertToConstraintSet;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (stateSet = motionScene.mStateSet) != null && (convertToConstraintSet = stateSet.convertToConstraintSet(this.mCurrentState, id, screenWidth, screenHeight)) != -1) {
            id = convertToConstraintSet;
        }
        int i4 = this.mCurrentState;
        if (i4 == id) {
            return;
        }
        if (this.mBeginState == id) {
            animateTo(0.0f);
            if (duration > 0) {
                this.mTransitionDuration = duration / 1000.0f;
            }
        } else if (this.mEndState == id) {
            animateTo(1.0f);
            if (duration > 0) {
                this.mTransitionDuration = duration / 1000.0f;
            }
        } else {
            this.mEndState = id;
            if (i4 != -1) {
                setTransition(i4, id);
                animateTo(1.0f);
                this.mTransitionLastPosition = 0.0f;
                transitionToEnd();
                if (duration > 0) {
                    this.mTransitionDuration = duration / 1000.0f;
                    return;
                }
                return;
            }
            this.mTemporalInterpolator = false;
            this.mTransitionGoalPosition = 1.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionLastTime = getNanoTime();
            this.mAnimationStartTime = getNanoTime();
            this.mTransitionInstantly = false;
            this.mInterpolator = null;
            if (duration == -1) {
                this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
            }
            this.mBeginState = -1;
            this.mScene.setTransition(-1, this.mEndState);
            SparseArray sparseArray = new SparseArray();
            if (duration == 0) {
                this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
            } else if (duration > 0) {
                this.mTransitionDuration = duration / 1000.0f;
            }
            int childCount = getChildCount();
            this.mFrameArrayList.clear();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                this.mFrameArrayList.put(childAt, new MotionController(childAt));
                sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
            }
            this.mInTransition = true;
            this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(id));
            rebuildScene();
            this.mModel.build();
            computeCurrentPositions();
            int width = getWidth();
            int height = getHeight();
            if (this.mDecoratorsHelpers != null) {
                for (int i11 = 0; i11 < childCount; i11++) {
                    MotionController motionController = this.mFrameArrayList.get(getChildAt(i11));
                    if (motionController != null) {
                        this.mScene.getKeyFrames(motionController);
                    }
                }
                Iterator<MotionHelper> it = this.mDecoratorsHelpers.iterator();
                while (it.hasNext()) {
                    it.next().onPreSetup(this, this.mFrameArrayList);
                }
                for (int i12 = 0; i12 < childCount; i12++) {
                    MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i12));
                    if (motionController2 != null) {
                        motionController2.setup(width, height, this.mTransitionDuration, getNanoTime());
                    }
                }
            } else {
                for (int i13 = 0; i13 < childCount; i13++) {
                    MotionController motionController3 = this.mFrameArrayList.get(getChildAt(i13));
                    if (motionController3 != null) {
                        this.mScene.getKeyFrames(motionController3);
                        motionController3.setup(width, height, this.mTransitionDuration, getNanoTime());
                    }
                }
            }
            float staggered = this.mScene.getStaggered();
            if (staggered != 0.0f) {
                float f10 = Float.MAX_VALUE;
                float f11 = -3.4028235E38f;
                for (int i14 = 0; i14 < childCount; i14++) {
                    MotionController motionController4 = this.mFrameArrayList.get(getChildAt(i14));
                    float finalY = motionController4.getFinalY() + motionController4.getFinalX();
                    f10 = Math.min(f10, finalY);
                    f11 = Math.max(f11, finalY);
                }
                for (int i15 = 0; i15 < childCount; i15++) {
                    MotionController motionController5 = this.mFrameArrayList.get(getChildAt(i15));
                    float finalX = motionController5.getFinalX();
                    float finalY2 = motionController5.getFinalY();
                    motionController5.mStaggerScale = 1.0f / (1.0f - staggered);
                    motionController5.mStaggerOffset = staggered - ((((finalX + finalY2) - f10) * staggered) / (f11 - f10));
                }
            }
            this.mTransitionPosition = 0.0f;
            this.mTransitionLastPosition = 0.0f;
            this.mInTransition = true;
            invalidate();
        }
    }

    public void setTransition(int transitionId) {
        if (this.mScene != null) {
            MotionScene.Transition transition = getTransition(transitionId);
            this.mBeginState = transition.getStartConstraintSetId();
            this.mEndState = transition.getEndConstraintSetId();
            if (!isAttachedToWindow()) {
                if (this.mStateCache == null) {
                    this.mStateCache = new StateCache();
                }
                this.mStateCache.setStartState(this.mBeginState);
                this.mStateCache.setEndState(this.mEndState);
                return;
            }
            float f10 = Float.NaN;
            int i4 = this.mCurrentState;
            if (i4 == this.mBeginState) {
                f10 = 0.0f;
            } else if (i4 == this.mEndState) {
                f10 = 1.0f;
            }
            this.mScene.setTransition(transition);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
            rebuildScene();
            if (this.mTransitionLastPosition != f10) {
                if (f10 == 0.0f) {
                    endTrigger(true);
                    this.mScene.getConstraintSet(this.mBeginState).applyTo(this);
                } else if (f10 == 1.0f) {
                    endTrigger(false);
                    this.mScene.getConstraintSet(this.mEndState).applyTo(this);
                }
            }
            this.mTransitionLastPosition = Float.isNaN(f10) ? 0.0f : f10;
            if (Float.isNaN(f10)) {
                Log.v(TAG, String.valueOf(Debug.getLocation()).concat(" transitionToStart "));
                transitionToStart();
                return;
            }
            setProgress(f10);
        }
    }

    private void checkStructure(int csetId, ConstraintSet set) {
        String name = Debug.getName(getContext(), csetId);
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            int id = childAt.getId();
            if (id == -1) {
                String name2 = childAt.getClass().getName();
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 45 + name2.length());
                sb.append("CHECK: ");
                sb.append(name);
                sb.append(" ALL VIEWS SHOULD HAVE ID's ");
                sb.append(name2);
                sb.append(" does not!");
                Log.w(TAG, sb.toString());
            }
            if (set.getConstraint(id) == null) {
                String name3 = Debug.getName(childAt);
                StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 27 + String.valueOf(name3).length());
                sb2.append("CHECK: ");
                sb2.append(name);
                sb2.append(" NO CONSTRAINTS for ");
                sb2.append(name3);
                Log.w(TAG, sb2.toString());
            }
        }
        int[] knownIds = set.getKnownIds();
        for (int i10 = 0; i10 < knownIds.length; i10++) {
            int i11 = knownIds[i10];
            String name4 = Debug.getName(getContext(), i11);
            if (findViewById(knownIds[i10]) == null) {
                StringBuilder sb3 = new StringBuilder(String.valueOf(name).length() + 27 + String.valueOf(name4).length());
                sb3.append("CHECK: ");
                sb3.append(name);
                sb3.append(" NO View matches id ");
                sb3.append(name4);
                Log.w(TAG, sb3.toString());
            }
            if (set.getHeight(i11) == -1) {
                StringBuilder sb4 = new StringBuilder(String.valueOf(name).length() + 26 + String.valueOf(name4).length());
                sb4.append("CHECK: ");
                sb4.append(name);
                sb4.append("(");
                sb4.append(name4);
                sb4.append(") no LAYOUT_HEIGHT");
                Log.w(TAG, sb4.toString());
            }
            if (set.getWidth(i11) == -1) {
                StringBuilder sb5 = new StringBuilder(String.valueOf(name).length() + 26 + String.valueOf(name4).length());
                sb5.append("CHECK: ");
                sb5.append(name);
                sb5.append("(");
                sb5.append(name4);
                sb5.append(") no LAYOUT_HEIGHT");
                Log.w(TAG, sb5.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTransition(MotionScene.Transition transition) {
        this.mScene.setTransition(transition);
        setState(TransitionState.SETUP);
        if (this.mCurrentState == this.mScene.getEndId()) {
            this.mTransitionLastPosition = 1.0f;
            this.mTransitionPosition = 1.0f;
            this.mTransitionGoalPosition = 1.0f;
        } else {
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionGoalPosition = 0.0f;
        }
        this.mTransitionLastTime = transition.isTransitionFlag(1) ? -1L : getNanoTime();
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if (startId == this.mBeginState && endId == this.mEndState) {
            return;
        }
        this.mBeginState = startId;
        this.mEndState = endId;
        this.mScene.setTransition(startId, endId);
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        this.mModel.setMeasuredId(this.mBeginState, this.mEndState);
        this.mModel.reEvaluateState();
        rebuildScene();
    }

    private void checkStructure(MotionScene.Transition transition) {
        if (transition.getStartConstraintSetId() == transition.getEndConstraintSetId()) {
            Log.e(TAG, "CHECK: start and end constraint set should not be the same!");
        }
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attrs);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attrs);
    }
}
