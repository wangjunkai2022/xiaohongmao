package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogHallPopupBinding.java */
/* loaded from: classes3.dex */
public final class c0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62281a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final WebView f62282b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62283c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f62284d;

    private c0(@NonNull ConstraintLayout constraintLayout, @NonNull WebView webView, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout) {
        this.f62281a = constraintLayout;
        this.f62282b = webView;
        this.f62283c = imageView;
        this.f62284d = relativeLayout;
    }

    @NonNull
    public static c0 a(@NonNull View view) {
        int i4 = R.id.dialog_hall_content_web;
        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.dialog_hall_content_web);
        if (webView != null) {
            i4 = R.id.dialog_hall_iv_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dialog_hall_iv_close);
            if (imageView != null) {
                i4 = R.id.welcome_doalog_content;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.welcome_doalog_content);
                if (relativeLayout != null) {
                    return new c0((ConstraintLayout) view, webView, imageView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static c0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_hall_popup, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62281a;
    }
}
