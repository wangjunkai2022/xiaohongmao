package androidx.core.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.collection.SimpleArrayMap;
import androidx.core.R;
import androidx.core.util.Preconditions;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    @Deprecated
    public static final int LAYER_TYPE_HARDWARE = 2;
    @Deprecated
    public static final int LAYER_TYPE_NONE = 0;
    @Deprecated
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    @Deprecated
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
    @Deprecated
    public static final int MEASURED_SIZE_MASK = 16777215;
    @Deprecated
    public static final int MEASURED_STATE_MASK = -16777216;
    @Deprecated
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;
    @Deprecated
    public static final int OVER_SCROLL_ALWAYS = 0;
    @Deprecated
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    @Deprecated
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    private static final String TAG = "ViewCompat";
    public static final int TYPE_NON_TOUCH = 1;
    public static final int TYPE_TOUCH = 0;
    private static Field sAccessibilityDelegateField;
    private static Method sChildrenDrawingOrderMethod;
    private static Method sDispatchFinishTemporaryDetach;
    private static Method sDispatchStartTemporaryDetach;
    private static Field sMinHeightField;
    private static boolean sMinHeightFieldFetched;
    private static Field sMinWidthField;
    private static boolean sMinWidthFieldFetched;
    private static boolean sTempDetachBound;
    private static ThreadLocal<Rect> sThreadLocalRect;
    private static WeakHashMap<View, String> sTransitionNameMap;
    private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);
    private static WeakHashMap<View, ViewPropertyAnimatorCompat> sViewPropertyAnimatorMap = null;
    private static boolean sAccessibilityDelegateCheckFailed = false;
    private static final int[] ACCESSIBILITY_ACTIONS_RESOURCE_IDS = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
    private static final OnReceiveContentViewBehavior NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR = g.f507a;
    private static final AccessibilityPaneVisibilityManager sAccessibilityPaneVisibilityManager = new AccessibilityPaneVisibilityManager();

    /* loaded from: classes.dex */
    static class AccessibilityPaneVisibilityManager implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {
        private final WeakHashMap<View, Boolean> mPanesToVisible = new WeakHashMap<>();

        AccessibilityPaneVisibilityManager() {
        }

        @RequiresApi(19)
        private void checkPaneVisibility(View view, boolean z9) {
            boolean z10 = view.isShown() && view.getWindowVisibility() == 0;
            if (z9 != z10) {
                ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, z10 ? 16 : 32);
                this.mPanesToVisible.put(view, Boolean.valueOf(z10));
            }
        }

        @RequiresApi(19)
        private void registerForLayoutCallback(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @RequiresApi(19)
        private void unregisterForLayoutCallback(View view) {
            Api16Impl.removeOnGlobalLayoutListener(view.getViewTreeObserver(), this);
        }

        @RequiresApi(19)
        void addAccessibilityPane(View view) {
            this.mPanesToVisible.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(this);
            if (Api19Impl.isAttachedToWindow(view)) {
                registerForLayoutCallback(view);
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @RequiresApi(19)
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.mPanesToVisible.entrySet()) {
                    checkPaneVisibility(entry.getKey(), entry.getValue().booleanValue());
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @RequiresApi(19)
        public void onViewAttachedToWindow(View view) {
            registerForLayoutCallback(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        @RequiresApi(19)
        void removeAccessibilityPane(View view) {
            this.mPanesToVisible.remove(view);
            view.removeOnAttachStateChangeListener(this);
            unregisterForLayoutCallback(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class AccessibilityViewProperty<T> {
        private final int mContentChangeType;
        private final int mFrameworkMinimumSdk;
        private final int mTagKey;
        private final Class<T> mType;

        AccessibilityViewProperty(int i4, Class<T> cls, int i10) {
            this(i4, cls, 0, i10);
        }

        private boolean extrasAvailable() {
            return true;
        }

        private boolean frameworkAvailable() {
            return Build.VERSION.SDK_INT >= this.mFrameworkMinimumSdk;
        }

        boolean booleanNullToFalseEquals(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        abstract T frameworkGet(View view);

        abstract void frameworkSet(View view, T t9);

        T get(View view) {
            if (frameworkAvailable()) {
                return frameworkGet(view);
            }
            if (extrasAvailable()) {
                T t9 = (T) view.getTag(this.mTagKey);
                if (this.mType.isInstance(t9)) {
                    return t9;
                }
                return null;
            }
            return null;
        }

        void set(View view, T t9) {
            if (frameworkAvailable()) {
                frameworkSet(view, t9);
            } else if (extrasAvailable() && shouldUpdate(get(view), t9)) {
                ViewCompat.ensureAccessibilityDelegateCompat(view);
                view.setTag(this.mTagKey, t9);
                ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, this.mContentChangeType);
            }
        }

        boolean shouldUpdate(T t9, T t10) {
            return !t10.equals(t9);
        }

        AccessibilityViewProperty(int i4, Class<T> cls, int i10, int i11) {
            this.mTagKey = i4;
            this.mType = cls;
            this.mContentChangeType = i10;
            this.mFrameworkMinimumSdk = i11;
        }
    }

    @RequiresApi(15)
    /* loaded from: classes.dex */
    static class Api15Impl {
        private Api15Impl() {
        }

        @DoNotInline
        static boolean hasOnClickListeners(@NonNull View view) {
            return view.hasOnClickListeners();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(16)
    /* loaded from: classes.dex */
    public static class Api16Impl {
        private Api16Impl() {
        }

        @DoNotInline
        static AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            return view.getAccessibilityNodeProvider();
        }

        @DoNotInline
        static boolean getFitsSystemWindows(View view) {
            return view.getFitsSystemWindows();
        }

        @DoNotInline
        static int getImportantForAccessibility(View view) {
            return view.getImportantForAccessibility();
        }

        @DoNotInline
        static int getMinimumHeight(View view) {
            return view.getMinimumHeight();
        }

        @DoNotInline
        static int getMinimumWidth(View view) {
            return view.getMinimumWidth();
        }

        @DoNotInline
        static ViewParent getParentForAccessibility(View view) {
            return view.getParentForAccessibility();
        }

        @DoNotInline
        static int getWindowSystemUiVisibility(View view) {
            return view.getWindowSystemUiVisibility();
        }

        @DoNotInline
        static boolean hasOverlappingRendering(View view) {
            return view.hasOverlappingRendering();
        }

        @DoNotInline
        static boolean hasTransientState(View view) {
            return view.hasTransientState();
        }

        @DoNotInline
        static boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
            return view.performAccessibilityAction(i4, bundle);
        }

        @DoNotInline
        static void postInvalidateOnAnimation(View view) {
            view.postInvalidateOnAnimation();
        }

        @DoNotInline
        static void postOnAnimation(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        @DoNotInline
        static void postOnAnimationDelayed(View view, Runnable runnable, long j4) {
            view.postOnAnimationDelayed(runnable, j4);
        }

        @DoNotInline
        static void removeOnGlobalLayoutListener(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        @DoNotInline
        static void requestFitSystemWindows(View view) {
            view.requestFitSystemWindows();
        }

        @DoNotInline
        static void setBackground(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        @DoNotInline
        static void setHasTransientState(View view, boolean z9) {
            view.setHasTransientState(z9);
        }

        @DoNotInline
        static void setImportantForAccessibility(View view, int i4) {
            view.setImportantForAccessibility(i4);
        }

        @DoNotInline
        static void postInvalidateOnAnimation(View view, int i4, int i10, int i11, int i12) {
            view.postInvalidateOnAnimation(i4, i10, i11, i12);
        }
    }

    @RequiresApi(17)
    /* loaded from: classes.dex */
    static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        static int generateViewId() {
            return View.generateViewId();
        }

        @DoNotInline
        static Display getDisplay(@NonNull View view) {
            return view.getDisplay();
        }

        @DoNotInline
        static int getLabelFor(View view) {
            return view.getLabelFor();
        }

        @DoNotInline
        static int getLayoutDirection(View view) {
            return view.getLayoutDirection();
        }

        @DoNotInline
        static int getPaddingEnd(View view) {
            return view.getPaddingEnd();
        }

        @DoNotInline
        static int getPaddingStart(View view) {
            return view.getPaddingStart();
        }

        @DoNotInline
        static boolean isPaddingRelative(View view) {
            return view.isPaddingRelative();
        }

        @DoNotInline
        static void setLabelFor(View view, int i4) {
            view.setLabelFor(i4);
        }

        @DoNotInline
        static void setLayerPaint(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        @DoNotInline
        static void setLayoutDirection(View view, int i4) {
            view.setLayoutDirection(i4);
        }

        @DoNotInline
        static void setPaddingRelative(View view, int i4, int i10, int i11, int i12) {
            view.setPaddingRelative(i4, i10, i11, i12);
        }
    }

    @RequiresApi(18)
    /* loaded from: classes.dex */
    static class Api18Impl {
        private Api18Impl() {
        }

        @DoNotInline
        static Rect getClipBounds(@NonNull View view) {
            return view.getClipBounds();
        }

        @DoNotInline
        static boolean isInLayout(@NonNull View view) {
            return view.isInLayout();
        }

        @DoNotInline
        static void setClipBounds(@NonNull View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static int getAccessibilityLiveRegion(View view) {
            return view.getAccessibilityLiveRegion();
        }

        @DoNotInline
        static boolean isAttachedToWindow(@NonNull View view) {
            return view.isAttachedToWindow();
        }

        @DoNotInline
        static boolean isLaidOut(@NonNull View view) {
            return view.isLaidOut();
        }

        @DoNotInline
        static boolean isLayoutDirectionResolved(@NonNull View view) {
            return view.isLayoutDirectionResolved();
        }

        @DoNotInline
        static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i4) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i4);
        }

        @DoNotInline
        static void setAccessibilityLiveRegion(View view, int i4) {
            view.setAccessibilityLiveRegion(i4);
        }

        @DoNotInline
        static void setContentChangeTypes(AccessibilityEvent accessibilityEvent, int i4) {
            accessibilityEvent.setContentChangeTypes(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(20)
    /* loaded from: classes.dex */
    public static class Api20Impl {
        private Api20Impl() {
        }

        @DoNotInline
        static WindowInsets dispatchApplyWindowInsets(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        @DoNotInline
        static WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        @DoNotInline
        static void requestApplyInsets(View view) {
            view.requestApplyInsets();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void callCompatInsetAnimationCallback(@NonNull WindowInsets windowInsets, @NonNull View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        @DoNotInline
        static WindowInsetsCompat computeSystemWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                return WindowInsetsCompat.toWindowInsetsCompat(view.computeSystemWindowInsets(windowInsets, rect), view);
            }
            rect.setEmpty();
            return windowInsetsCompat;
        }

        @DoNotInline
        static boolean dispatchNestedFling(@NonNull View view, float f10, float f11, boolean z9) {
            return view.dispatchNestedFling(f10, f11, z9);
        }

        @DoNotInline
        static boolean dispatchNestedPreFling(@NonNull View view, float f10, float f11) {
            return view.dispatchNestedPreFling(f10, f11);
        }

        @DoNotInline
        static boolean dispatchNestedPreScroll(View view, int i4, int i10, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i4, i10, iArr, iArr2);
        }

        @DoNotInline
        static boolean dispatchNestedScroll(View view, int i4, int i10, int i11, int i12, int[] iArr) {
            return view.dispatchNestedScroll(i4, i10, i11, i12, iArr);
        }

        @DoNotInline
        static ColorStateList getBackgroundTintList(View view) {
            return view.getBackgroundTintList();
        }

        @DoNotInline
        static PorterDuff.Mode getBackgroundTintMode(View view) {
            return view.getBackgroundTintMode();
        }

        @DoNotInline
        static float getElevation(View view) {
            return view.getElevation();
        }

        @Nullable
        @DoNotInline
        public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
            return WindowInsetsCompat.Api21ReflectionHolder.getRootWindowInsets(view);
        }

        @DoNotInline
        static String getTransitionName(View view) {
            return view.getTransitionName();
        }

        @DoNotInline
        static float getTranslationZ(View view) {
            return view.getTranslationZ();
        }

        @DoNotInline
        static float getZ(@NonNull View view) {
            return view.getZ();
        }

        @DoNotInline
        static boolean hasNestedScrollingParent(View view) {
            return view.hasNestedScrollingParent();
        }

        @DoNotInline
        static boolean isImportantForAccessibility(View view) {
            return view.isImportantForAccessibility();
        }

        @DoNotInline
        static boolean isNestedScrollingEnabled(View view) {
            return view.isNestedScrollingEnabled();
        }

        @DoNotInline
        static void setBackgroundTintList(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        @DoNotInline
        static void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        @DoNotInline
        static void setElevation(View view, float f10) {
            view.setElevation(f10);
        }

        @DoNotInline
        static void setNestedScrollingEnabled(View view, boolean z9) {
            view.setNestedScrollingEnabled(z9);
        }

        @DoNotInline
        static void setOnApplyWindowInsetsListener(@NonNull final View view, @Nullable final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(R.id.tag_on_apply_window_listener, onApplyWindowInsetsListener);
            }
            if (onApplyWindowInsetsListener == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.ViewCompat.Api21Impl.1
                    WindowInsetsCompat mLastInsets = null;

                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view2);
                        int i4 = Build.VERSION.SDK_INT;
                        if (i4 < 30) {
                            Api21Impl.callCompatInsetAnimationCallback(windowInsets, view);
                            if (windowInsetsCompat.equals(this.mLastInsets)) {
                                return onApplyWindowInsetsListener.onApplyWindowInsets(view2, windowInsetsCompat).toWindowInsets();
                            }
                        }
                        this.mLastInsets = windowInsetsCompat;
                        WindowInsetsCompat onApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(view2, windowInsetsCompat);
                        if (i4 >= 30) {
                            return onApplyWindowInsets.toWindowInsets();
                        }
                        ViewCompat.requestApplyInsets(view2);
                        return onApplyWindowInsets.toWindowInsets();
                    }
                });
            }
        }

        @DoNotInline
        static void setTransitionName(View view, String str) {
            view.setTransitionName(str);
        }

        @DoNotInline
        static void setTranslationZ(View view, float f10) {
            view.setTranslationZ(f10);
        }

        @DoNotInline
        static void setZ(@NonNull View view, float f10) {
            view.setZ(f10);
        }

        @DoNotInline
        static boolean startNestedScroll(View view, int i4) {
            return view.startNestedScroll(i4);
        }

        @DoNotInline
        static void stopNestedScroll(View view) {
            view.stopNestedScroll();
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    private static class Api23Impl {
        private Api23Impl() {
        }

        @Nullable
        public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets);
            windowInsetsCompat.setRootWindowInsets(windowInsetsCompat);
            windowInsetsCompat.copyRootViewBounds(view.getRootView());
            return windowInsetsCompat;
        }

        @DoNotInline
        static int getScrollIndicators(@NonNull View view) {
            return view.getScrollIndicators();
        }

        @DoNotInline
        static void setScrollIndicators(@NonNull View view, int i4) {
            view.setScrollIndicators(i4);
        }

        @DoNotInline
        static void setScrollIndicators(@NonNull View view, int i4, int i10) {
            view.setScrollIndicators(i4, i10);
        }
    }

    @RequiresApi(24)
    /* loaded from: classes.dex */
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static void cancelDragAndDrop(@NonNull View view) {
            view.cancelDragAndDrop();
        }

        @DoNotInline
        static void dispatchFinishTemporaryDetach(View view) {
            view.dispatchFinishTemporaryDetach();
        }

        @DoNotInline
        static void dispatchStartTemporaryDetach(View view) {
            view.dispatchStartTemporaryDetach();
        }

        @DoNotInline
        static void setPointerIcon(@NonNull View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }

        @DoNotInline
        static boolean startDragAndDrop(@NonNull View view, @Nullable ClipData clipData, @NonNull View.DragShadowBuilder dragShadowBuilder, @Nullable Object obj, int i4) {
            return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i4);
        }

        @DoNotInline
        static void updateDragShadow(@NonNull View view, @NonNull View.DragShadowBuilder dragShadowBuilder) {
            view.updateDragShadow(dragShadowBuilder);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static void addKeyboardNavigationClusters(@NonNull View view, Collection<View> collection, int i4) {
            view.addKeyboardNavigationClusters(collection, i4);
        }

        @DoNotInline
        static int getImportantForAutofill(View view) {
            return view.getImportantForAutofill();
        }

        @DoNotInline
        static int getNextClusterForwardId(@NonNull View view) {
            return view.getNextClusterForwardId();
        }

        @DoNotInline
        static boolean hasExplicitFocusable(@NonNull View view) {
            return view.hasExplicitFocusable();
        }

        @DoNotInline
        static boolean isFocusedByDefault(@NonNull View view) {
            return view.isFocusedByDefault();
        }

        @DoNotInline
        static boolean isImportantForAutofill(View view) {
            return view.isImportantForAutofill();
        }

        @DoNotInline
        static boolean isKeyboardNavigationCluster(@NonNull View view) {
            return view.isKeyboardNavigationCluster();
        }

        @DoNotInline
        static View keyboardNavigationClusterSearch(@NonNull View view, View view2, int i4) {
            return view.keyboardNavigationClusterSearch(view2, i4);
        }

        @DoNotInline
        static boolean restoreDefaultFocus(@NonNull View view) {
            return view.restoreDefaultFocus();
        }

        @DoNotInline
        static void setAutofillHints(@NonNull View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        @DoNotInline
        static void setFocusedByDefault(@NonNull View view, boolean z9) {
            view.setFocusedByDefault(z9);
        }

        @DoNotInline
        static void setImportantForAutofill(View view, int i4) {
            view.setImportantForAutofill(i4);
        }

        @DoNotInline
        static void setKeyboardNavigationCluster(@NonNull View view, boolean z9) {
            view.setKeyboardNavigationCluster(z9);
        }

        @DoNotInline
        static void setNextClusterForwardId(View view, int i4) {
            view.setNextClusterForwardId(i4);
        }

        @DoNotInline
        static void setTooltipText(@NonNull View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static void addOnUnhandledKeyEventListener(@NonNull View view, @NonNull final OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            int i4 = R.id.tag_unhandled_key_listeners;
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(i4);
            if (simpleArrayMap == null) {
                simpleArrayMap = new SimpleArrayMap();
                view.setTag(i4, simpleArrayMap);
            }
            Objects.requireNonNull(onUnhandledKeyEventListenerCompat);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: androidx.core.view.h
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return ViewCompat.OnUnhandledKeyEventListenerCompat.this.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            simpleArrayMap.put(onUnhandledKeyEventListenerCompat, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        @DoNotInline
        static CharSequence getAccessibilityPaneTitle(View view) {
            return view.getAccessibilityPaneTitle();
        }

        @DoNotInline
        static boolean isAccessibilityHeading(View view) {
            return view.isAccessibilityHeading();
        }

        @DoNotInline
        static boolean isScreenReaderFocusable(View view) {
            return view.isScreenReaderFocusable();
        }

        @DoNotInline
        static void removeOnUnhandledKeyEventListener(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(R.id.tag_unhandled_key_listeners);
            if (simpleArrayMap == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) simpleArrayMap.get(onUnhandledKeyEventListenerCompat)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        @DoNotInline
        static <T> T requireViewById(View view, int i4) {
            return (T) view.requireViewById(i4);
        }

        @DoNotInline
        static void setAccessibilityHeading(View view, boolean z9) {
            view.setAccessibilityHeading(z9);
        }

        @DoNotInline
        static void setAccessibilityPaneTitle(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        @DoNotInline
        static void setScreenReaderFocusable(View view, boolean z9) {
            view.setScreenReaderFocusable(z9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static View.AccessibilityDelegate getAccessibilityDelegate(View view) {
            return view.getAccessibilityDelegate();
        }

        @DoNotInline
        static List<Rect> getSystemGestureExclusionRects(View view) {
            return view.getSystemGestureExclusionRects();
        }

        @DoNotInline
        static void saveAttributeDataForStyleable(@NonNull View view, @NonNull Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i4, int i10) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i4, i10);
        }

        @DoNotInline
        static void setSystemGestureExclusionRects(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        static CharSequence getStateDescription(View view) {
            return view.getStateDescription();
        }

        @Nullable
        public static WindowInsetsControllerCompat getWindowInsetsController(@NonNull View view) {
            WindowInsetsController windowInsetsController = view.getWindowInsetsController();
            if (windowInsetsController != null) {
                return WindowInsetsControllerCompat.toWindowInsetsControllerCompat(windowInsetsController);
            }
            return null;
        }

        @DoNotInline
        static void setStateDescription(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    @RequiresApi(31)
    /* loaded from: classes.dex */
    private static final class Api31Impl {
        private Api31Impl() {
        }

        @Nullable
        @DoNotInline
        public static String[] getReceiveContentMimeTypes(@NonNull View view) {
            return view.getReceiveContentMimeTypes();
        }

        @Nullable
        @DoNotInline
        public static ContentInfoCompat performReceiveContent(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
            ContentInfo contentInfo = contentInfoCompat.toContentInfo();
            ContentInfo performReceiveContent = view.performReceiveContent(contentInfo);
            if (performReceiveContent == null) {
                return null;
            }
            return performReceiveContent == contentInfo ? contentInfoCompat : ContentInfoCompat.toContentInfoCompat(performReceiveContent);
        }

        @DoNotInline
        public static void setOnReceiveContentListener(@NonNull View view, @Nullable String[] strArr, @Nullable OnReceiveContentListener onReceiveContentListener) {
            if (onReceiveContentListener == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new OnReceiveContentListenerAdapter(onReceiveContentListener));
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface NestedScrollType {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(31)
    /* loaded from: classes.dex */
    public static final class OnReceiveContentListenerAdapter implements android.view.OnReceiveContentListener {
        @NonNull
        private final OnReceiveContentListener mJetpackListener;

        OnReceiveContentListenerAdapter(@NonNull OnReceiveContentListener onReceiveContentListener) {
            this.mJetpackListener = onReceiveContentListener;
        }

        @Override // android.view.OnReceiveContentListener
        @Nullable
        public ContentInfo onReceiveContent(@NonNull View view, @NonNull ContentInfo contentInfo) {
            ContentInfoCompat contentInfoCompat = ContentInfoCompat.toContentInfoCompat(contentInfo);
            ContentInfoCompat onReceiveContent = this.mJetpackListener.onReceiveContent(view, contentInfoCompat);
            if (onReceiveContent == null) {
                return null;
            }
            return onReceiveContent == contentInfoCompat ? contentInfo : onReceiveContent.toContentInfo();
        }
    }

    /* loaded from: classes.dex */
    public interface OnUnhandledKeyEventListenerCompat {
        boolean onUnhandledKeyEvent(@NonNull View view, @NonNull KeyEvent keyEvent);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ScrollAxis {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ScrollIndicators {
    }

    /* loaded from: classes.dex */
    static class UnhandledKeyEventManager {
        private static final ArrayList<WeakReference<View>> sViewsWithListeners = new ArrayList<>();
        @Nullable
        private WeakHashMap<View, Boolean> mViewsContainingListeners = null;
        private SparseArray<WeakReference<View>> mCapturedKeys = null;
        private WeakReference<KeyEvent> mLastDispatchedPreViewKeyEvent = null;

        UnhandledKeyEventManager() {
        }

        static UnhandledKeyEventManager at(View view) {
            int i4 = R.id.tag_unhandled_key_event_manager;
            UnhandledKeyEventManager unhandledKeyEventManager = (UnhandledKeyEventManager) view.getTag(i4);
            if (unhandledKeyEventManager == null) {
                UnhandledKeyEventManager unhandledKeyEventManager2 = new UnhandledKeyEventManager();
                view.setTag(i4, unhandledKeyEventManager2);
                return unhandledKeyEventManager2;
            }
            return unhandledKeyEventManager;
        }

        @Nullable
        private View dispatchInOrder(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.mViewsContainingListeners;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View dispatchInOrder = dispatchInOrder(viewGroup.getChildAt(childCount), keyEvent);
                        if (dispatchInOrder != null) {
                            return dispatchInOrder;
                        }
                    }
                }
                if (onUnhandledKeyEvent(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private SparseArray<WeakReference<View>> getCapturedKeys() {
            if (this.mCapturedKeys == null) {
                this.mCapturedKeys = new SparseArray<>();
            }
            return this.mCapturedKeys;
        }

        private boolean onUnhandledKeyEvent(@NonNull View view, @NonNull KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((OnUnhandledKeyEventListenerCompat) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        private void recalcViewsWithUnhandled() {
            WeakHashMap<View, Boolean> weakHashMap = this.mViewsContainingListeners;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList = sViewsWithListeners;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                if (this.mViewsContainingListeners == null) {
                    this.mViewsContainingListeners = new WeakHashMap<>();
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ArrayList<WeakReference<View>> arrayList2 = sViewsWithListeners;
                    View view = arrayList2.get(size).get();
                    if (view == null) {
                        arrayList2.remove(size);
                    } else {
                        this.mViewsContainingListeners.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.mViewsContainingListeners.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        static void registerListeningView(View view) {
            ArrayList<WeakReference<View>> arrayList = sViewsWithListeners;
            synchronized (arrayList) {
                Iterator<WeakReference<View>> it = arrayList.iterator();
                while (it.hasNext()) {
                    if (it.next().get() == view) {
                        return;
                    }
                }
                sViewsWithListeners.add(new WeakReference<>(view));
            }
        }

        static void unregisterListeningView(View view) {
            synchronized (sViewsWithListeners) {
                int i4 = 0;
                while (true) {
                    ArrayList<WeakReference<View>> arrayList = sViewsWithListeners;
                    if (i4 >= arrayList.size()) {
                        return;
                    }
                    if (arrayList.get(i4).get() == view) {
                        arrayList.remove(i4);
                        return;
                    }
                    i4++;
                }
            }
        }

        boolean dispatch(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                recalcViewsWithUnhandled();
            }
            View dispatchInOrder = dispatchInOrder(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (dispatchInOrder != null && !KeyEvent.isModifierKey(keyCode)) {
                    getCapturedKeys().put(keyCode, new WeakReference<>(dispatchInOrder));
                }
            }
            return dispatchInOrder != null;
        }

        boolean preDispatch(KeyEvent keyEvent) {
            int indexOfKey;
            WeakReference<KeyEvent> weakReference = this.mLastDispatchedPreViewKeyEvent;
            if (weakReference == null || weakReference.get() != keyEvent) {
                this.mLastDispatchedPreViewKeyEvent = new WeakReference<>(keyEvent);
                WeakReference<View> weakReference2 = null;
                SparseArray<WeakReference<View>> capturedKeys = getCapturedKeys();
                if (keyEvent.getAction() == 1 && (indexOfKey = capturedKeys.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference2 = capturedKeys.valueAt(indexOfKey);
                    capturedKeys.removeAt(indexOfKey);
                }
                if (weakReference2 == null) {
                    weakReference2 = capturedKeys.get(keyEvent.getKeyCode());
                }
                if (weakReference2 != null) {
                    View view = weakReference2.get();
                    if (view != null && ViewCompat.isAttachedToWindow(view)) {
                        onUnhandledKeyEvent(view, keyEvent);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
    }

    @Deprecated
    protected ViewCompat() {
    }

    private static AccessibilityViewProperty<Boolean> accessibilityHeadingProperty() {
        return new AccessibilityViewProperty<Boolean>(R.id.tag_accessibility_heading, Boolean.class, 28) { // from class: androidx.core.view.ViewCompat.4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            public Boolean frameworkGet(View view) {
                return Boolean.valueOf(Api28Impl.isAccessibilityHeading(view));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            public void frameworkSet(View view, Boolean bool) {
                Api28Impl.setAccessibilityHeading(view, bool.booleanValue());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            public boolean shouldUpdate(Boolean bool, Boolean bool2) {
                return !booleanNullToFalseEquals(bool, bool2);
            }
        };
    }

    public static int addAccessibilityAction(@NonNull View view, @NonNull CharSequence charSequence, @NonNull AccessibilityViewCommand accessibilityViewCommand) {
        int availableActionIdFromResources = getAvailableActionIdFromResources(view, charSequence);
        if (availableActionIdFromResources != -1) {
            addAccessibilityAction(view, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(availableActionIdFromResources, charSequence, accessibilityViewCommand));
        }
        return availableActionIdFromResources;
    }

    public static void addKeyboardNavigationClusters(@NonNull View view, @NonNull Collection<View> collection, int i4) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.addKeyboardNavigationClusters(view, collection, i4);
        }
    }

    public static void addOnUnhandledKeyEventListener(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        if (Build.VERSION.SDK_INT >= 28) {
            Api28Impl.addOnUnhandledKeyEventListener(view, onUnhandledKeyEventListenerCompat);
            return;
        }
        int i4 = R.id.tag_unhandled_key_listeners;
        ArrayList arrayList = (ArrayList) view.getTag(i4);
        if (arrayList == null) {
            arrayList = new ArrayList();
            view.setTag(i4, arrayList);
        }
        arrayList.add(onUnhandledKeyEventListenerCompat);
        if (arrayList.size() == 1) {
            UnhandledKeyEventManager.registerListeningView(view);
        }
    }

    @NonNull
    public static ViewPropertyAnimatorCompat animate(@NonNull View view) {
        if (sViewPropertyAnimatorMap == null) {
            sViewPropertyAnimatorMap = new WeakHashMap<>();
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = sViewPropertyAnimatorMap.get(view);
        if (viewPropertyAnimatorCompat == null) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
            sViewPropertyAnimatorMap.put(view, viewPropertyAnimatorCompat2);
            return viewPropertyAnimatorCompat2;
        }
        return viewPropertyAnimatorCompat;
    }

    private static void bindTempDetach() {
        try {
            sDispatchStartTemporaryDetach = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
            sDispatchFinishTemporaryDetach = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
        } catch (NoSuchMethodException e4) {
            Log.e(TAG, "Couldn't find method", e4);
        }
        sTempDetachBound = true;
    }

    @Deprecated
    public static boolean canScrollHorizontally(View view, int i4) {
        return view.canScrollHorizontally(i4);
    }

    @Deprecated
    public static boolean canScrollVertically(View view, int i4) {
        return view.canScrollVertically(i4);
    }

    public static void cancelDragAndDrop(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.cancelDragAndDrop(view);
        }
    }

    @Deprecated
    public static int combineMeasuredStates(int i4, int i10) {
        return View.combineMeasuredStates(i4, i10);
    }

    private static void compatOffsetLeftAndRight(View view, int i4) {
        view.offsetLeftAndRight(i4);
        if (view.getVisibility() == 0) {
            tickleInvalidationFlag(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                tickleInvalidationFlag((View) parent);
            }
        }
    }

    private static void compatOffsetTopAndBottom(View view, int i4) {
        view.offsetTopAndBottom(i4);
        if (view.getVisibility() == 0) {
            tickleInvalidationFlag(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                tickleInvalidationFlag((View) parent);
            }
        }
    }

    @NonNull
    public static WindowInsetsCompat computeSystemWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
        return Api21Impl.computeSystemWindowInsets(view, windowInsetsCompat, rect);
    }

    @NonNull
    public static WindowInsetsCompat dispatchApplyWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets dispatchApplyWindowInsets = Api20Impl.dispatchApplyWindowInsets(view, windowInsets);
            if (!dispatchApplyWindowInsets.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(dispatchApplyWindowInsets, view);
            }
        }
        return windowInsetsCompat;
    }

    public static void dispatchFinishTemporaryDetach(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.dispatchFinishTemporaryDetach(view);
            return;
        }
        if (!sTempDetachBound) {
            bindTempDetach();
        }
        Method method = sDispatchFinishTemporaryDetach;
        if (method != null) {
            try {
                method.invoke(view, new Object[0]);
                return;
            } catch (Exception e4) {
                Log.d(TAG, "Error calling dispatchFinishTemporaryDetach", e4);
                return;
            }
        }
        view.onFinishTemporaryDetach();
    }

    public static boolean dispatchNestedFling(@NonNull View view, float f10, float f11, boolean z9) {
        return Api21Impl.dispatchNestedFling(view, f10, f11, z9);
    }

    public static boolean dispatchNestedPreFling(@NonNull View view, float f10, float f11) {
        return Api21Impl.dispatchNestedPreFling(view, f10, f11);
    }

    public static boolean dispatchNestedPreScroll(@NonNull View view, int i4, int i10, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return Api21Impl.dispatchNestedPreScroll(view, i4, i10, iArr, iArr2);
    }

    public static boolean dispatchNestedScroll(@NonNull View view, int i4, int i10, int i11, int i12, @Nullable int[] iArr) {
        return Api21Impl.dispatchNestedScroll(view, i4, i10, i11, i12, iArr);
    }

    public static void dispatchStartTemporaryDetach(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.dispatchStartTemporaryDetach(view);
            return;
        }
        if (!sTempDetachBound) {
            bindTempDetach();
        }
        Method method = sDispatchStartTemporaryDetach;
        if (method != null) {
            try {
                method.invoke(view, new Object[0]);
                return;
            } catch (Exception e4) {
                Log.d(TAG, "Error calling dispatchStartTemporaryDetach", e4);
                return;
            }
        }
        view.onStartTemporaryDetach();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public static boolean dispatchUnhandledKeyEventBeforeCallback(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return UnhandledKeyEventManager.at(view).dispatch(view, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public static boolean dispatchUnhandledKeyEventBeforeHierarchy(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return UnhandledKeyEventManager.at(view).preDispatch(keyEvent);
    }

    public static void enableAccessibleClickableSpanSupport(@NonNull View view) {
        ensureAccessibilityDelegateCompat(view);
    }

    static void ensureAccessibilityDelegateCompat(@NonNull View view) {
        AccessibilityDelegateCompat accessibilityDelegate = getAccessibilityDelegate(view);
        if (accessibilityDelegate == null) {
            accessibilityDelegate = new AccessibilityDelegateCompat();
        }
        setAccessibilityDelegate(view, accessibilityDelegate);
    }

    public static int generateViewId() {
        return Api17Impl.generateViewId();
    }

    @Nullable
    public static AccessibilityDelegateCompat getAccessibilityDelegate(@NonNull View view) {
        View.AccessibilityDelegate accessibilityDelegateInternal = getAccessibilityDelegateInternal(view);
        if (accessibilityDelegateInternal == null) {
            return null;
        }
        if (accessibilityDelegateInternal instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter) {
            return ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) accessibilityDelegateInternal).mCompat;
        }
        return new AccessibilityDelegateCompat(accessibilityDelegateInternal);
    }

    @Nullable
    private static View.AccessibilityDelegate getAccessibilityDelegateInternal(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.getAccessibilityDelegate(view);
        }
        return getAccessibilityDelegateThroughReflection(view);
    }

    @Nullable
    private static View.AccessibilityDelegate getAccessibilityDelegateThroughReflection(@NonNull View view) {
        if (sAccessibilityDelegateCheckFailed) {
            return null;
        }
        if (sAccessibilityDelegateField == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                sAccessibilityDelegateField = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                sAccessibilityDelegateCheckFailed = true;
                return null;
            }
        }
        try {
            Object obj = sAccessibilityDelegateField.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            sAccessibilityDelegateCheckFailed = true;
            return null;
        }
    }

    public static int getAccessibilityLiveRegion(@NonNull View view) {
        return Api19Impl.getAccessibilityLiveRegion(view);
    }

    @Nullable
    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(@NonNull View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = Api16Impl.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new AccessibilityNodeProviderCompat(accessibilityNodeProvider);
        }
        return null;
    }

    @Nullable
    @UiThread
    public static CharSequence getAccessibilityPaneTitle(@NonNull View view) {
        return paneTitleProperty().get(view);
    }

    private static List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> getActionList(View view) {
        int i4 = R.id.tag_accessibility_actions;
        ArrayList arrayList = (ArrayList) view.getTag(i4);
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            view.setTag(i4, arrayList2);
            return arrayList2;
        }
        return arrayList;
    }

    @Deprecated
    public static float getAlpha(View view) {
        return view.getAlpha();
    }

    private static int getAvailableActionIdFromResources(View view, @NonNull CharSequence charSequence) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> actionList = getActionList(view);
        for (int i4 = 0; i4 < actionList.size(); i4++) {
            if (TextUtils.equals(charSequence, actionList.get(i4).getLabel())) {
                return actionList.get(i4).getId();
            }
        }
        int i10 = 0;
        int i11 = -1;
        while (true) {
            int[] iArr = ACCESSIBILITY_ACTIONS_RESOURCE_IDS;
            if (i10 >= iArr.length || i11 != -1) {
                break;
            }
            int i12 = iArr[i10];
            boolean z9 = true;
            for (int i13 = 0; i13 < actionList.size(); i13++) {
                z9 &= actionList.get(i13).getId() != i12;
            }
            if (z9) {
                i11 = i12;
            }
            i10++;
        }
        return i11;
    }

    @Nullable
    public static ColorStateList getBackgroundTintList(@NonNull View view) {
        return Api21Impl.getBackgroundTintList(view);
    }

    @Nullable
    public static PorterDuff.Mode getBackgroundTintMode(@NonNull View view) {
        return Api21Impl.getBackgroundTintMode(view);
    }

    @Nullable
    public static Rect getClipBounds(@NonNull View view) {
        return Api18Impl.getClipBounds(view);
    }

    @Nullable
    public static Display getDisplay(@NonNull View view) {
        return Api17Impl.getDisplay(view);
    }

    public static float getElevation(@NonNull View view) {
        return Api21Impl.getElevation(view);
    }

    private static Rect getEmptyTempRect() {
        if (sThreadLocalRect == null) {
            sThreadLocalRect = new ThreadLocal<>();
        }
        Rect rect = sThreadLocalRect.get();
        if (rect == null) {
            rect = new Rect();
            sThreadLocalRect.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    private static OnReceiveContentViewBehavior getFallback(@NonNull View view) {
        if (view instanceof OnReceiveContentViewBehavior) {
            return (OnReceiveContentViewBehavior) view;
        }
        return NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
    }

    public static boolean getFitsSystemWindows(@NonNull View view) {
        return Api16Impl.getFitsSystemWindows(view);
    }

    public static int getImportantForAccessibility(@NonNull View view) {
        return Api16Impl.getImportantForAccessibility(view);
    }

    @SuppressLint({"InlinedApi"})
    public static int getImportantForAutofill(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getImportantForAutofill(view);
        }
        return 0;
    }

    public static int getLabelFor(@NonNull View view) {
        return Api17Impl.getLabelFor(view);
    }

    @Deprecated
    public static int getLayerType(View view) {
        return view.getLayerType();
    }

    public static int getLayoutDirection(@NonNull View view) {
        return Api17Impl.getLayoutDirection(view);
    }

    @Nullable
    @Deprecated
    public static Matrix getMatrix(View view) {
        return view.getMatrix();
    }

    @Deprecated
    public static int getMeasuredHeightAndState(View view) {
        return view.getMeasuredHeightAndState();
    }

    @Deprecated
    public static int getMeasuredState(View view) {
        return view.getMeasuredState();
    }

    @Deprecated
    public static int getMeasuredWidthAndState(View view) {
        return view.getMeasuredWidthAndState();
    }

    public static int getMinimumHeight(@NonNull View view) {
        return Api16Impl.getMinimumHeight(view);
    }

    public static int getMinimumWidth(@NonNull View view) {
        return Api16Impl.getMinimumWidth(view);
    }

    public static int getNextClusterForwardId(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getNextClusterForwardId(view);
        }
        return -1;
    }

    @Nullable
    public static String[] getOnReceiveContentMimeTypes(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.getReceiveContentMimeTypes(view);
        }
        return (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    @Deprecated
    public static int getOverScrollMode(View view) {
        return view.getOverScrollMode();
    }

    @Px
    public static int getPaddingEnd(@NonNull View view) {
        return Api17Impl.getPaddingEnd(view);
    }

    @Px
    public static int getPaddingStart(@NonNull View view) {
        return Api17Impl.getPaddingStart(view);
    }

    @Nullable
    public static ViewParent getParentForAccessibility(@NonNull View view) {
        return Api16Impl.getParentForAccessibility(view);
    }

    @Deprecated
    public static float getPivotX(View view) {
        return view.getPivotX();
    }

    @Deprecated
    public static float getPivotY(View view) {
        return view.getPivotY();
    }

    @Nullable
    public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.getRootWindowInsets(view);
        }
        return Api21Impl.getRootWindowInsets(view);
    }

    @Deprecated
    public static float getRotation(View view) {
        return view.getRotation();
    }

    @Deprecated
    public static float getRotationX(View view) {
        return view.getRotationX();
    }

    @Deprecated
    public static float getRotationY(View view) {
        return view.getRotationY();
    }

    @Deprecated
    public static float getScaleX(View view) {
        return view.getScaleX();
    }

    @Deprecated
    public static float getScaleY(View view) {
        return view.getScaleY();
    }

    public static int getScrollIndicators(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.getScrollIndicators(view);
        }
        return 0;
    }

    @Nullable
    @UiThread
    public static CharSequence getStateDescription(@NonNull View view) {
        return stateDescriptionProperty().get(view);
    }

    @NonNull
    public static List<Rect> getSystemGestureExclusionRects(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.getSystemGestureExclusionRects(view);
        }
        return Collections.emptyList();
    }

    @Nullable
    public static String getTransitionName(@NonNull View view) {
        return Api21Impl.getTransitionName(view);
    }

    @Deprecated
    public static float getTranslationX(View view) {
        return view.getTranslationX();
    }

    @Deprecated
    public static float getTranslationY(View view) {
        return view.getTranslationY();
    }

    public static float getTranslationZ(@NonNull View view) {
        return Api21Impl.getTranslationZ(view);
    }

    @Nullable
    @Deprecated
    public static WindowInsetsControllerCompat getWindowInsetsController(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getWindowInsetsController(view);
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    return WindowCompat.getInsetsController(window, view);
                }
                return null;
            }
        }
        return null;
    }

    @Deprecated
    public static int getWindowSystemUiVisibility(@NonNull View view) {
        return Api16Impl.getWindowSystemUiVisibility(view);
    }

    @Deprecated
    public static float getX(View view) {
        return view.getX();
    }

    @Deprecated
    public static float getY(View view) {
        return view.getY();
    }

    public static float getZ(@NonNull View view) {
        return Api21Impl.getZ(view);
    }

    public static boolean hasAccessibilityDelegate(@NonNull View view) {
        return getAccessibilityDelegateInternal(view) != null;
    }

    public static boolean hasExplicitFocusable(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.hasExplicitFocusable(view);
        }
        return view.hasFocusable();
    }

    public static boolean hasNestedScrollingParent(@NonNull View view) {
        return Api21Impl.hasNestedScrollingParent(view);
    }

    public static boolean hasOnClickListeners(@NonNull View view) {
        return Api15Impl.hasOnClickListeners(view);
    }

    public static boolean hasOverlappingRendering(@NonNull View view) {
        return Api16Impl.hasOverlappingRendering(view);
    }

    public static boolean hasTransientState(@NonNull View view) {
        return Api16Impl.hasTransientState(view);
    }

    @UiThread
    public static boolean isAccessibilityHeading(@NonNull View view) {
        Boolean bool = accessibilityHeadingProperty().get(view);
        return bool != null && bool.booleanValue();
    }

    public static boolean isAttachedToWindow(@NonNull View view) {
        return Api19Impl.isAttachedToWindow(view);
    }

    public static boolean isFocusedByDefault(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.isFocusedByDefault(view);
        }
        return false;
    }

    public static boolean isImportantForAccessibility(@NonNull View view) {
        return Api21Impl.isImportantForAccessibility(view);
    }

    public static boolean isImportantForAutofill(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.isImportantForAutofill(view);
        }
        return true;
    }

    public static boolean isInLayout(@NonNull View view) {
        return Api18Impl.isInLayout(view);
    }

    public static boolean isKeyboardNavigationCluster(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.isKeyboardNavigationCluster(view);
        }
        return false;
    }

    public static boolean isLaidOut(@NonNull View view) {
        return Api19Impl.isLaidOut(view);
    }

    public static boolean isLayoutDirectionResolved(@NonNull View view) {
        return Api19Impl.isLayoutDirectionResolved(view);
    }

    public static boolean isNestedScrollingEnabled(@NonNull View view) {
        return Api21Impl.isNestedScrollingEnabled(view);
    }

    @Deprecated
    public static boolean isOpaque(View view) {
        return view.isOpaque();
    }

    public static boolean isPaddingRelative(@NonNull View view) {
        return Api17Impl.isPaddingRelative(view);
    }

    @UiThread
    public static boolean isScreenReaderFocusable(@NonNull View view) {
        Boolean bool = screenReaderFocusableProperty().get(view);
        return bool != null && bool.booleanValue();
    }

    @Deprecated
    public static void jumpDrawablesToCurrentState(View view) {
        view.jumpDrawablesToCurrentState();
    }

    @Nullable
    public static View keyboardNavigationClusterSearch(@NonNull View view, @Nullable View view2, int i4) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.keyboardNavigationClusterSearch(view, view2, i4);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ContentInfoCompat lambda$static$0(ContentInfoCompat contentInfoCompat) {
        return contentInfoCompat;
    }

    @RequiresApi(19)
    static void notifyViewAccessibilityStateChangedIfNeeded(View view, int i4) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z9 = getAccessibilityPaneTitle(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (getAccessibilityLiveRegion(view) != 0 || z9) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z9 ? 32 : 2048);
                Api19Impl.setContentChangeTypes(obtain, i4);
                if (z9) {
                    obtain.getText().add(getAccessibilityPaneTitle(view));
                    setViewImportanceForAccessibilityIfNeeded(view);
                }
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (i4 == 32) {
                AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(obtain2);
                obtain2.setEventType(32);
                Api19Impl.setContentChangeTypes(obtain2, i4);
                obtain2.setSource(view);
                view.onPopulateAccessibilityEvent(obtain2);
                obtain2.getText().add(getAccessibilityPaneTitle(view));
                accessibilityManager.sendAccessibilityEvent(obtain2);
            } else if (view.getParent() != null) {
                try {
                    Api19Impl.notifySubtreeAccessibilityStateChanged(view.getParent(), view, view, i4);
                } catch (AbstractMethodError e4) {
                    Log.e(TAG, view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e4);
                }
            }
        }
    }

    public static void offsetLeftAndRight(@NonNull View view, int i4) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i4);
            return;
        }
        Rect emptyTempRect = getEmptyTempRect();
        boolean z9 = false;
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            emptyTempRect.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z9 = !emptyTempRect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        compatOffsetLeftAndRight(view, i4);
        if (z9 && emptyTempRect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(emptyTempRect);
        }
    }

    public static void offsetTopAndBottom(@NonNull View view, int i4) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i4);
            return;
        }
        Rect emptyTempRect = getEmptyTempRect();
        boolean z9 = false;
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            emptyTempRect.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z9 = !emptyTempRect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        compatOffsetTopAndBottom(view, i4);
        if (z9 && emptyTempRect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(emptyTempRect);
        }
    }

    @NonNull
    public static WindowInsetsCompat onApplyWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets onApplyWindowInsets = Api20Impl.onApplyWindowInsets(view, windowInsets);
            if (!onApplyWindowInsets.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(onApplyWindowInsets, view);
            }
        }
        return windowInsetsCompat;
    }

    @Deprecated
    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    public static void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat.unwrap());
    }

    @Deprecated
    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onPopulateAccessibilityEvent(accessibilityEvent);
    }

    private static AccessibilityViewProperty<CharSequence> paneTitleProperty() {
        return new AccessibilityViewProperty<CharSequence>(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28) { // from class: androidx.core.view.ViewCompat.2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            public CharSequence frameworkGet(View view) {
                return Api28Impl.getAccessibilityPaneTitle(view);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            public void frameworkSet(View view, CharSequence charSequence) {
                Api28Impl.setAccessibilityPaneTitle(view, charSequence);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            public boolean shouldUpdate(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        };
    }

    public static boolean performAccessibilityAction(@NonNull View view, int i4, @Nullable Bundle bundle) {
        return Api16Impl.performAccessibilityAction(view, i4, bundle);
    }

    @Nullable
    public static ContentInfoCompat performReceiveContent(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "performReceiveContent: " + contentInfoCompat + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.performReceiveContent(view, contentInfoCompat);
        }
        OnReceiveContentListener onReceiveContentListener = (OnReceiveContentListener) view.getTag(R.id.tag_on_receive_content_listener);
        if (onReceiveContentListener != null) {
            ContentInfoCompat onReceiveContent = onReceiveContentListener.onReceiveContent(view, contentInfoCompat);
            if (onReceiveContent == null) {
                return null;
            }
            return getFallback(view).onReceiveContent(onReceiveContent);
        }
        return getFallback(view).onReceiveContent(contentInfoCompat);
    }

    public static void postInvalidateOnAnimation(@NonNull View view) {
        Api16Impl.postInvalidateOnAnimation(view);
    }

    public static void postOnAnimation(@NonNull View view, @NonNull Runnable runnable) {
        Api16Impl.postOnAnimation(view, runnable);
    }

    @SuppressLint({"LambdaLast"})
    public static void postOnAnimationDelayed(@NonNull View view, @NonNull Runnable runnable, long j4) {
        Api16Impl.postOnAnimationDelayed(view, runnable, j4);
    }

    public static void removeAccessibilityAction(@NonNull View view, int i4) {
        removeActionWithId(i4, view);
        notifyViewAccessibilityStateChangedIfNeeded(view, 0);
    }

    private static void removeActionWithId(int i4, View view) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> actionList = getActionList(view);
        for (int i10 = 0; i10 < actionList.size(); i10++) {
            if (actionList.get(i10).getId() == i4) {
                actionList.remove(i10);
                return;
            }
        }
    }

    public static void removeOnUnhandledKeyEventListener(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        if (Build.VERSION.SDK_INT >= 28) {
            Api28Impl.removeOnUnhandledKeyEventListener(view, onUnhandledKeyEventListenerCompat);
            return;
        }
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
        if (arrayList != null) {
            arrayList.remove(onUnhandledKeyEventListenerCompat);
            if (arrayList.size() == 0) {
                UnhandledKeyEventManager.unregisterListeningView(view);
            }
        }
    }

    public static void replaceAccessibilityAction(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, @Nullable CharSequence charSequence, @Nullable AccessibilityViewCommand accessibilityViewCommand) {
        if (accessibilityViewCommand == null && charSequence == null) {
            removeAccessibilityAction(view, accessibilityActionCompat.getId());
        } else {
            addAccessibilityAction(view, accessibilityActionCompat.createReplacementAction(charSequence, accessibilityViewCommand));
        }
    }

    public static void requestApplyInsets(@NonNull View view) {
        Api20Impl.requestApplyInsets(view);
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull View view, @IdRes int i4) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) Api28Impl.requireViewById(view, i4);
        }
        T t9 = (T) view.findViewById(i4);
        if (t9 != null) {
            return t9;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this View");
    }

    @Deprecated
    public static int resolveSizeAndState(int i4, int i10, int i11) {
        return View.resolveSizeAndState(i4, i10, i11);
    }

    public static boolean restoreDefaultFocus(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.restoreDefaultFocus(view);
        }
        return view.requestFocus();
    }

    public static void saveAttributeDataForStyleable(@NonNull View view, @NonNull @SuppressLint({"ContextFirst"}) Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i4, int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.saveAttributeDataForStyleable(view, context, iArr, attributeSet, typedArray, i4, i10);
        }
    }

    private static AccessibilityViewProperty<Boolean> screenReaderFocusableProperty() {
        return new AccessibilityViewProperty<Boolean>(R.id.tag_screen_reader_focusable, Boolean.class, 28) { // from class: androidx.core.view.ViewCompat.1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            public Boolean frameworkGet(@NonNull View view) {
                return Boolean.valueOf(Api28Impl.isScreenReaderFocusable(view));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            public void frameworkSet(@NonNull View view, Boolean bool) {
                Api28Impl.setScreenReaderFocusable(view, bool.booleanValue());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            public boolean shouldUpdate(Boolean bool, Boolean bool2) {
                return !booleanNullToFalseEquals(bool, bool2);
            }
        };
    }

    public static void setAccessibilityDelegate(@NonNull View view, @Nullable AccessibilityDelegateCompat accessibilityDelegateCompat) {
        if (accessibilityDelegateCompat == null && (getAccessibilityDelegateInternal(view) instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter)) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        view.setAccessibilityDelegate(accessibilityDelegateCompat == null ? null : accessibilityDelegateCompat.getBridge());
    }

    @UiThread
    public static void setAccessibilityHeading(@NonNull View view, boolean z9) {
        accessibilityHeadingProperty().set(view, Boolean.valueOf(z9));
    }

    public static void setAccessibilityLiveRegion(@NonNull View view, int i4) {
        Api19Impl.setAccessibilityLiveRegion(view, i4);
    }

    @UiThread
    public static void setAccessibilityPaneTitle(@NonNull View view, @Nullable CharSequence charSequence) {
        paneTitleProperty().set(view, charSequence);
        if (charSequence != null) {
            sAccessibilityPaneVisibilityManager.addAccessibilityPane(view);
        } else {
            sAccessibilityPaneVisibilityManager.removeAccessibilityPane(view);
        }
    }

    @Deprecated
    public static void setActivated(View view, boolean z9) {
        view.setActivated(z9);
    }

    @Deprecated
    public static void setAlpha(View view, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        view.setAlpha(f10);
    }

    public static void setAutofillHints(@NonNull View view, @Nullable String... strArr) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.setAutofillHints(view, strArr);
        }
    }

    public static void setBackground(@NonNull View view, @Nullable Drawable drawable) {
        Api16Impl.setBackground(view, drawable);
    }

    public static void setBackgroundTintList(@NonNull View view, @Nullable ColorStateList colorStateList) {
        int i4 = Build.VERSION.SDK_INT;
        Api21Impl.setBackgroundTintList(view, colorStateList);
        if (i4 == 21) {
            Drawable background = view.getBackground();
            boolean z9 = (Api21Impl.getBackgroundTintList(view) == null && Api21Impl.getBackgroundTintMode(view) == null) ? false : true;
            if (background == null || !z9) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            Api16Impl.setBackground(view, background);
        }
    }

    public static void setBackgroundTintMode(@NonNull View view, @Nullable PorterDuff.Mode mode) {
        int i4 = Build.VERSION.SDK_INT;
        Api21Impl.setBackgroundTintMode(view, mode);
        if (i4 == 21) {
            Drawable background = view.getBackground();
            boolean z9 = (Api21Impl.getBackgroundTintList(view) == null && Api21Impl.getBackgroundTintMode(view) == null) ? false : true;
            if (background == null || !z9) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            Api16Impl.setBackground(view, background);
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    @Deprecated
    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z9) {
        if (sChildrenDrawingOrderMethod == null) {
            try {
                sChildrenDrawingOrderMethod = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e4) {
                Log.e(TAG, "Unable to find childrenDrawingOrderEnabled", e4);
            }
            sChildrenDrawingOrderMethod.setAccessible(true);
        }
        try {
            sChildrenDrawingOrderMethod.invoke(viewGroup, Boolean.valueOf(z9));
        } catch (IllegalAccessException e10) {
            Log.e(TAG, "Unable to invoke childrenDrawingOrderEnabled", e10);
        } catch (IllegalArgumentException e11) {
            Log.e(TAG, "Unable to invoke childrenDrawingOrderEnabled", e11);
        } catch (InvocationTargetException e12) {
            Log.e(TAG, "Unable to invoke childrenDrawingOrderEnabled", e12);
        }
    }

    public static void setClipBounds(@NonNull View view, @Nullable Rect rect) {
        Api18Impl.setClipBounds(view, rect);
    }

    public static void setElevation(@NonNull View view, float f10) {
        Api21Impl.setElevation(view, f10);
    }

    @Deprecated
    public static void setFitsSystemWindows(View view, boolean z9) {
        view.setFitsSystemWindows(z9);
    }

    public static void setFocusedByDefault(@NonNull View view, boolean z9) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.setFocusedByDefault(view, z9);
        }
    }

    public static void setHasTransientState(@NonNull View view, boolean z9) {
        Api16Impl.setHasTransientState(view, z9);
    }

    @UiThread
    public static void setImportantForAccessibility(@NonNull View view, int i4) {
        Api16Impl.setImportantForAccessibility(view, i4);
    }

    public static void setImportantForAutofill(@NonNull View view, int i4) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.setImportantForAutofill(view, i4);
        }
    }

    public static void setKeyboardNavigationCluster(@NonNull View view, boolean z9) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.setKeyboardNavigationCluster(view, z9);
        }
    }

    public static void setLabelFor(@NonNull View view, @IdRes int i4) {
        Api17Impl.setLabelFor(view, i4);
    }

    public static void setLayerPaint(@NonNull View view, @Nullable Paint paint) {
        Api17Impl.setLayerPaint(view, paint);
    }

    @Deprecated
    public static void setLayerType(View view, int i4, Paint paint) {
        view.setLayerType(i4, paint);
    }

    public static void setLayoutDirection(@NonNull View view, int i4) {
        Api17Impl.setLayoutDirection(view, i4);
    }

    public static void setNestedScrollingEnabled(@NonNull View view, boolean z9) {
        Api21Impl.setNestedScrollingEnabled(view, z9);
    }

    public static void setNextClusterForwardId(@NonNull View view, int i4) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.setNextClusterForwardId(view, i4);
        }
    }

    public static void setOnApplyWindowInsetsListener(@NonNull View view, @Nullable OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        Api21Impl.setOnApplyWindowInsetsListener(view, onApplyWindowInsetsListener);
    }

    public static void setOnReceiveContentListener(@NonNull View view, @Nullable String[] strArr, @Nullable OnReceiveContentListener onReceiveContentListener) {
        if (Build.VERSION.SDK_INT >= 31) {
            Api31Impl.setOnReceiveContentListener(view, strArr, onReceiveContentListener);
            return;
        }
        strArr = (strArr == null || strArr.length == 0) ? null : null;
        boolean z9 = false;
        if (onReceiveContentListener != null) {
            Preconditions.checkArgument(strArr != null, "When the listener is set, MIME types must also be set");
        }
        if (strArr != null) {
            int length = strArr.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (strArr[i4].startsWith("*")) {
                    z9 = true;
                    break;
                } else {
                    i4++;
                }
            }
            Preconditions.checkArgument(!z9, "A MIME type set here must not start with *: " + Arrays.toString(strArr));
        }
        view.setTag(R.id.tag_on_receive_content_mime_types, strArr);
        view.setTag(R.id.tag_on_receive_content_listener, onReceiveContentListener);
    }

    @Deprecated
    public static void setOverScrollMode(View view, int i4) {
        view.setOverScrollMode(i4);
    }

    public static void setPaddingRelative(@NonNull View view, @Px int i4, @Px int i10, @Px int i11, @Px int i12) {
        Api17Impl.setPaddingRelative(view, i4, i10, i11, i12);
    }

    @Deprecated
    public static void setPivotX(View view, float f10) {
        view.setPivotX(f10);
    }

    @Deprecated
    public static void setPivotY(View view, float f10) {
        view.setPivotY(f10);
    }

    public static void setPointerIcon(@NonNull View view, @Nullable PointerIconCompat pointerIconCompat) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.setPointerIcon(view, (PointerIcon) (pointerIconCompat != null ? pointerIconCompat.getPointerIcon() : null));
        }
    }

    @Deprecated
    public static void setRotation(View view, float f10) {
        view.setRotation(f10);
    }

    @Deprecated
    public static void setRotationX(View view, float f10) {
        view.setRotationX(f10);
    }

    @Deprecated
    public static void setRotationY(View view, float f10) {
        view.setRotationY(f10);
    }

    @Deprecated
    public static void setSaveFromParentEnabled(View view, boolean z9) {
        view.setSaveFromParentEnabled(z9);
    }

    @Deprecated
    public static void setScaleX(View view, float f10) {
        view.setScaleX(f10);
    }

    @Deprecated
    public static void setScaleY(View view, float f10) {
        view.setScaleY(f10);
    }

    @UiThread
    public static void setScreenReaderFocusable(@NonNull View view, boolean z9) {
        screenReaderFocusableProperty().set(view, Boolean.valueOf(z9));
    }

    public static void setScrollIndicators(@NonNull View view, int i4) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setScrollIndicators(view, i4);
        }
    }

    @UiThread
    public static void setStateDescription(@NonNull View view, @Nullable CharSequence charSequence) {
        stateDescriptionProperty().set(view, charSequence);
    }

    public static void setSystemGestureExclusionRects(@NonNull View view, @NonNull List<Rect> list) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.setSystemGestureExclusionRects(view, list);
        }
    }

    public static void setTooltipText(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.setTooltipText(view, charSequence);
        }
    }

    public static void setTransitionName(@NonNull View view, @Nullable String str) {
        Api21Impl.setTransitionName(view, str);
    }

    @Deprecated
    public static void setTranslationX(View view, float f10) {
        view.setTranslationX(f10);
    }

    @Deprecated
    public static void setTranslationY(View view, float f10) {
        view.setTranslationY(f10);
    }

    public static void setTranslationZ(@NonNull View view, float f10) {
        Api21Impl.setTranslationZ(view, f10);
    }

    private static void setViewImportanceForAccessibilityIfNeeded(View view) {
        if (getImportantForAccessibility(view) == 0) {
            setImportantForAccessibility(view, 1);
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (getImportantForAccessibility((View) parent) == 4) {
                setImportantForAccessibility(view, 2);
                return;
            }
        }
    }

    public static void setWindowInsetsAnimationCallback(@NonNull View view, @Nullable WindowInsetsAnimationCompat.Callback callback) {
        WindowInsetsAnimationCompat.setCallback(view, callback);
    }

    @Deprecated
    public static void setX(View view, float f10) {
        view.setX(f10);
    }

    @Deprecated
    public static void setY(View view, float f10) {
        view.setY(f10);
    }

    public static void setZ(@NonNull View view, float f10) {
        Api21Impl.setZ(view, f10);
    }

    public static boolean startDragAndDrop(@NonNull View view, @Nullable ClipData clipData, @NonNull View.DragShadowBuilder dragShadowBuilder, @Nullable Object obj, int i4) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.startDragAndDrop(view, clipData, dragShadowBuilder, obj, i4);
        }
        return view.startDrag(clipData, dragShadowBuilder, obj, i4);
    }

    public static boolean startNestedScroll(@NonNull View view, int i4) {
        return Api21Impl.startNestedScroll(view, i4);
    }

    private static AccessibilityViewProperty<CharSequence> stateDescriptionProperty() {
        return new AccessibilityViewProperty<CharSequence>(R.id.tag_state_description, CharSequence.class, 64, 30) { // from class: androidx.core.view.ViewCompat.3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(30)
            public CharSequence frameworkGet(View view) {
                return Api30Impl.getStateDescription(view);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(30)
            public void frameworkSet(View view, CharSequence charSequence) {
                Api30Impl.setStateDescription(view, charSequence);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            public boolean shouldUpdate(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        };
    }

    public static void stopNestedScroll(@NonNull View view) {
        Api21Impl.stopNestedScroll(view);
    }

    private static void tickleInvalidationFlag(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static void updateDragShadow(@NonNull View view, @NonNull View.DragShadowBuilder dragShadowBuilder) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.updateDragShadow(view, dragShadowBuilder);
        }
    }

    public static boolean dispatchNestedPreScroll(@NonNull View view, int i4, int i10, @Nullable int[] iArr, @Nullable int[] iArr2, int i11) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedPreScroll(i4, i10, iArr, iArr2, i11);
        }
        if (i11 == 0) {
            return dispatchNestedPreScroll(view, i4, i10, iArr, iArr2);
        }
        return false;
    }

    public static void dispatchNestedScroll(@NonNull View view, int i4, int i10, int i11, int i12, @Nullable int[] iArr, int i13, @NonNull int[] iArr2) {
        if (view instanceof NestedScrollingChild3) {
            ((NestedScrollingChild3) view).dispatchNestedScroll(i4, i10, i11, i12, iArr, i13, iArr2);
        } else {
            dispatchNestedScroll(view, i4, i10, i11, i12, iArr, i13);
        }
    }

    public static boolean hasNestedScrollingParent(@NonNull View view, int i4) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).hasNestedScrollingParent(i4);
            return false;
        } else if (i4 == 0) {
            return hasNestedScrollingParent(view);
        } else {
            return false;
        }
    }

    public static void postInvalidateOnAnimation(@NonNull View view, int i4, int i10, int i11, int i12) {
        Api16Impl.postInvalidateOnAnimation(view, i4, i10, i11, i12);
    }

    public static boolean startNestedScroll(@NonNull View view, int i4, int i10) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).startNestedScroll(i4, i10);
        }
        if (i10 == 0) {
            return startNestedScroll(view, i4);
        }
        return false;
    }

    public static void stopNestedScroll(@NonNull View view, int i4) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).stopNestedScroll(i4);
        } else if (i4 == 0) {
            stopNestedScroll(view);
        }
    }

    public static void setScrollIndicators(@NonNull View view, int i4, int i10) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setScrollIndicators(view, i4, i10);
        }
    }

    private static void addAccessibilityAction(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat) {
        ensureAccessibilityDelegateCompat(view);
        removeActionWithId(accessibilityActionCompat.getId(), view);
        getActionList(view).add(accessibilityActionCompat);
        notifyViewAccessibilityStateChangedIfNeeded(view, 0);
    }

    public static boolean dispatchNestedScroll(@NonNull View view, int i4, int i10, int i11, int i12, @Nullable int[] iArr, int i13) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedScroll(i4, i10, i11, i12, iArr, i13);
        }
        if (i13 == 0) {
            return dispatchNestedScroll(view, i4, i10, i11, i12, iArr);
        }
        return false;
    }
}
