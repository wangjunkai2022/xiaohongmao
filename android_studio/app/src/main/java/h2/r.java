package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.airbnb.lottie.LottieAnimationView;
import com.giphy.sdk.ui.p;
import com.google.android.exoplayer2.ui.DefaultTimeBar;
import java.util.Objects;

/* compiled from: GphVideoControlsViewBinding.java */
/* loaded from: classes2.dex */
public final class r implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f69045a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f69046b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LottieAnimationView f69047c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final DefaultTimeBar f69048d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LottieAnimationView f69049e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f69050f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageButton f69051g;

    private r(@NonNull View view, @NonNull ConstraintLayout constraintLayout, @NonNull LottieAnimationView lottieAnimationView, @NonNull DefaultTimeBar defaultTimeBar, @NonNull LottieAnimationView lottieAnimationView2, @NonNull View view2, @NonNull ImageButton imageButton) {
        this.f69045a = view;
        this.f69046b = constraintLayout;
        this.f69047c = lottieAnimationView;
        this.f69048d = defaultTimeBar;
        this.f69049e = lottieAnimationView2;
        this.f69050f = view2;
        this.f69051g = imageButton;
    }

    @NonNull
    public static r a(@NonNull View view) {
        View findViewById;
        int i4 = p.j.O0;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i4);
        if (constraintLayout != null) {
            i4 = p.j.f18026y2;
            LottieAnimationView lottieAnimationView = (LottieAnimationView) view.findViewById(i4);
            if (lottieAnimationView != null) {
                i4 = p.j.I4;
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view.findViewById(i4);
                if (defaultTimeBar != null) {
                    i4 = p.j.Q4;
                    LottieAnimationView lottieAnimationView2 = (LottieAnimationView) view.findViewById(i4);
                    if (lottieAnimationView2 != null && (findViewById = view.findViewById((i4 = p.j.f17965q5))) != null) {
                        i4 = p.j.B5;
                        ImageButton imageButton = (ImageButton) view.findViewById(i4);
                        if (imageButton != null) {
                            return new r(view, constraintLayout, lottieAnimationView, defaultTimeBar, lottieAnimationView2, findViewById, imageButton);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static r b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(p.m.f18134u0, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f69045a;
    }
}
