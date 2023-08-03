package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemChatDetailsFileMeBinding.java */
/* loaded from: classes3.dex */
public final class i0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65573a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65574b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CardView f65575c;

    private i0(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull CardView cardView) {
        this.f65573a = constraintLayout;
        this.f65574b = constraintLayout2;
        this.f65575c = cardView;
    }

    @NonNull
    public static i0 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.wa;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i4);
        if (cardView != null) {
            return new i0(constraintLayout, constraintLayout, cardView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static i0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.F1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65573a;
    }
}
