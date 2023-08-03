package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.opensource.svgaplayer.SVGAImageView;
import com.qennnsad.aknkaksd.presentation.ui.room.view.PeerageLoginView;

/* compiled from: FragmentSimpleWebviewBinding.java */
/* loaded from: classes3.dex */
public final class x1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f63302a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f63303b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ProgressBar f63304c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PeerageLoginView f63305d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Toolbar f63306e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f63307f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageButton f63308g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f63309h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SVGAImageView f63310i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final WebView f63311j;

    private x1(@NonNull RelativeLayout relativeLayout, @NonNull ImageButton imageButton, @NonNull ProgressBar progressBar, @NonNull PeerageLoginView peerageLoginView, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull ImageButton imageButton2, @NonNull TextView textView2, @NonNull SVGAImageView sVGAImageView, @NonNull WebView webView) {
        this.f63302a = relativeLayout;
        this.f63303b = imageButton;
        this.f63304c = progressBar;
        this.f63305d = peerageLoginView;
        this.f63306e = toolbar;
        this.f63307f = textView;
        this.f63308g = imageButton2;
        this.f63309h = textView2;
        this.f63310i = sVGAImageView;
        this.f63311j = webView;
    }

    @NonNull
    public static x1 a(@NonNull View view) {
        int i4 = R.id.imgbtn_toolbar_back;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
        if (imageButton != null) {
            i4 = R.id.progress_bar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress_bar);
            if (progressBar != null) {
                i4 = R.id.simple_peerage_info;
                PeerageLoginView peerageLoginView = (PeerageLoginView) ViewBindings.findChildViewById(view, R.id.simple_peerage_info);
                if (peerageLoginView != null) {
                    i4 = R.id.toolbar;
                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                    if (toolbar != null) {
                        i4 = R.id.toolbar_close;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.toolbar_close);
                        if (textView != null) {
                            i4 = R.id.toolbar_refresh;
                            ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, R.id.toolbar_refresh);
                            if (imageButton2 != null) {
                                i4 = R.id.tv_toolbar_title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                                if (textView2 != null) {
                                    i4 = R.id.web_svga;
                                    SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.web_svga);
                                    if (sVGAImageView != null) {
                                        i4 = R.id.webview;
                                        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.webview);
                                        if (webView != null) {
                                            return new x1((RelativeLayout) view, imageButton, progressBar, peerageLoginView, toolbar, textView, imageButton2, textView2, sVGAImageView, webView);
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
    public static x1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_simple_webview, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f63302a;
    }
}
