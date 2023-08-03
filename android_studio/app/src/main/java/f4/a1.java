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

/* compiled from: ItemChatDetailsVideoOtherBinding.java */
/* loaded from: classes3.dex */
public final class a1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65408a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65409b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CardView f65410c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65411d;

    private a1(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull CardView cardView, @NonNull TextView textView) {
        this.f65408a = constraintLayout;
        this.f65409b = constraintLayout2;
        this.f65410c = cardView;
        this.f65411d = textView;
    }

    @NonNull
    public static a1 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.wa;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i4);
        if (cardView != null) {
            i4 = b.j.hg;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
            if (textView != null) {
                return new a1(constraintLayout, constraintLayout, cardView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static a1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.X1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65408a;
    }
}
