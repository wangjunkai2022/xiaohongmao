package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.universallist.SmartGridRecyclerView;

/* compiled from: GphGridFragmentBinding.java */
/* loaded from: classes2.dex */
public final class d implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f68979a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SmartGridRecyclerView f68980b;

    private d(@NonNull FrameLayout frameLayout, @NonNull SmartGridRecyclerView smartGridRecyclerView) {
        this.f68979a = frameLayout;
        this.f68980b = smartGridRecyclerView;
    }

    @NonNull
    public static d a(@NonNull View view) {
        int i4 = p.j.N2;
        SmartGridRecyclerView smartGridRecyclerView = (SmartGridRecyclerView) view.findViewById(i4);
        if (smartGridRecyclerView != null) {
            return new d((FrameLayout) view, smartGridRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static d c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18092g0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f68979a;
    }
}
