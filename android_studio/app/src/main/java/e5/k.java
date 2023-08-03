package e5;

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
import com.didi.live.spring.R;

/* compiled from: ActivitySplashBinding.java */
/* loaded from: classes3.dex */
public final class k implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62618a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final q3 f62619b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62620c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62621d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62622e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f62623f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ProgressBar f62624g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62625h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ConstraintLayout f62626i;

    private k(@NonNull ConstraintLayout constraintLayout, @NonNull q3 q3Var, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout2) {
        this.f62618a = constraintLayout;
        this.f62619b = q3Var;
        this.f62620c = imageView;
        this.f62621d = imageView2;
        this.f62622e = imageView3;
        this.f62623f = imageView4;
        this.f62624g = progressBar;
        this.f62625h = textView;
        this.f62626i = constraintLayout2;
    }

    @NonNull
    public static k a(@NonNull View view) {
        int i4 = R.id.ad;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.ad);
        if (findChildViewById != null) {
            q3 a10 = q3.a(findChildViewById);
            i4 = R.id.il_main;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.il_main);
            if (imageView != null) {
                i4 = R.id.im_txt_main;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.im_txt_main);
                if (imageView2 != null) {
                    i4 = R.id.im_txt_secondary;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.im_txt_secondary);
                    if (imageView3 != null) {
                        i4 = R.id.logo;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.logo);
                        if (imageView4 != null) {
                            i4 = R.id.progress;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress);
                            if (progressBar != null) {
                                i4 = R.id.progress_text;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.progress_text);
                                if (textView != null) {
                                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                    return new k(constraintLayout, a10, imageView, imageView2, imageView3, imageView4, progressBar, textView, constraintLayout);
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
    public static k c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.activity_splash, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62618a;
    }
}
