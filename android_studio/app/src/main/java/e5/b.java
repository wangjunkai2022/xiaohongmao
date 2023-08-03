package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ActivityAuthBinding.java */
/* loaded from: classes3.dex */
public final class b implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62257a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FragmentContainerView f62258b;

    private b(@NonNull ConstraintLayout constraintLayout, @NonNull FragmentContainerView fragmentContainerView) {
        this.f62257a = constraintLayout;
        this.f62258b = fragmentContainerView;
    }

    @NonNull
    public static b a(@NonNull View view) {
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.nav_host_fragment);
        if (fragmentContainerView != null) {
            return new b((ConstraintLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.nav_host_fragment)));
    }

    @NonNull
    public static b c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.activity_auth, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62257a;
    }
}
