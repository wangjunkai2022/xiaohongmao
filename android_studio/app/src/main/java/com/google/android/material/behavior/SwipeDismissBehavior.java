package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;

/* loaded from: classes2.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5f;
    private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0f;
    private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5f;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;
    private boolean interceptingEvents;
    OnDismissListener listener;
    private boolean sensitivitySet;
    ViewDragHelper viewDragHelper;
    private float sensitivity = 0.0f;
    int swipeDirection = 2;
    float dragDismissThreshold = 0.5f;
    float alphaStartSwipeDistance = 0.0f;
    float alphaEndSwipeDistance = 0.5f;
    private final ViewDragHelper.Callback dragCallback = new ViewDragHelper.Callback() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1
        private static final int INVALID_POINTER_ID = -1;
        private int activePointerId = -1;
        private int originalCapturedViewLeft;

        private boolean shouldDismiss(@NonNull View view, float f10) {
            int i4 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
            if (i4 == 0) {
                return Math.abs(view.getLeft() - this.originalCapturedViewLeft) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.dragDismissThreshold);
            }
            boolean z9 = ViewCompat.getLayoutDirection(view) == 1;
            int i10 = SwipeDismissBehavior.this.swipeDirection;
            if (i10 == 2) {
                return true;
            }
            if (i10 == 0) {
                if (z9) {
                    if (f10 >= 0.0f) {
                        return false;
                    }
                } else if (i4 <= 0) {
                    return false;
                }
                return true;
            } else if (i10 == 1) {
                if (z9) {
                    if (i4 <= 0) {
                        return false;
                    }
                } else if (f10 >= 0.0f) {
                    return false;
                }
                return true;
            } else {
                return false;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i4, int i10) {
            int width;
            int width2;
            int width3;
            boolean z9 = ViewCompat.getLayoutDirection(view) == 1;
            int i11 = SwipeDismissBehavior.this.swipeDirection;
            if (i11 == 0) {
                if (z9) {
                    width = this.originalCapturedViewLeft - view.getWidth();
                    width2 = this.originalCapturedViewLeft;
                } else {
                    width = this.originalCapturedViewLeft;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i11 != 1) {
                width = this.originalCapturedViewLeft - view.getWidth();
                width2 = view.getWidth() + this.originalCapturedViewLeft;
            } else if (z9) {
                width = this.originalCapturedViewLeft;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.originalCapturedViewLeft - view.getWidth();
                width2 = this.originalCapturedViewLeft;
            }
            return SwipeDismissBehavior.clamp(width, i4, width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i4, int i10) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(@NonNull View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(@NonNull View view, int i4) {
            this.activePointerId = i4;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i4) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.listener;
            if (onDismissListener != null) {
                onDismissListener.onDragStateChanged(i4);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i4, int i10, int i11, int i12) {
            float width = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaStartSwipeDistance);
            float width2 = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaEndSwipeDistance);
            float f10 = i4;
            if (f10 <= width) {
                view.setAlpha(1.0f);
            } else if (f10 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.clamp(0.0f, 1.0f - SwipeDismissBehavior.fraction(width, width2, f10), 1.0f));
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f10, float f11) {
            int i4;
            boolean z9;
            OnDismissListener onDismissListener;
            this.activePointerId = -1;
            int width = view.getWidth();
            if (shouldDismiss(view, f10)) {
                int left = view.getLeft();
                int i10 = this.originalCapturedViewLeft;
                i4 = left < i10 ? i10 - width : i10 + width;
                z9 = true;
            } else {
                i4 = this.originalCapturedViewLeft;
                z9 = false;
            }
            if (SwipeDismissBehavior.this.viewDragHelper.settleCapturedViewAt(i4, view.getTop())) {
                ViewCompat.postOnAnimation(view, new SettleRunnable(view, z9));
            } else if (!z9 || (onDismissListener = SwipeDismissBehavior.this.listener) == null) {
            } else {
                onDismissListener.onDismiss(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i4) {
            int i10 = this.activePointerId;
            return (i10 == -1 || i10 == i4) && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    };

    /* loaded from: classes2.dex */
    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i4);
    }

    /* loaded from: classes2.dex */
    private class SettleRunnable implements Runnable {
        private final boolean dismiss;
        private final View view;

        SettleRunnable(View view, boolean z9) {
            this.view = view;
            this.dismiss = z9;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.viewDragHelper;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.view, this);
            } else if (!this.dismiss || (onDismissListener = SwipeDismissBehavior.this.listener) == null) {
            } else {
                onDismissListener.onDismiss(this.view);
            }
        }
    }

    static float clamp(float f10, float f11, float f12) {
        return Math.min(Math.max(f10, f11), f12);
    }

    private void ensureViewDragHelper(ViewGroup viewGroup) {
        ViewDragHelper create;
        if (this.viewDragHelper == null) {
            if (this.sensitivitySet) {
                create = ViewDragHelper.create(viewGroup, this.sensitivity, this.dragCallback);
            } else {
                create = ViewDragHelper.create(viewGroup, this.dragCallback);
            }
            this.viewDragHelper = create;
        }
    }

    static float fraction(float f10, float f11, float f12) {
        return (f12 - f10) / (f11 - f10);
    }

    private void updateAccessibilityActions(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (canSwipeDismissView(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new AccessibilityViewCommand() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public boolean perform(@NonNull View view2, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                    boolean z9 = false;
                    if (SwipeDismissBehavior.this.canSwipeDismissView(view2)) {
                        boolean z10 = ViewCompat.getLayoutDirection(view2) == 1;
                        int i4 = SwipeDismissBehavior.this.swipeDirection;
                        if ((i4 == 0 && z10) || (i4 == 1 && !z10)) {
                            z9 = true;
                        }
                        int width = view2.getWidth();
                        if (z9) {
                            width = -width;
                        }
                        ViewCompat.offsetLeftAndRight(view2, width);
                        view2.setAlpha(0.0f);
                        OnDismissListener onDismissListener = SwipeDismissBehavior.this.listener;
                        if (onDismissListener != null) {
                            onDismissListener.onDismiss(view2);
                        }
                        return true;
                    }
                    return false;
                }
            });
        }
    }

    public boolean canSwipeDismissView(@NonNull View view) {
        return true;
    }

    public int getDragState() {
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }

    @Nullable
    @VisibleForTesting
    public OnDismissListener getListener() {
        return this.listener;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v9, @NonNull MotionEvent motionEvent) {
        boolean z9 = this.interceptingEvents;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z9 = coordinatorLayout.isPointInChildBounds(v9, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.interceptingEvents = z9;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.interceptingEvents = false;
        }
        if (z9) {
            ensureViewDragHelper(coordinatorLayout);
            return this.viewDragHelper.shouldInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v9, int i4) {
        boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, v9, i4);
        if (ViewCompat.getImportantForAccessibility(v9) == 0) {
            ViewCompat.setImportantForAccessibility(v9, 1);
            updateAccessibilityActions(v9);
        }
        return onLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v9, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null) {
            viewDragHelper.processTouchEvent(motionEvent);
            return true;
        }
        return false;
    }

    public void setDragDismissDistance(float f10) {
        this.dragDismissThreshold = clamp(0.0f, f10, 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f10) {
        this.alphaEndSwipeDistance = clamp(0.0f, f10, 1.0f);
    }

    public void setListener(@Nullable OnDismissListener onDismissListener) {
        this.listener = onDismissListener;
    }

    public void setSensitivity(float f10) {
        this.sensitivity = f10;
        this.sensitivitySet = true;
    }

    public void setStartAlphaSwipeDistance(float f10) {
        this.alphaStartSwipeDistance = clamp(0.0f, f10, 1.0f);
    }

    public void setSwipeDirection(int i4) {
        this.swipeDirection = i4;
    }

    static int clamp(int i4, int i10, int i11) {
        return Math.min(Math.max(i4, i10), i11);
    }
}
