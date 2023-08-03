package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.GifView;

/* compiled from: GphDynamicTextItemBinding.java */
/* loaded from: classes2.dex */
public final class c implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f68972a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f68973b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GifView f68974c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f68975d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f68976e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f68977f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f68978g;

    private c(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull GifView gifView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout2) {
        this.f68972a = constraintLayout;
        this.f68973b = view;
        this.f68974c = gifView;
        this.f68975d = imageView;
        this.f68976e = linearLayout;
        this.f68977f = textView;
        this.f68978g = constraintLayout2;
    }

    @NonNull
    public static c a(@NonNull View view) {
        int i4 = p.j.f17877f1;
        View findViewById = view.findViewById(i4);
        if (findViewById != null) {
            i4 = p.j.M2;
            GifView gifView = (GifView) view.findViewById(i4);
            if (gifView != null) {
                i4 = p.j.E3;
                ImageView imageView = (ImageView) view.findViewById(i4);
                if (imageView != null) {
                    i4 = p.j.S3;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i4);
                    if (linearLayout != null) {
                        i4 = p.j.T3;
                        TextView textView = (TextView) view.findViewById(i4);
                        if (textView != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                            return new c(constraintLayout, findViewById, gifView, imageView, linearLayout, textView, constraintLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static c c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18089f0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f68972a;
    }
}
