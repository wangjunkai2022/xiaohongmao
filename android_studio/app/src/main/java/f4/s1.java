package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemStorageUsageBinding.java */
/* loaded from: classes3.dex */
public final class s1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65749a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CheckBox f65750b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f65751c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65752d;

    private s1(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65749a = linearLayout;
        this.f65750b = checkBox;
        this.f65751c = textView;
        this.f65752d = textView2;
    }

    @NonNull
    public static s1 a(@NonNull View view) {
        int i4 = b.j.f1753c3;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, i4);
        if (checkBox != null) {
            i4 = b.j.tg;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
            if (textView != null) {
                i4 = b.j.Rg;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView2 != null) {
                    return new s1((LinearLayout) view, checkBox, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static s1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2118p2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65749a;
    }
}
