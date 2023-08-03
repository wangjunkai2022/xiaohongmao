package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import b4.b;
import java.util.Objects;

/* compiled from: LayoutToolbarUserProfileBinding.java */
/* loaded from: classes3.dex */
public final class c2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Toolbar f65458a;

    private c2(@NonNull Toolbar toolbar) {
        this.f65458a = toolbar;
    }

    @NonNull
    public static c2 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new c2((Toolbar) view);
    }

    @NonNull
    public static c2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2178z2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public Toolbar getRoot() {
        return this.f65458a;
    }
}
