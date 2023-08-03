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
import com.google.android.exoplayer2.ui.DefaultTimeBar;

/* compiled from: VideoControllerLayoutBinding.java */
/* loaded from: classes3.dex */
public final class e2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f65489a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f65490b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65491c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f65492d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65493e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final DefaultTimeBar f65494f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f65495g;

    private e2(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull DefaultTimeBar defaultTimeBar, @NonNull ConstraintLayout constraintLayout) {
        this.f65489a = frameLayout;
        this.f65490b = textView;
        this.f65491c = imageView;
        this.f65492d = imageView2;
        this.f65493e = textView2;
        this.f65494f = defaultTimeBar;
        this.f65495g = constraintLayout;
    }

    @NonNull
    public static e2 a(@NonNull View view) {
        int i4 = b.j.I5;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
        if (textView != null) {
            i4 = b.j.X5;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.Y5;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i4);
                if (imageView2 != null) {
                    i4 = b.j.f1745b6;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        i4 = b.j.f1766d6;
                        DefaultTimeBar defaultTimeBar = (DefaultTimeBar) ViewBindings.findChildViewById(view, i4);
                        if (defaultTimeBar != null) {
                            i4 = b.j.p9;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i4);
                            if (constraintLayout != null) {
                                return new e2((FrameLayout) view, textView, imageView, imageView2, textView2, defaultTimeBar, constraintLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static e2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.C4, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f65489a;
    }
}
