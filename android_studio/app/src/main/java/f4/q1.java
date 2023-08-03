package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemNetworkStatisticsBinding.java */
/* loaded from: classes3.dex */
public final class q1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65709a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f65710b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f65711c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65712d;

    private q1(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f65709a = constraintLayout;
        this.f65710b = textView;
        this.f65711c = textView2;
        this.f65712d = textView3;
    }

    @NonNull
    public static q1 a(@NonNull View view) {
        int i4 = b.j.rg;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
        if (textView != null) {
            i4 = b.j.Ig;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
            if (textView2 != null) {
                i4 = b.j.Pg;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView3 != null) {
                    return new q1((ConstraintLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static q1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2106n2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65709a;
    }
}
