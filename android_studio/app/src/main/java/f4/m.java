package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: FragmentChatSelectorBinding.java */
/* loaded from: classes3.dex */
public final class m implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65638a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f65639b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final b2 f65640c;

    private m(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull b2 b2Var) {
        this.f65638a = linearLayout;
        this.f65639b = recyclerView;
        this.f65640c = b2Var;
    }

    @NonNull
    public static m a(@NonNull View view) {
        View findChildViewById;
        int i4 = b.j.ad;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
        if (recyclerView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.Hf))) != null) {
            return new m((LinearLayout) view, recyclerView, b2.a(findChildViewById));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static m c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.C0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65638a;
    }
}
