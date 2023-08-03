package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentGuestRedirectBinding.java */
/* loaded from: classes3.dex */
public final class i1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62530a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62531b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f62532c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageButton f62533d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62534e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f62535f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f62536g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Toolbar f62537h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62538i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62539j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62540k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62541l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f62542m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f62543n;

    private i1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull ImageButton imageButton, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f62530a = constraintLayout;
        this.f62531b = imageView;
        this.f62532c = button;
        this.f62533d = imageButton;
        this.f62534e = imageView2;
        this.f62535f = imageView3;
        this.f62536g = imageView4;
        this.f62537h = toolbar;
        this.f62538i = textView;
        this.f62539j = textView2;
        this.f62540k = textView3;
        this.f62541l = textView4;
        this.f62542m = textView5;
        this.f62543n = textView6;
    }

    @NonNull
    public static i1 a(@NonNull View view) {
        int i4 = R.id.bg_guest_redirect;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_guest_redirect);
        if (imageView != null) {
            i4 = R.id.btn_link_phone;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_link_phone);
            if (button != null) {
                i4 = R.id.imgbtn_toolbar_back;
                ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
                if (imageButton != null) {
                    i4 = R.id.iv_login;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_login);
                    if (imageView2 != null) {
                        i4 = R.id.iv_safety;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_safety);
                        if (imageView3 != null) {
                            i4 = R.id.iv_security;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_security);
                            if (imageView4 != null) {
                                i4 = R.id.toolbar;
                                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                if (toolbar != null) {
                                    i4 = R.id.tv_guest_auth_hint;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_guest_auth_hint);
                                    if (textView != null) {
                                        i4 = R.id.tv_login;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_login);
                                        if (textView2 != null) {
                                            i4 = R.id.tv_safety;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_safety);
                                            if (textView3 != null) {
                                                i4 = R.id.tv_security;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_security);
                                                if (textView4 != null) {
                                                    i4 = R.id.tv_security_lvl_hint;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_security_lvl_hint);
                                                    if (textView5 != null) {
                                                        i4 = R.id.tv_toolbar_title;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                                                        if (textView6 != null) {
                                                            return new i1((ConstraintLayout) view, imageView, button, imageButton, imageView2, imageView3, imageView4, toolbar, textView, textView2, textView3, textView4, textView5, textView6);
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
    public static i1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_guest_redirect, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62530a;
    }
}
