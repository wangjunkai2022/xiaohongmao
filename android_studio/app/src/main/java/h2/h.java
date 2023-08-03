package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.airbnb.lottie.LottieAnimationView;
import com.giphy.sdk.ui.p;

/* compiled from: GphNetworkStateItemBinding.java */
/* loaded from: classes2.dex */
public final class h implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f68985a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f68986b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LottieAnimationView f68987c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f68988d;

    private h(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull LottieAnimationView lottieAnimationView, @NonNull Button button) {
        this.f68985a = constraintLayout;
        this.f68986b = textView;
        this.f68987c = lottieAnimationView;
        this.f68988d = button;
    }

    @NonNull
    public static h a(@NonNull View view) {
        int i4 = p.j.f17906j1;
        TextView textView = (TextView) view.findViewById(i4);
        if (textView != null) {
            i4 = p.j.F3;
            LottieAnimationView lottieAnimationView = (LottieAnimationView) view.findViewById(i4);
            if (lottieAnimationView != null) {
                i4 = p.j.O4;
                Button button = (Button) view.findViewById(i4);
                if (button != null) {
                    return new h((ConstraintLayout) view, textView, lottieAnimationView, button);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static h c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18104k0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f68985a;
    }
}
