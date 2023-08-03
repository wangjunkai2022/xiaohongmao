package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemCreateChatAddBinding.java */
/* loaded from: classes3.dex */
public final class e1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65487a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final EditText f65488b;

    private e1(@NonNull LinearLayout linearLayout, @NonNull EditText editText) {
        this.f65487a = linearLayout;
        this.f65488b = editText;
    }

    @NonNull
    public static e1 a(@NonNull View view) {
        int i4 = b.j.f1920s5;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i4);
        if (editText != null) {
            return new e1((LinearLayout) view, editText);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static e1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2040b2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65487a;
    }
}
