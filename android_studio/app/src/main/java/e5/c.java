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

/* compiled from: ActivityChatDetailsBinding.java */
/* loaded from: classes3.dex */
public final class c implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62279a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FragmentContainerView f62280b;

    private c(@NonNull ConstraintLayout constraintLayout, @NonNull FragmentContainerView fragmentContainerView) {
        this.f62279a = constraintLayout;
        this.f62280b = fragmentContainerView;
    }

    @NonNull
    public static c a(@NonNull View view) {
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.fragment_container_view);
        if (fragmentContainerView != null) {
            return new c((ConstraintLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.fragment_container_view)));
    }

    @NonNull
    public static c c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.activity_chat_details, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62279a;
    }
}
