package androidx.core.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class GestureDetectorCompat {
    private final GestureDetectorCompatImpl mImpl;

    /* loaded from: classes.dex */
    interface GestureDetectorCompatImpl {
        boolean isLongpressEnabled();

        boolean onTouchEvent(MotionEvent motionEvent);

        void setIsLongpressEnabled(boolean z9);

        void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener);
    }

    /* loaded from: classes.dex */
    static class GestureDetectorCompatImplBase implements GestureDetectorCompatImpl {
        private static final int LONG_PRESS = 2;
        private static final int SHOW_PRESS = 1;
        private static final int TAP = 3;
        private boolean mAlwaysInBiggerTapRegion;
        private boolean mAlwaysInTapRegion;
        MotionEvent mCurrentDownEvent;
        boolean mDeferConfirmSingleTap;
        GestureDetector.OnDoubleTapListener mDoubleTapListener;
        private int mDoubleTapSlopSquare;
        private float mDownFocusX;
        private float mDownFocusY;
        private final Handler mHandler;
        private boolean mInLongPress;
        private boolean mIsDoubleTapping;
        private boolean mIsLongpressEnabled;
        private float mLastFocusX;
        private float mLastFocusY;
        final GestureDetector.OnGestureListener mListener;
        private int mMaximumFlingVelocity;
        private int mMinimumFlingVelocity;
        private MotionEvent mPreviousUpEvent;
        boolean mStillDown;
        private int mTouchSlopSquare;
        private VelocityTracker mVelocityTracker;
        private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
        private static final int DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();

        GestureDetectorCompatImplBase(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.mHandler = new GestureHandler(handler);
            } else {
                this.mHandler = new GestureHandler();
            }
            this.mListener = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                setOnDoubleTapListener((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            init(context);
        }

        private void cancel() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            this.mIsDoubleTapping = false;
            this.mStillDown = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void cancelTaps() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mIsDoubleTapping = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void init(Context context) {
            if (context != null) {
                if (this.mListener != null) {
                    this.mIsLongpressEnabled = true;
                    ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                    int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                    int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
                    this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                    this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
                    this.mTouchSlopSquare = scaledTouchSlop * scaledTouchSlop;
                    this.mDoubleTapSlopSquare = scaledDoubleTapSlop * scaledDoubleTapSlop;
                    return;
                }
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
            throw new IllegalArgumentException("Context must not be null");
        }

        private boolean isConsideredDoubleTap(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (this.mAlwaysInBiggerTapRegion && motionEvent3.getEventTime() - motionEvent2.getEventTime() <= DOUBLE_TAP_TIMEOUT) {
                int x9 = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
                int y9 = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
                return (x9 * x9) + (y9 * y9) < this.mDoubleTapSlopSquare;
            }
            return false;
        }

        void dispatchLongPress() {
            this.mHandler.removeMessages(3);
            this.mDeferConfirmSingleTap = false;
            this.mInLongPress = true;
            this.mListener.onLongPress(this.mCurrentDownEvent);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean isLongpressEnabled() {
            return this.mIsLongpressEnabled;
        }

        /* JADX WARN: Removed duplicated region for block: B:107:0x0208  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x021f  */
        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean onTouchEvent(android.view.MotionEvent r13) {
            /*
                Method dump skipped, instructions count: 593
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImplBase.onTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setIsLongpressEnabled(boolean z9) {
            this.mIsLongpressEnabled = z9;
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.mDoubleTapListener = onDoubleTapListener;
        }

        /* loaded from: classes.dex */
        private class GestureHandler extends Handler {
            GestureHandler() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i4 = message.what;
                if (i4 == 1) {
                    GestureDetectorCompatImplBase gestureDetectorCompatImplBase = GestureDetectorCompatImplBase.this;
                    gestureDetectorCompatImplBase.mListener.onShowPress(gestureDetectorCompatImplBase.mCurrentDownEvent);
                } else if (i4 == 2) {
                    GestureDetectorCompatImplBase.this.dispatchLongPress();
                } else if (i4 == 3) {
                    GestureDetectorCompatImplBase gestureDetectorCompatImplBase2 = GestureDetectorCompatImplBase.this;
                    GestureDetector.OnDoubleTapListener onDoubleTapListener = gestureDetectorCompatImplBase2.mDoubleTapListener;
                    if (onDoubleTapListener != null) {
                        if (!gestureDetectorCompatImplBase2.mStillDown) {
                            onDoubleTapListener.onSingleTapConfirmed(gestureDetectorCompatImplBase2.mCurrentDownEvent);
                        } else {
                            gestureDetectorCompatImplBase2.mDeferConfirmSingleTap = true;
                        }
                    }
                } else {
                    throw new RuntimeException("Unknown message " + message);
                }
            }

            GestureHandler(Handler handler) {
                super(handler.getLooper());
            }
        }
    }

    /* loaded from: classes.dex */
    static class GestureDetectorCompatImplJellybeanMr2 implements GestureDetectorCompatImpl {
        private final GestureDetector mDetector;

        GestureDetectorCompatImplJellybeanMr2(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.mDetector = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean isLongpressEnabled() {
            return this.mDetector.isLongpressEnabled();
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.mDetector.onTouchEvent(motionEvent);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setIsLongpressEnabled(boolean z9) {
            this.mDetector.setIsLongpressEnabled(z9);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.mDetector.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public GestureDetectorCompat(@NonNull Context context, @NonNull GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public boolean isLongpressEnabled() {
        return this.mImpl.isLongpressEnabled();
    }

    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return this.mImpl.onTouchEvent(motionEvent);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setIsLongpressEnabled(boolean z9) {
        this.mImpl.setIsLongpressEnabled(z9);
    }

    public void setOnDoubleTapListener(@Nullable GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.mImpl.setOnDoubleTapListener(onDoubleTapListener);
    }

    public GestureDetectorCompat(@NonNull Context context, @NonNull GestureDetector.OnGestureListener onGestureListener, @Nullable Handler handler) {
        this.mImpl = new GestureDetectorCompatImplJellybeanMr2(context, onGestureListener, handler);
    }
}
