package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: HeaderLayoutMainBinding.java */
/* loaded from: classes3.dex */
public final class x implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65837a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f65838b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65839c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65840d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65841e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65842f;

    private x(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f65837a = linearLayout;
        this.f65838b = frameLayout;
        this.f65839c = imageView;
        this.f65840d = textView;
        this.f65841e = textView2;
        this.f65842f = textView3;
    }

    @NonNull
    public static x a(@NonNull View view) {
        int i4 = b.j.L6;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
        if (frameLayout != null) {
            i4 = b.j.U8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.ag;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.zg;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        i4 = b.j.Dg;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView3 != null) {
                            return new x((LinearLayout) view, frameLayout, imageView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static x c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2135s1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65837a;
    }
}
