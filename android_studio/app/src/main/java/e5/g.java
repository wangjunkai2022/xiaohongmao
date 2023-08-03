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

/* compiled from: ActivityGuestLinkPhoneNumberBinding.java */
/* loaded from: classes3.dex */
public final class g implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62433a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FragmentContainerView f62434b;

    private g(@NonNull ConstraintLayout constraintLayout, @NonNull FragmentContainerView fragmentContainerView) {
        this.f62433a = constraintLayout;
        this.f62434b = fragmentContainerView;
    }

    @NonNull
    public static g a(@NonNull View view) {
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.nav_host_fragment);
        if (fragmentContainerView != null) {
            return new g((ConstraintLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.nav_host_fragment)));
    }

    @NonNull
    public static g c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.activity_guest_link_phone_number, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62433a;
    }
}
