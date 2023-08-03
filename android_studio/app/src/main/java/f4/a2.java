package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: LayoutToolbarGroupManagerBinding.java */
/* loaded from: classes3.dex */
public final class a2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Toolbar f65412a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f65413b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65414c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f65415d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f65416e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65417f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65418g;

    private a2(@NonNull Toolbar toolbar, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65412a = toolbar;
        this.f65413b = frameLayout;
        this.f65414c = imageView;
        this.f65415d = progressBar;
        this.f65416e = constraintLayout;
        this.f65417f = textView;
        this.f65418g = textView2;
    }

    @NonNull
    public static a2 a(@NonNull View view) {
        int i4 = b.j.L6;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
        if (frameLayout != null) {
            i4 = b.j.f1779e9;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.f1790f9;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                if (progressBar != null) {
                    i4 = b.j.If;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i4);
                    if (constraintLayout != null) {
                        i4 = b.j.Ug;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView != null) {
                            i4 = b.j.Vg;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                            if (textView2 != null) {
                                return new a2((Toolbar) view, frameLayout, imageView, progressBar, constraintLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static a2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2166x2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public Toolbar getRoot() {
        return this.f65412a;
    }
}
