package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: LayoutChatDetailsAudioTopBinding.java */
/* loaded from: classes3.dex */
public final class u1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65781a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f65782b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65783c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65784d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65785e;

    private u1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65781a = constraintLayout;
        this.f65782b = imageView;
        this.f65783c = imageView2;
        this.f65784d = textView;
        this.f65785e = textView2;
    }

    @NonNull
    public static u1 a(@NonNull View view) {
        int i4 = b.j.f1730a2;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
        if (imageView != null) {
            i4 = b.j.f1887p2;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView2 != null) {
                i4 = b.j.Xf;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.Yf;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        return new u1((ConstraintLayout) view, imageView, imageView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static u1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2130r2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65781a;
    }
}
