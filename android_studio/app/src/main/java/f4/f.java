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

/* compiled from: DialogSetUserBioBinding.java */
/* loaded from: classes3.dex */
public final class f implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65496a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f65497b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f65498c;

    private f(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText) {
        this.f65496a = linearLayout;
        this.f65497b = textView;
        this.f65498c = editText;
    }

    @NonNull
    public static f a(@NonNull View view) {
        int i4 = b.j.f1989z4;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
        if (textView != null) {
            i4 = b.j.f1930t5;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, i4);
            if (editText != null) {
                return new f((LinearLayout) view, textView, editText);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static f c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2066g0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65496a;
    }
}
