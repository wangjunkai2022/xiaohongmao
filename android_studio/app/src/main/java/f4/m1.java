package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemHistoryVideoBinding.java */
/* loaded from: classes3.dex */
public final class m1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65642a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65643b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65644c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f65645d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f65646e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65647f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65648g;

    private m1(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65642a = constraintLayout;
        this.f65643b = constraintLayout2;
        this.f65644c = imageView;
        this.f65645d = progressBar;
        this.f65646e = imageView2;
        this.f65647f = textView;
        this.f65648g = textView2;
    }

    @NonNull
    public static m1 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.X8;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
        if (imageView != null) {
            i4 = b.j.Wb;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
            if (progressBar != null) {
                i4 = b.j.Ge;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i4);
                if (imageView2 != null) {
                    i4 = b.j.gg;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView != null) {
                        i4 = b.j.Sg;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView2 != null) {
                            return new m1(constraintLayout, constraintLayout, imageView, progressBar, imageView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static m1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2083j2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65642a;
    }
}
