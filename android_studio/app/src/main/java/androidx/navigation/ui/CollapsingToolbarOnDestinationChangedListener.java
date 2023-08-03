package androidx.navigation.ui;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.annotation.StringRes;
import androidx.appcompat.widget.Toolbar;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.transition.TransitionManager;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: CollapsingToolbarOnDestinationChangedListener.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\"\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001c\u0010\u0014\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0001\u0010\u0017\u001a\u00020\u0018H\u0014J\u0012\u0010\u0019\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;", "Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;", "collapsingToolbarLayout", "Lcom/google/android/material/appbar/CollapsingToolbarLayout;", "toolbar", "Landroidx/appcompat/widget/Toolbar;", "configuration", "Landroidx/navigation/ui/AppBarConfiguration;", "(Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/ui/AppBarConfiguration;)V", "mCollapsingToolbarLayoutWeakReference", "Ljava/lang/ref/WeakReference;", "mToolbarWeakReference", "onDestinationChanged", "", "controller", "Landroidx/navigation/NavController;", "destination", "Landroidx/navigation/NavDestination;", "arguments", "Landroid/os/Bundle;", "setNavigationIcon", "icon", "Landroid/graphics/drawable/Drawable;", "contentDescription", "", "setTitle", MessageBundle.TITLE_ENTRY, "", "navigation-ui_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CollapsingToolbarOnDestinationChangedListener extends AbstractAppBarOnDestinationChangedListener {
    @g
    private final WeakReference<CollapsingToolbarLayout> mCollapsingToolbarLayoutWeakReference;
    @g
    private final WeakReference<Toolbar> mToolbarWeakReference;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public CollapsingToolbarOnDestinationChangedListener(@m8.g com.google.android.material.appbar.CollapsingToolbarLayout r3, @m8.g androidx.appcompat.widget.Toolbar r4, @m8.g androidx.navigation.ui.AppBarConfiguration r5) {
        /*
            r2 = this;
            java.lang.String r0 = "collapsingToolbarLayout"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "toolbar"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "configuration"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            android.content.Context r0 = r3.getContext()
            java.lang.String r1 = "collapsingToolbarLayout.context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0, r5)
            java.lang.ref.WeakReference r5 = new java.lang.ref.WeakReference
            r5.<init>(r3)
            r2.mCollapsingToolbarLayoutWeakReference = r5
            java.lang.ref.WeakReference r3 = new java.lang.ref.WeakReference
            r3.<init>(r4)
            r2.mToolbarWeakReference = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.ui.CollapsingToolbarOnDestinationChangedListener.<init>(com.google.android.material.appbar.CollapsingToolbarLayout, androidx.appcompat.widget.Toolbar, androidx.navigation.ui.AppBarConfiguration):void");
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener, androidx.navigation.NavController.OnDestinationChangedListener
    public void onDestinationChanged(@g NavController controller, @g NavDestination destination, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(destination, "destination");
        CollapsingToolbarLayout collapsingToolbarLayout = this.mCollapsingToolbarLayoutWeakReference.get();
        Toolbar toolbar = this.mToolbarWeakReference.get();
        if (collapsingToolbarLayout != null && toolbar != null) {
            super.onDestinationChanged(controller, destination, bundle);
        } else {
            controller.removeOnDestinationChangedListener(this);
        }
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    protected void setNavigationIcon(@h Drawable drawable, @StringRes int i4) {
        Toolbar toolbar = this.mToolbarWeakReference.get();
        if (toolbar != null) {
            boolean z9 = drawable == null && toolbar.getNavigationIcon() != null;
            toolbar.setNavigationIcon(drawable);
            toolbar.setNavigationContentDescription(i4);
            if (z9) {
                TransitionManager.beginDelayedTransition(toolbar);
            }
        }
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    protected void setTitle(@h CharSequence charSequence) {
        CollapsingToolbarLayout collapsingToolbarLayout = this.mCollapsingToolbarLayoutWeakReference.get();
        if (collapsingToolbarLayout != null) {
            collapsingToolbarLayout.setTitle(charSequence);
        }
    }
}
