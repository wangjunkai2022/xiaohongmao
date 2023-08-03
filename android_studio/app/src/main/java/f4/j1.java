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

/* compiled from: ItemHistoryFileBinding.java */
/* loaded from: classes3.dex */
public final class j1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65591a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65592b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65593c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f65594d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65595e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65596f;

    private j1(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65591a = constraintLayout;
        this.f65592b = constraintLayout2;
        this.f65593c = imageView;
        this.f65594d = progressBar;
        this.f65595e = textView;
        this.f65596f = textView2;
    }

    @NonNull
    public static j1 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.Q8;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
        if (imageView != null) {
            i4 = b.j.Wb;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
            if (progressBar != null) {
                i4 = b.j.jg;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.kg;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        return new j1(constraintLayout, constraintLayout, imageView, progressBar, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static j1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2068g2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65591a;
    }
}
