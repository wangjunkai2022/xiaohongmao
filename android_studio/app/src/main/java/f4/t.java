package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: FragmentHistoryTabBinding.java */
/* loaded from: classes3.dex */
public final class t implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f65753a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f65754b;

    private t(@NonNull RelativeLayout relativeLayout, @NonNull RecyclerView recyclerView) {
        this.f65753a = relativeLayout;
        this.f65754b = recyclerView;
    }

    @NonNull
    public static t a(@NonNull View view) {
        int i4 = b.j.Ac;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
        if (recyclerView != null) {
            return new t((RelativeLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static t c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.U0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f65753a;
    }
}
