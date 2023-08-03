package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: FragmentChooseChatTypeBinding.java */
/* loaded from: classes3.dex */
public final class n implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65649a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f65650b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f65651c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f65652d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f65653e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Toolbar f65654f;

    private n(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull Toolbar toolbar) {
        this.f65649a = linearLayout;
        this.f65650b = recyclerView;
        this.f65651c = linearLayout2;
        this.f65652d = linearLayout3;
        this.f65653e = linearLayout4;
        this.f65654f = toolbar;
    }

    @NonNull
    public static n a(@NonNull View view) {
        int i4 = b.j.Z2;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
        if (recyclerView != null) {
            i4 = b.j.B9;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i4);
            if (linearLayout != null) {
                i4 = b.j.D9;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                if (linearLayout2 != null) {
                    i4 = b.j.K9;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                    if (linearLayout3 != null) {
                        i4 = b.j.Hf;
                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i4);
                        if (toolbar != null) {
                            return new n((LinearLayout) view, recyclerView, linearLayout, linearLayout2, linearLayout3, toolbar);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static n c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.D0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65649a;
    }
}
