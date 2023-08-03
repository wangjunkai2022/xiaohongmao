package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemMediagroupVideoCellBinding.java */
/* loaded from: classes3.dex */
public final class p1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65692a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f65693b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final q0 f65694c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f65695d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ProgressBar f65696e;

    private p1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull q0 q0Var, @NonNull ConstraintLayout constraintLayout2, @NonNull ProgressBar progressBar) {
        this.f65692a = constraintLayout;
        this.f65693b = imageButton;
        this.f65694c = q0Var;
        this.f65695d = constraintLayout2;
        this.f65696e = progressBar;
    }

    @NonNull
    public static p1 a(@NonNull View view) {
        View findChildViewById;
        int i4 = b.j.f1794g2;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i4);
        if (imageButton != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.L2))) != null) {
            q0 a10 = q0.a(findChildViewById);
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i4 = b.j.rc;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
            if (progressBar != null) {
                return new p1(constraintLayout, imageButton, a10, constraintLayout, progressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static p1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2100m2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65692a;
    }
}
