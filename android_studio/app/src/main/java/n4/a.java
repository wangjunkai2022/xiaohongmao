package n4;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: RootViewDeferringInsetsCallback.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0011¢\u0006\u0004\b\u0018\u0010\u0019J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016J\u001e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\rH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016R\u0017\u0010\u0012\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015¨\u0006\u001a"}, d2 = {"Ln4/a;", "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;", "Landroidx/core/view/OnApplyWindowInsetsListener;", "Landroid/view/View;", "v", "Landroidx/core/view/WindowInsetsCompat;", "windowInsets", "onApplyWindowInsets", "Landroidx/core/view/WindowInsetsAnimationCompat;", "animation", "", "onPrepare", "insets", "", "runningAnims", "onProgress", "onEnd", "", "persistentInsetTypes", "I", "b", "()I", "deferredInsetTypes", "a", "<init>", "(II)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends WindowInsetsAnimationCompat.Callback implements OnApplyWindowInsetsListener {

    /* renamed from: a  reason: collision with root package name */
    private final int f89925a;

    /* renamed from: b  reason: collision with root package name */
    private final int f89926b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private View f89927c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private WindowInsetsCompat f89928d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f89929e;

    public a(int i4, int i10) {
        super(1);
        this.f89925a = i4;
        this.f89926b = i10;
        if (!((i4 & i10) == 0)) {
            throw new IllegalArgumentException("persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values".toString());
        }
    }

    public final int a() {
        return this.f89926b;
    }

    public final int b() {
        return this.f89925a;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    @g
    public WindowInsetsCompat onApplyWindowInsets(@g View v9, @g WindowInsetsCompat windowInsets) {
        Intrinsics.checkNotNullParameter(v9, "v");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        this.f89927c = v9;
        this.f89928d = windowInsets;
        Insets insets = windowInsets.getInsets(this.f89929e ? this.f89925a : this.f89925a | this.f89926b);
        Intrinsics.checkNotNullExpressionValue(insets, "windowInsets.getInsets(types)");
        v9.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        return windowInsets;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onEnd(@g WindowInsetsAnimationCompat animation) {
        View view;
        Intrinsics.checkNotNullParameter(animation, "animation");
        if (!this.f89929e || (animation.getTypeMask() & this.f89926b) == 0) {
            return;
        }
        this.f89929e = false;
        if (this.f89928d == null || (view = this.f89927c) == null) {
            return;
        }
        Intrinsics.checkNotNull(view);
        WindowInsetsCompat windowInsetsCompat = this.f89928d;
        Intrinsics.checkNotNull(windowInsetsCompat);
        ViewCompat.dispatchApplyWindowInsets(view, windowInsetsCompat);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onPrepare(@g WindowInsetsAnimationCompat animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        if ((animation.getTypeMask() & this.f89926b) != 0) {
            this.f89929e = true;
        }
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    @g
    public WindowInsetsCompat onProgress(@g WindowInsetsCompat insets, @g List<WindowInsetsAnimationCompat> runningAnims) {
        Intrinsics.checkNotNullParameter(insets, "insets");
        Intrinsics.checkNotNullParameter(runningAnims, "runningAnims");
        return insets;
    }
}
