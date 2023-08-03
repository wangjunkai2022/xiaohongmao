package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemChatDetailsStickerOtherBinding.java */
/* loaded from: classes3.dex */
public final class t0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65755a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65756b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65757c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f65758d;

    private t0(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout3) {
        this.f65755a = constraintLayout;
        this.f65756b = constraintLayout2;
        this.f65757c = imageView;
        this.f65758d = constraintLayout3;
    }

    @NonNull
    public static t0 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.X8;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
        if (imageView != null) {
            i4 = b.j.wa;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i4);
            if (constraintLayout2 != null) {
                return new t0(constraintLayout, constraintLayout, imageView, constraintLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static t0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.Q1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65755a;
    }
}
