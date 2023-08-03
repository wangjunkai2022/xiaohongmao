package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: FragmentChatDetailsBottomToolsBinding.java */
/* loaded from: classes3.dex */
public final class j implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65583a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f65584b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f65585c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f65586d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f65587e;

    private j(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.f65583a = constraintLayout;
        this.f65584b = imageView;
        this.f65585c = linearLayout;
        this.f65586d = linearLayout2;
        this.f65587e = linearLayout3;
    }

    @NonNull
    public static j a(@NonNull View view) {
        int i4 = b.j.T8;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
        if (imageView != null) {
            i4 = b.j.A9;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i4);
            if (linearLayout != null) {
                i4 = b.j.C9;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                if (linearLayout2 != null) {
                    i4 = b.j.H9;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                    if (linearLayout3 != null) {
                        return new j((ConstraintLayout) view, imageView, linearLayout, linearLayout2, linearLayout3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static j c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2176z0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65583a;
    }
}
