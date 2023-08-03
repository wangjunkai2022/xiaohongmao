package androidx.navigation;

import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NavOptions.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0019\u0018\u00002\u00020\u0001:\u0001\"BQ\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u000eBY\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\b\u0001\u0010\t\u001a\u00020\n\u0012\b\b\u0001\u0010\u000b\u001a\u00020\n\u0012\b\b\u0001\u0010\f\u001a\u00020\n\u0012\b\b\u0001\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u0010J\u0013\u0010\u001a\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001c\u001a\u00020\nH\u0007J\b\u0010\u001d\u001a\u00020\nH\u0016J\u0006\u0010\u001e\u001a\u00020\u0003J\u0006\u0010\u001f\u001a\u00020\u0003J\u0006\u0010 \u001a\u00020\u0003J\u0006\u0010!\u001a\u00020\u0003R\u0013\u0010\t\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u000b\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0013\u0010\f\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0013\u0010\r\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0014\u0010\u000f\u001a\u00020\nX\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/navigation/NavOptions;", "", "singleTop", "", "restoreState", "popUpToRoute", "", "popUpToInclusive", "popUpToSaveState", "enterAnim", "", "exitAnim", "popEnterAnim", "popExitAnim", "(ZZLjava/lang/String;ZZIIII)V", "popUpToId", "(ZZIZZIIII)V", "getEnterAnim", "()I", "getExitAnim", "getPopEnterAnim", "getPopExitAnim", "getPopUpToId", "<set-?>", "getPopUpToRoute", "()Ljava/lang/String;", "equals", "other", "getPopUpTo", "hashCode", "isPopUpToInclusive", "shouldLaunchSingleTop", "shouldPopUpToSaveState", "shouldRestoreState", "Builder", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavOptions {
    private final int enterAnim;
    private final int exitAnim;
    private final int popEnterAnim;
    private final int popExitAnim;
    @IdRes
    private final int popUpToId;
    private final boolean popUpToInclusive;
    @h
    private String popUpToRoute;
    private final boolean popUpToSaveState;
    private final boolean restoreState;
    private final boolean singleTop;

    /* compiled from: NavOptions.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\b\u0001\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\nJ\u0010\u0010\u0015\u001a\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\u0016\u001a\u00020\u00002\b\b\u0001\u0010\u0007\u001a\u00020\u0004J$\u0010\u0017\u001a\u00020\u00002\b\b\u0001\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\nH\u0007J$\u0010\u0017\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0019\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\nH\u0007J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\nR\u0012\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/navigation/NavOptions$Builder;", "", "()V", "enterAnim", "", "exitAnim", "popEnterAnim", "popExitAnim", "popUpToId", "popUpToInclusive", "", "popUpToRoute", "", "popUpToSaveState", "restoreState", "singleTop", "build", "Landroidx/navigation/NavOptions;", "setEnterAnim", "setExitAnim", "setLaunchSingleTop", "setPopEnterAnim", "setPopExitAnim", "setPopUpTo", "destinationId", "inclusive", "saveState", "route", "setRestoreState", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {
        private boolean popUpToInclusive;
        @h
        private String popUpToRoute;
        private boolean popUpToSaveState;
        private boolean restoreState;
        private boolean singleTop;
        @IdRes
        private int popUpToId = -1;
        @AnimRes
        @AnimatorRes
        private int enterAnim = -1;
        @AnimRes
        @AnimatorRes
        private int exitAnim = -1;
        @AnimRes
        @AnimatorRes
        private int popEnterAnim = -1;
        @AnimRes
        @AnimatorRes
        private int popExitAnim = -1;

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, int i4, boolean z9, boolean z10, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            return builder.setPopUpTo(i4, z9, z10);
        }

        @g
        public final NavOptions build() {
            String str = this.popUpToRoute;
            if (str != null) {
                return new NavOptions(this.singleTop, this.restoreState, str, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
            }
            return new NavOptions(this.singleTop, this.restoreState, this.popUpToId, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
        }

        @g
        public final Builder setEnterAnim(@AnimRes @AnimatorRes int i4) {
            this.enterAnim = i4;
            return this;
        }

        @g
        public final Builder setExitAnim(@AnimRes @AnimatorRes int i4) {
            this.exitAnim = i4;
            return this;
        }

        @g
        public final Builder setLaunchSingleTop(boolean z9) {
            this.singleTop = z9;
            return this;
        }

        @g
        public final Builder setPopEnterAnim(@AnimRes @AnimatorRes int i4) {
            this.popEnterAnim = i4;
            return this;
        }

        @g
        public final Builder setPopExitAnim(@AnimRes @AnimatorRes int i4) {
            this.popExitAnim = i4;
            return this;
        }

        @JvmOverloads
        @g
        public final Builder setPopUpTo(@IdRes int i4, boolean z9) {
            return setPopUpTo$default(this, i4, z9, false, 4, (Object) null);
        }

        @JvmOverloads
        @g
        public final Builder setPopUpTo(@IdRes int i4, boolean z9, boolean z10) {
            this.popUpToId = i4;
            this.popUpToRoute = null;
            this.popUpToInclusive = z9;
            this.popUpToSaveState = z10;
            return this;
        }

        @JvmOverloads
        @g
        public final Builder setPopUpTo(@h String str, boolean z9) {
            return setPopUpTo$default(this, str, z9, false, 4, (Object) null);
        }

        @g
        public final Builder setRestoreState(boolean z9) {
            this.restoreState = z9;
            return this;
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, String str, boolean z9, boolean z10, int i4, Object obj) {
            if ((i4 & 4) != 0) {
                z10 = false;
            }
            return builder.setPopUpTo(str, z9, z10);
        }

        @JvmOverloads
        @g
        public final Builder setPopUpTo(@h String str, boolean z9, boolean z10) {
            this.popUpToRoute = str;
            this.popUpToId = -1;
            this.popUpToInclusive = z9;
            this.popUpToSaveState = z10;
            return this;
        }
    }

    public NavOptions(boolean z9, boolean z10, @IdRes int i4, boolean z11, boolean z12, @AnimRes @AnimatorRes int i10, @AnimRes @AnimatorRes int i11, @AnimRes @AnimatorRes int i12, @AnimRes @AnimatorRes int i13) {
        this.singleTop = z9;
        this.restoreState = z10;
        this.popUpToId = i4;
        this.popUpToInclusive = z11;
        this.popUpToSaveState = z12;
        this.enterAnim = i10;
        this.exitAnim = i11;
        this.popEnterAnim = i12;
        this.popExitAnim = i13;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(NavOptions.class, obj.getClass())) {
            return false;
        }
        NavOptions navOptions = (NavOptions) obj;
        return this.singleTop == navOptions.singleTop && this.restoreState == navOptions.restoreState && this.popUpToId == navOptions.popUpToId && Intrinsics.areEqual(this.popUpToRoute, navOptions.popUpToRoute) && this.popUpToInclusive == navOptions.popUpToInclusive && this.popUpToSaveState == navOptions.popUpToSaveState && this.enterAnim == navOptions.enterAnim && this.exitAnim == navOptions.exitAnim && this.popEnterAnim == navOptions.popEnterAnim && this.popExitAnim == navOptions.popExitAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getEnterAnim() {
        return this.enterAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getExitAnim() {
        return this.exitAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getPopEnterAnim() {
        return this.popEnterAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getPopExitAnim() {
        return this.popExitAnim;
    }

    @Deprecated(message = "Use popUpToId instead.", replaceWith = @ReplaceWith(expression = "popUpToId", imports = {}))
    @IdRes
    public final int getPopUpTo() {
        return this.popUpToId;
    }

    @IdRes
    public final int getPopUpToId() {
        return this.popUpToId;
    }

    @h
    public final String getPopUpToRoute() {
        return this.popUpToRoute;
    }

    public int hashCode() {
        int i4 = (((((shouldLaunchSingleTop() ? 1 : 0) * 31) + (shouldRestoreState() ? 1 : 0)) * 31) + this.popUpToId) * 31;
        String str = this.popUpToRoute;
        return ((((((((((((i4 + (str != null ? str.hashCode() : 0)) * 31) + (isPopUpToInclusive() ? 1 : 0)) * 31) + (shouldPopUpToSaveState() ? 1 : 0)) * 31) + this.enterAnim) * 31) + this.exitAnim) * 31) + this.popEnterAnim) * 31) + this.popExitAnim;
    }

    public final boolean isPopUpToInclusive() {
        return this.popUpToInclusive;
    }

    public final boolean shouldLaunchSingleTop() {
        return this.singleTop;
    }

    public final boolean shouldPopUpToSaveState() {
        return this.popUpToSaveState;
    }

    public final boolean shouldRestoreState() {
        return this.restoreState;
    }

    public NavOptions(boolean z9, boolean z10, @h String str, boolean z11, boolean z12, int i4, int i10, int i11, int i12) {
        this(z9, z10, NavDestination.Companion.createRoute(str).hashCode(), z11, z12, i4, i10, i11, i12);
        this.popUpToRoute = str;
    }
}
