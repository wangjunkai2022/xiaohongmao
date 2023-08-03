package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import java.util.Objects;

/* compiled from: ActivityFragmentContainerBinding.java */
/* loaded from: classes3.dex */
public final class f implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FragmentContainerView f62366a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FragmentContainerView f62367b;

    private f(@NonNull FragmentContainerView fragmentContainerView, @NonNull FragmentContainerView fragmentContainerView2) {
        this.f62366a = fragmentContainerView;
        this.f62367b = fragmentContainerView2;
    }

    @NonNull
    public static f a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        FragmentContainerView fragmentContainerView = (FragmentContainerView) view;
        return new f(fragmentContainerView, fragmentContainerView);
    }

    @NonNull
    public static f c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.activity_fragment_container, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FragmentContainerView getRoot() {
        return this.f62366a;
    }
}
