package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.google.android.material.textfield.TextInputLayout;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;

/* compiled from: FragmentFinishSignUpBinding.java */
/* loaded from: classes3.dex */
public final class g1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62438a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62439b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f62440c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f62441d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62442e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62443f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Button f62444g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final OneKeyClearEditText f62445h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final OneKeyClearEditText f62446i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final OneKeyClearEditText f62447j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextInputLayout f62448k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextInputLayout f62449l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextInputLayout f62450m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final Toolbar f62451n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f62452o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f62453p;

    private g1(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull Button button, @NonNull OneKeyClearEditText oneKeyClearEditText, @NonNull OneKeyClearEditText oneKeyClearEditText2, @NonNull OneKeyClearEditText oneKeyClearEditText3, @NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull TextInputLayout textInputLayout3, @NonNull Toolbar toolbar, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f62438a = constraintLayout;
        this.f62439b = textView;
        this.f62440c = linearLayout;
        this.f62441d = linearLayout2;
        this.f62442e = imageView;
        this.f62443f = textView2;
        this.f62444g = button;
        this.f62445h = oneKeyClearEditText;
        this.f62446i = oneKeyClearEditText2;
        this.f62447j = oneKeyClearEditText3;
        this.f62448k = textInputLayout;
        this.f62449l = textInputLayout2;
        this.f62450m = textInputLayout3;
        this.f62451n = toolbar;
        this.f62452o = textView3;
        this.f62453p = textView4;
    }

    @NonNull
    public static g1 a(@NonNull View view) {
        int i4 = R.id.contact_support;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.contact_support);
        if (textView != null) {
            i4 = R.id.layoutNickPassword;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutNickPassword);
            if (linearLayout != null) {
                i4 = R.id.linearLayout2;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                if (linearLayout2 != null) {
                    i4 = R.id.logo;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.logo);
                    if (imageView != null) {
                        i4 = R.id.newAccountDisclaimer;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.newAccountDisclaimer);
                        if (textView2 != null) {
                            i4 = R.id.register_btn_register;
                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.register_btn_register);
                            if (button != null) {
                                i4 = R.id.register_edit_nick;
                                OneKeyClearEditText oneKeyClearEditText = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.register_edit_nick);
                                if (oneKeyClearEditText != null) {
                                    i4 = R.id.register_edit_pass;
                                    OneKeyClearEditText oneKeyClearEditText2 = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.register_edit_pass);
                                    if (oneKeyClearEditText2 != null) {
                                        i4 = R.id.register_edit_pass_sure;
                                        OneKeyClearEditText oneKeyClearEditText3 = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.register_edit_pass_sure);
                                        if (oneKeyClearEditText3 != null) {
                                            i4 = R.id.register_nick_inputlayout;
                                            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.register_nick_inputlayout);
                                            if (textInputLayout != null) {
                                                i4 = R.id.register_pass_inputlayout;
                                                TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.register_pass_inputlayout);
                                                if (textInputLayout2 != null) {
                                                    i4 = R.id.register_pass_sure_inputlayout;
                                                    TextInputLayout textInputLayout3 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.register_pass_sure_inputlayout);
                                                    if (textInputLayout3 != null) {
                                                        i4 = R.id.registerToolbar;
                                                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.registerToolbar);
                                                        if (toolbar != null) {
                                                            i4 = R.id.subtitle;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
                                                            if (textView3 != null) {
                                                                i4 = R.id.title;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                if (textView4 != null) {
                                                                    return new g1((ConstraintLayout) view, textView, linearLayout, linearLayout2, imageView, textView2, button, oneKeyClearEditText, oneKeyClearEditText2, oneKeyClearEditText3, textInputLayout, textInputLayout2, textInputLayout3, toolbar, textView3, textView4);
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
    public static g1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_finish_sign_up, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62438a;
    }
}
