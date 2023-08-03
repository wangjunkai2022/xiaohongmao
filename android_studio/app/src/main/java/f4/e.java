package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: DialogAddMemberBinding.java */
/* loaded from: classes3.dex */
public final class e implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65480a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f65481b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f65482c;

    private e(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull EditText editText) {
        this.f65480a = linearLayout;
        this.f65481b = button;
        this.f65482c = editText;
    }

    @NonNull
    public static e a(@NonNull View view) {
        int i4 = b.j.W1;
        Button button = (Button) ViewBindings.findChildViewById(view, i4);
        if (button != null) {
            i4 = b.j.f1910r5;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, i4);
            if (editText != null) {
                return new e((LinearLayout) view, button, editText);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static e c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2055e0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65480a;
    }
}
