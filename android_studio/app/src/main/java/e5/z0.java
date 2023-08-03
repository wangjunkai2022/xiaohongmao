package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.wang.avi.AVLoadingIndicatorView;

/* compiled from: FragmentCasinoTrampolineBinding.java */
/* loaded from: classes3.dex */
public final class z0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f63390a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AVLoadingIndicatorView f63391b;

    private z0(@NonNull FrameLayout frameLayout, @NonNull AVLoadingIndicatorView aVLoadingIndicatorView) {
        this.f63390a = frameLayout;
        this.f63391b = aVLoadingIndicatorView;
    }

    @NonNull
    public static z0 a(@NonNull View view) {
        AVLoadingIndicatorView aVLoadingIndicatorView = (AVLoadingIndicatorView) ViewBindings.findChildViewById(view, R.id.trampoline_progress);
        if (aVLoadingIndicatorView != null) {
            return new z0((FrameLayout) view, aVLoadingIndicatorView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.trampoline_progress)));
    }

    @NonNull
    public static z0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_casino_trampoline, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f63390a;
    }
}
