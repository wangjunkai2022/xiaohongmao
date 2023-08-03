package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import b4.b;
import java.util.Objects;

/* compiled from: ItemChatDetailsLocationMeBinding.java */
/* loaded from: classes3.dex */
public final class m0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65641a;

    private m0(@NonNull LinearLayout linearLayout) {
        this.f65641a = linearLayout;
    }

    @NonNull
    public static m0 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new m0((LinearLayout) view);
    }

    @NonNull
    public static m0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.J1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65641a;
    }
}
