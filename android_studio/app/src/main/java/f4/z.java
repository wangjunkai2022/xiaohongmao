package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: HeaderLayoutUserprofileBinding.java */
/* loaded from: classes3.dex */
public final class z implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65870a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f65871b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65872c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65873d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65874e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65875f;

    private z(@NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f65870a = constraintLayout;
        this.f65871b = frameLayout;
        this.f65872c = imageView;
        this.f65873d = textView;
        this.f65874e = textView2;
        this.f65875f = textView3;
    }

    @NonNull
    public static z a(@NonNull View view) {
        int i4 = b.j.L6;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
        if (frameLayout != null) {
            i4 = b.j.U8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.ag;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.ug;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        i4 = b.j.Ag;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView3 != null) {
                            return new z((ConstraintLayout) view, frameLayout, imageView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static z c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2147u1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65870a;
    }
}
