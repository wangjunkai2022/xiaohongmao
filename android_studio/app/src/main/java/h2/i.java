package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;

/* compiled from: GphNoContentItemBinding.java */
/* loaded from: classes2.dex */
public final class i implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f68989a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f68990b;

    private i(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView) {
        this.f68989a = constraintLayout;
        this.f68990b = textView;
    }

    @NonNull
    public static i a(@NonNull View view) {
        int i4 = p.j.f17906j1;
        TextView textView = (TextView) view.findViewById(i4);
        if (textView != null) {
            return new i((ConstraintLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static i c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18107l0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f68989a;
    }
}
