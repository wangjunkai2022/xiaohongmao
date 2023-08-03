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

/* compiled from: PopupWindowConversationMemberBinding.java */
/* loaded from: classes3.dex */
public final class d2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65478a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f65479b;

    private d2(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView) {
        this.f65478a = linearLayout;
        this.f65479b = recyclerView;
    }

    @NonNull
    public static d2 a(@NonNull View view) {
        int i4 = b.j.zc;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
        if (recyclerView != null) {
            return new d2((LinearLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static d2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.J3, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65478a;
    }
}
