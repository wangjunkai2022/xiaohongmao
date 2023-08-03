package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public class AccessibilityWindowInfoCompat {
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;
    private static final int UNDEFINED = -1;
    private final Object mInfo;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void getBoundsInScreen(AccessibilityWindowInfo accessibilityWindowInfo, Rect rect) {
            accessibilityWindowInfo.getBoundsInScreen(rect);
        }

        @DoNotInline
        static AccessibilityWindowInfo getChild(AccessibilityWindowInfo accessibilityWindowInfo, int i4) {
            return accessibilityWindowInfo.getChild(i4);
        }

        @DoNotInline
        static int getChildCount(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getChildCount();
        }

        @DoNotInline
        static int getId(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getId();
        }

        @DoNotInline
        static int getLayer(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getLayer();
        }

        @DoNotInline
        static AccessibilityWindowInfo getParent(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getParent();
        }

        @DoNotInline
        static AccessibilityNodeInfo getRoot(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getRoot();
        }

        @DoNotInline
        static int getType(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getType();
        }

        @DoNotInline
        static boolean isAccessibilityFocused(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isAccessibilityFocused();
        }

        @DoNotInline
        static boolean isActive(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isActive();
        }

        @DoNotInline
        static boolean isFocused(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isFocused();
        }

        @DoNotInline
        static AccessibilityWindowInfo obtain() {
            return AccessibilityWindowInfo.obtain();
        }

        @DoNotInline
        static void recycle(AccessibilityWindowInfo accessibilityWindowInfo) {
            accessibilityWindowInfo.recycle();
        }

        @DoNotInline
        static AccessibilityWindowInfo obtain(AccessibilityWindowInfo accessibilityWindowInfo) {
            return AccessibilityWindowInfo.obtain(accessibilityWindowInfo);
        }
    }

    @RequiresApi(24)
    /* loaded from: classes.dex */
    private static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static AccessibilityNodeInfo getAnchor(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getAnchor();
        }

        @DoNotInline
        static CharSequence getTitle(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getTitle();
        }
    }

    private AccessibilityWindowInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    @Nullable
    public static AccessibilityWindowInfoCompat obtain() {
        return wrapNonNullInstance(Api21Impl.obtain());
    }

    private static String typeToString(int i4) {
        return i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? "<UNKNOWN>" : "TYPE_ACCESSIBILITY_OVERLAY" : "TYPE_SYSTEM" : "TYPE_INPUT_METHOD" : "TYPE_APPLICATION";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessibilityWindowInfoCompat wrapNonNullInstance(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof AccessibilityWindowInfoCompat)) {
            AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
            Object obj2 = this.mInfo;
            if (obj2 == null) {
                return accessibilityWindowInfoCompat.mInfo == null;
            }
            return obj2.equals(accessibilityWindowInfoCompat.mInfo);
        }
        return false;
    }

    @Nullable
    public AccessibilityNodeInfoCompat getAnchor() {
        if (Build.VERSION.SDK_INT >= 24) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(Api24Impl.getAnchor((AccessibilityWindowInfo) this.mInfo));
        }
        return null;
    }

    public void getBoundsInScreen(@NonNull Rect rect) {
        Api21Impl.getBoundsInScreen((AccessibilityWindowInfo) this.mInfo, rect);
    }

    @Nullable
    public AccessibilityWindowInfoCompat getChild(int i4) {
        return wrapNonNullInstance(Api21Impl.getChild((AccessibilityWindowInfo) this.mInfo, i4));
    }

    public int getChildCount() {
        return Api21Impl.getChildCount((AccessibilityWindowInfo) this.mInfo);
    }

    public int getId() {
        return Api21Impl.getId((AccessibilityWindowInfo) this.mInfo);
    }

    public int getLayer() {
        return Api21Impl.getLayer((AccessibilityWindowInfo) this.mInfo);
    }

    @Nullable
    public AccessibilityWindowInfoCompat getParent() {
        return wrapNonNullInstance(Api21Impl.getParent((AccessibilityWindowInfo) this.mInfo));
    }

    @Nullable
    public AccessibilityNodeInfoCompat getRoot() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(Api21Impl.getRoot((AccessibilityWindowInfo) this.mInfo));
    }

    @Nullable
    public CharSequence getTitle() {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.getTitle((AccessibilityWindowInfo) this.mInfo);
        }
        return null;
    }

    public int getType() {
        return Api21Impl.getType((AccessibilityWindowInfo) this.mInfo);
    }

    public int hashCode() {
        Object obj = this.mInfo;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean isAccessibilityFocused() {
        return Api21Impl.isAccessibilityFocused((AccessibilityWindowInfo) this.mInfo);
    }

    public boolean isActive() {
        return Api21Impl.isActive((AccessibilityWindowInfo) this.mInfo);
    }

    public boolean isFocused() {
        return Api21Impl.isFocused((AccessibilityWindowInfo) this.mInfo);
    }

    public void recycle() {
        Api21Impl.recycle((AccessibilityWindowInfo) this.mInfo);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb.append("AccessibilityWindowInfo[");
        sb.append("id=");
        sb.append(getId());
        sb.append(", type=");
        sb.append(typeToString(getType()));
        sb.append(", layer=");
        sb.append(getLayer());
        sb.append(", bounds=");
        sb.append(rect);
        sb.append(", focused=");
        sb.append(isFocused());
        sb.append(", active=");
        sb.append(isActive());
        sb.append(", hasParent=");
        sb.append(getParent() != null);
        sb.append(", hasChildren=");
        sb.append(getChildCount() > 0);
        sb.append(']');
        return sb.toString();
    }

    @Nullable
    public static AccessibilityWindowInfoCompat obtain(@Nullable AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        if (accessibilityWindowInfoCompat == null) {
            return null;
        }
        return wrapNonNullInstance(Api21Impl.obtain((AccessibilityWindowInfo) accessibilityWindowInfoCompat.mInfo));
    }
}
