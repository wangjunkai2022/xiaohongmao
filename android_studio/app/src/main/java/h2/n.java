package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import java.util.Objects;

/* compiled from: GphSuggestionsViewBinding.java */
/* loaded from: classes2.dex */
public final class n implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f69007a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f69008b;

    private n(@NonNull View view, @NonNull RecyclerView recyclerView) {
        this.f69007a = view;
        this.f69008b = recyclerView;
    }

    @NonNull
    public static n a(@NonNull View view) {
        int i4 = p.j.M4;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i4);
        if (recyclerView != null) {
            return new n(view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static n b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(p.m.f18122q0, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f69007a;
    }
}
