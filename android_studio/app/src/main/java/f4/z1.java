package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: LayoutToolbarChatDetailsBinding.java */
/* loaded from: classes3.dex */
public final class z1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Toolbar f65880a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f65881b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65882c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f65883d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f65884e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f65885f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f65886g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f65887h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ProgressBar f65888i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SearchView f65889j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ConstraintLayout f65890k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f65891l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f65892m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f65893n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f65894o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f65895p;

    private z1(@NonNull Toolbar toolbar, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ProgressBar progressBar, @NonNull SearchView searchView, @NonNull ConstraintLayout constraintLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f65880a = toolbar;
        this.f65881b = frameLayout;
        this.f65882c = imageView;
        this.f65883d = imageView2;
        this.f65884e = imageView3;
        this.f65885f = imageView4;
        this.f65886g = imageView5;
        this.f65887h = imageView6;
        this.f65888i = progressBar;
        this.f65889j = searchView;
        this.f65890k = constraintLayout;
        this.f65891l = linearLayout;
        this.f65892m = textView;
        this.f65893n = textView2;
        this.f65894o = textView3;
        this.f65895p = textView4;
    }

    @NonNull
    public static z1 a(@NonNull View view) {
        int i4 = b.j.L6;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
        if (frameLayout != null) {
            i4 = b.j.K8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.M8;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i4);
                if (imageView2 != null) {
                    i4 = b.j.N8;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i4);
                    if (imageView3 != null) {
                        i4 = b.j.S8;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i4);
                        if (imageView4 != null) {
                            i4 = b.j.Z8;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i4);
                            if (imageView5 != null) {
                                i4 = b.j.f1779e9;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                if (imageView6 != null) {
                                    i4 = b.j.f1790f9;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                                    if (progressBar != null) {
                                        i4 = b.j.ud;
                                        SearchView searchView = (SearchView) ViewBindings.findChildViewById(view, i4);
                                        if (searchView != null) {
                                            i4 = b.j.If;
                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i4);
                                            if (constraintLayout != null) {
                                                i4 = b.j.Jf;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                                                if (linearLayout != null) {
                                                    i4 = b.j.Ng;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                                                    if (textView != null) {
                                                        i4 = b.j.Ug;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                        if (textView2 != null) {
                                                            i4 = b.j.Vg;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                            if (textView3 != null) {
                                                                i4 = b.j.Wg;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                                if (textView4 != null) {
                                                                    return new z1((Toolbar) view, frameLayout, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, progressBar, searchView, constraintLayout, linearLayout, textView, textView2, textView3, textView4);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static z1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2160w2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public Toolbar getRoot() {
        return this.f65880a;
    }
}
