package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.universallist.SmartGridRecyclerView;
import java.util.Objects;

/* compiled from: GphGridViewBinding.java */
/* loaded from: classes2.dex */
public final class e implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f68981a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SmartGridRecyclerView f68982b;

    private e(@NonNull View view, @NonNull SmartGridRecyclerView smartGridRecyclerView) {
        this.f68981a = view;
        this.f68982b = smartGridRecyclerView;
    }

    @NonNull
    public static e a(@NonNull View view) {
        int i4 = p.j.N2;
        SmartGridRecyclerView smartGridRecyclerView = (SmartGridRecyclerView) view.findViewById(i4);
        if (smartGridRecyclerView != null) {
            return new e(view, smartGridRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static e b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(p.m.f18095h0, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f68981a;
    }
}
