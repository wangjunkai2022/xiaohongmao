package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemChatDetailsVideoMeBinding.java */
/* loaded from: classes3.dex */
public final class z0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65876a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65877b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CardView f65878c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65879d;

    private z0(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull CardView cardView, @NonNull TextView textView) {
        this.f65876a = constraintLayout;
        this.f65877b = constraintLayout2;
        this.f65878c = cardView;
        this.f65879d = textView;
    }

    @NonNull
    public static z0 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.wa;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i4);
        if (cardView != null) {
            i4 = b.j.hg;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
            if (textView != null) {
                return new z0(constraintLayout, constraintLayout, cardView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static z0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.W1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65876a;
    }
}
