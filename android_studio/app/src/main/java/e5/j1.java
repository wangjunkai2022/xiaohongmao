package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.hbb20.CountryCodePicker;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;

/* compiled from: FragmentLoginBinding.java */
/* loaded from: classes3.dex */
public final class j1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62574a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f62575b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageButton f62576c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f62577d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final CountryCodePicker f62578e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62579f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final OneKeyClearEditText f62580g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final OneKeyClearEditText f62581h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final OneKeyClearEditText f62582i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62583j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f62584k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f62585l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Button f62586m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f62587n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final Button f62588o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f62589p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f62590q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f62591r;

    private j1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull ImageButton imageButton2, @NonNull Button button, @NonNull CountryCodePicker countryCodePicker, @NonNull TextView textView, @NonNull OneKeyClearEditText oneKeyClearEditText, @NonNull OneKeyClearEditText oneKeyClearEditText2, @NonNull OneKeyClearEditText oneKeyClearEditText3, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull Button button2, @NonNull ImageView imageView, @NonNull Button button3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f62574a = constraintLayout;
        this.f62575b = imageButton;
        this.f62576c = imageButton2;
        this.f62577d = button;
        this.f62578e = countryCodePicker;
        this.f62579f = textView;
        this.f62580g = oneKeyClearEditText;
        this.f62581h = oneKeyClearEditText2;
        this.f62582i = oneKeyClearEditText3;
        this.f62583j = textView2;
        this.f62584k = linearLayout;
        this.f62585l = linearLayout2;
        this.f62586m = button2;
        this.f62587n = imageView;
        this.f62588o = button3;
        this.f62589p = textView3;
        this.f62590q = textView4;
        this.f62591r = textView5;
    }

    @NonNull
    public static j1 a(@NonNull View view) {
        int i4 = R.id.btn_back;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageButton != null) {
            i4 = R.id.btn_config_show;
            ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_config_show);
            if (imageButton2 != null) {
                i4 = R.id.captcha_button;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.captcha_button);
                if (button != null) {
                    i4 = R.id.ccp;
                    CountryCodePicker countryCodePicker = (CountryCodePicker) ViewBindings.findChildViewById(view, R.id.ccp);
                    if (countryCodePicker != null) {
                        i4 = R.id.contact_support;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.contact_support);
                        if (textView != null) {
                            i4 = R.id.edit_pass;
                            OneKeyClearEditText oneKeyClearEditText = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.edit_pass);
                            if (oneKeyClearEditText != null) {
                                i4 = R.id.edit_sms;
                                OneKeyClearEditText oneKeyClearEditText2 = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.edit_sms);
                                if (oneKeyClearEditText2 != null) {
                                    i4 = R.id.edit_user_name;
                                    OneKeyClearEditText oneKeyClearEditText3 = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.edit_user_name);
                                    if (oneKeyClearEditText3 != null) {
                                        i4 = R.id.guestLogin;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.guestLogin);
                                        if (textView2 != null) {
                                            i4 = R.id.linearLayout2;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                                            if (linearLayout != null) {
                                                i4 = R.id.ll_sms_input;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_sms_input);
                                                if (linearLayout2 != null) {
                                                    i4 = R.id.login_by_username;
                                                    Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.login_by_username);
                                                    if (button2 != null) {
                                                        i4 = R.id.logo;
                                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.logo);
                                                        if (imageView != null) {
                                                            i4 = R.id.register;
                                                            Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.register);
                                                            if (button3 != null) {
                                                                i4 = R.id.restore_password;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.restore_password);
                                                                if (textView3 != null) {
                                                                    i4 = R.id.subtitle;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
                                                                    if (textView4 != null) {
                                                                        i4 = R.id.title;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                        if (textView5 != null) {
                                                                            return new j1((ConstraintLayout) view, imageButton, imageButton2, button, countryCodePicker, textView, oneKeyClearEditText, oneKeyClearEditText2, oneKeyClearEditText3, textView2, linearLayout, linearLayout2, button2, imageView, button3, textView3, textView4, textView5);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static j1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_login, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62574a;
    }
}
