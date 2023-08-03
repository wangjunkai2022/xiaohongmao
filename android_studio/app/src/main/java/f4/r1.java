package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemPopupWindowChatMemberBinding.java */
/* loaded from: classes3.dex */
public final class r1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65724a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f65725b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f65726c;

    private r1(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65724a = linearLayout;
        this.f65725b = textView;
        this.f65726c = textView2;
    }

    @NonNull
    public static r1 a(@NonNull View view) {
        int i4 = b.j.sg;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
        if (textView != null) {
            i4 = b.j.zg;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
            if (textView2 != null) {
                return new r1((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static r1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2112o2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65724a;
    }
}
