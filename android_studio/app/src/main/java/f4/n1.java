package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemMediagroupGifCellBinding.java */
/* loaded from: classes3.dex */
public final class n1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65656a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f65657b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final q0 f65658c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f65659d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f65660e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f65661f;

    private n1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull q0 q0Var, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull ProgressBar progressBar) {
        this.f65656a = constraintLayout;
        this.f65657b = imageButton;
        this.f65658c = q0Var;
        this.f65659d = constraintLayout2;
        this.f65660e = imageView;
        this.f65661f = progressBar;
    }

    @NonNull
    public static n1 a(@NonNull View view) {
        View findChildViewById;
        int i4 = b.j.f1794g2;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i4);
        if (imageButton != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.L2))) != null) {
            q0 a10 = q0.a(findChildViewById);
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i4 = b.j.X8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.rc;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                if (progressBar != null) {
                    return new n1(constraintLayout, imageButton, a10, constraintLayout, imageView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static n1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2088k2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65656a;
    }
}
