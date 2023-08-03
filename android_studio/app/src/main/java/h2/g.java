package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import java.util.Objects;

/* compiled from: GphMediaTypeViewBinding.java */
/* loaded from: classes2.dex */
public final class g implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f68984a;

    private g(@NonNull View view) {
        this.f68984a = view;
    }

    @NonNull
    public static g a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new g(view);
    }

    @NonNull
    public static g b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(p.m.f18101j0, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f68984a;
    }
}
