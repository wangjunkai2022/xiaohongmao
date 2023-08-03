package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: FragmentContactListBinding.java */
/* loaded from: classes3.dex */
public final class o implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65662a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f65663b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f65664c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f65665d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SearchView f65666e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Toolbar f65667f;

    private o(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView, @NonNull SearchView searchView, @NonNull Toolbar toolbar) {
        this.f65662a = constraintLayout;
        this.f65663b = textView;
        this.f65664c = frameLayout;
        this.f65665d = recyclerView;
        this.f65666e = searchView;
        this.f65667f = toolbar;
    }

    @NonNull
    public static o a(@NonNull View view) {
        int i4 = b.j.f1806h5;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
        if (textView != null) {
            i4 = b.j.O6;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
            if (frameLayout != null) {
                i4 = b.j.cd;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
                if (recyclerView != null) {
                    i4 = b.j.Qe;
                    SearchView searchView = (SearchView) ViewBindings.findChildViewById(view, i4);
                    if (searchView != null) {
                        i4 = b.j.Hf;
                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i4);
                        if (toolbar != null) {
                            return new o((ConstraintLayout) view, textView, frameLayout, recyclerView, searchView, toolbar);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static o c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.E0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65662a;
    }
}
