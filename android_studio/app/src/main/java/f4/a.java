package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import b4.b;
import java.util.Objects;

/* compiled from: ActivityChatBinding.java */
/* loaded from: classes3.dex */
public final class a implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65404a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65405b;

    private a(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2) {
        this.f65404a = constraintLayout;
        this.f65405b = constraintLayout2;
    }

    @NonNull
    public static a a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        return new a(constraintLayout, constraintLayout);
    }

    @NonNull
    public static a c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.C, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65404a;
    }
}
