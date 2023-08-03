package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentMallBinding.java */
/* loaded from: classes3.dex */
public final class l1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62689a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Group f62690b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f62691c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageButton f62692d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f62693e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62694f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Toolbar f62695g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageButton f62696h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62697i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final WebView f62698j;

    private l1(@NonNull ConstraintLayout constraintLayout, @NonNull Group group, @NonNull View view, @NonNull ImageButton imageButton, @NonNull Button button, @NonNull TextView textView, @NonNull Toolbar toolbar, @NonNull ImageButton imageButton2, @NonNull TextView textView2, @NonNull WebView webView) {
        this.f62689a = constraintLayout;
        this.f62690b = group;
        this.f62691c = view;
        this.f62692d = imageButton;
        this.f62693e = button;
        this.f62694f = textView;
        this.f62695g = toolbar;
        this.f62696h = imageButton2;
        this.f62697i = textView2;
        this.f62698j = webView;
    }

    @NonNull
    public static l1 a(@NonNull View view) {
        int i4 = R.id.error;
        Group group = (Group) ViewBindings.findChildViewById(view, R.id.error);
        if (group != null) {
            i4 = R.id.error_bg;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.error_bg);
            if (findChildViewById != null) {
                i4 = R.id.imgbtn_toolbar_back;
                ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
                if (imageButton != null) {
                    i4 = R.id.reload_btn;
                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.reload_btn);
                    if (button != null) {
                        i4 = R.id.reload_tv;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.reload_tv);
                        if (textView != null) {
                            i4 = R.id.toolbar;
                            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (toolbar != null) {
                                i4 = R.id.toolbar_refresh;
                                ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, R.id.toolbar_refresh);
                                if (imageButton2 != null) {
                                    i4 = R.id.tv_toolbar_title;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                                    if (textView2 != null) {
                                        i4 = R.id.webview;
                                        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.webview);
                                        if (webView != null) {
                                            return new l1((ConstraintLayout) view, group, findChildViewById, imageButton, button, textView, toolbar, imageButton2, textView2, webView);
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
    public static l1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_mall, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62689a;
    }
}
