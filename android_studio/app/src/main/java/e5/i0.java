package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.wang.avi.AVLoadingIndicatorView;

/* compiled from: DialogRecaptchaBinding.java */
/* loaded from: classes3.dex */
public final class i0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62527a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AVLoadingIndicatorView f62528b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final WebView f62529c;

    private i0(@NonNull RelativeLayout relativeLayout, @NonNull AVLoadingIndicatorView aVLoadingIndicatorView, @NonNull WebView webView) {
        this.f62527a = relativeLayout;
        this.f62528b = aVLoadingIndicatorView;
        this.f62529c = webView;
    }

    @NonNull
    public static i0 a(@NonNull View view) {
        int i4 = R.id.progress;
        AVLoadingIndicatorView aVLoadingIndicatorView = (AVLoadingIndicatorView) ViewBindings.findChildViewById(view, R.id.progress);
        if (aVLoadingIndicatorView != null) {
            i4 = R.id.webview;
            WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.webview);
            if (webView != null) {
                return new i0((RelativeLayout) view, aVLoadingIndicatorView, webView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static i0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_recaptcha, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62527a;
    }
}
