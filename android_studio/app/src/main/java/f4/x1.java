package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: LayoutDataUsagePlaceholderBinding.java */
/* loaded from: classes3.dex */
public final class x1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65844a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f65845b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f65846c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65847d;

    private x1(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65844a = constraintLayout;
        this.f65845b = button;
        this.f65846c = textView;
        this.f65847d = textView2;
    }

    @NonNull
    public static x1 a(@NonNull View view) {
        int i4 = b.j.V1;
        Button button = (Button) ViewBindings.findChildViewById(view, i4);
        if (button != null) {
            i4 = b.j.Bg;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
            if (textView != null) {
                i4 = b.j.Cg;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView2 != null) {
                    return new x1((ConstraintLayout) view, button, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static x1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2148u2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65844a;
    }
}
