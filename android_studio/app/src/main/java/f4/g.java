package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: DialogSetUserNameMaskBinding.java */
/* loaded from: classes3.dex */
public final class g implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65507a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f65508b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f65509c;

    private g(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText) {
        this.f65507a = linearLayout;
        this.f65508b = textView;
        this.f65509c = editText;
    }

    @NonNull
    public static g a(@NonNull View view) {
        int i4 = b.j.f1989z4;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
        if (textView != null) {
            i4 = b.j.f1940u5;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, i4);
            if (editText != null) {
                return new g((LinearLayout) view, textView, editText);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static g c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2071h0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65507a;
    }
}
