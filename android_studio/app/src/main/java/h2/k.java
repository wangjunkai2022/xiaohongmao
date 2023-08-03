package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.GiphySearchBar;

/* compiled from: GphSearchFragmentBinding.java */
/* loaded from: classes2.dex */
public final class k implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f68995a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f68996b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GiphySearchBar f68997c;

    private k(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull GiphySearchBar giphySearchBar) {
        this.f68995a = constraintLayout;
        this.f68996b = constraintLayout2;
        this.f68997c = giphySearchBar;
    }

    @NonNull
    public static k a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = p.j.f17873e5;
        GiphySearchBar giphySearchBar = (GiphySearchBar) view.findViewById(i4);
        if (giphySearchBar != null) {
            return new k((ConstraintLayout) view, constraintLayout, giphySearchBar);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static k c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18113n0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f68995a;
    }
}
