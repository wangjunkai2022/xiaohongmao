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
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.google.android.material.textfield.TextInputLayout;
import com.hbb20.CountryCodePicker;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;

/* compiled from: FragmentSignUpBinding.java */
/* loaded from: classes3.dex */
public final class w1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63261a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CountryCodePicker f63262b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63263c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageButton f63264d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f63265e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f63266f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f63267g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f63268h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final Button f63269i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f63270j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final OneKeyClearEditText f63271k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final OneKeyClearEditText f63272l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextInputLayout f63273m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f63274n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f63275o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final Toolbar f63276p;

    private w1(@NonNull ConstraintLayout constraintLayout, @NonNull CountryCodePicker countryCodePicker, @NonNull TextView textView, @NonNull ImageButton imageButton, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull Button button, @NonNull Button button2, @NonNull OneKeyClearEditText oneKeyClearEditText, @NonNull OneKeyClearEditText oneKeyClearEditText2, @NonNull TextInputLayout textInputLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull Toolbar toolbar) {
        this.f63261a = constraintLayout;
        this.f63262b = countryCodePicker;
        this.f63263c = textView;
        this.f63264d = imageButton;
        this.f63265e = linearLayout;
        this.f63266f = linearLayout2;
        this.f63267g = linearLayout3;
        this.f63268h = imageView;
        this.f63269i = button;
        this.f63270j = button2;
        this.f63271k = oneKeyClearEditText;
        this.f63272l = oneKeyClearEditText2;
        this.f63273m = textInputLayout;
        this.f63274n = textView2;
        this.f63275o = textView3;
        this.f63276p = toolbar;
    }

    @NonNull
    public static w1 a(@NonNull View view) {
        int i4 = R.id.ccp;
        CountryCodePicker countryCodePicker = (CountryCodePicker) ViewBindings.findChildViewById(view, R.id.ccp);
        if (countryCodePicker != null) {
            i4 = R.id.contact_support;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.contact_support);
            if (textView != null) {
                i4 = R.id.imgbtn_toolbar_back;
                ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
                if (imageButton != null) {
                    i4 = R.id.layoutPhoneCaptcha;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutPhoneCaptcha);
                    if (linearLayout != null) {
                        i4 = R.id.linearLayout2;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                        if (linearLayout2 != null) {
                            i4 = R.id.ll_sms_input;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_sms_input);
                            if (linearLayout3 != null) {
                                i4 = R.id.logo;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.logo);
                                if (imageView != null) {
                                    i4 = R.id.register_btn_captcha_countdown;
                                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.register_btn_captcha_countdown);
                                    if (button != null) {
                                        i4 = R.id.register_btn_next;
                                        Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.register_btn_next);
                                        if (button2 != null) {
                                            i4 = R.id.register_edit_captcha;
                                            OneKeyClearEditText oneKeyClearEditText = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.register_edit_captcha);
                                            if (oneKeyClearEditText != null) {
                                                i4 = R.id.register_edit_phone;
                                                OneKeyClearEditText oneKeyClearEditText2 = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.register_edit_phone);
                                                if (oneKeyClearEditText2 != null) {
                                                    i4 = R.id.register_phone_inputlayout;
                                                    TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.register_phone_inputlayout);
                                                    if (textInputLayout != null) {
                                                        i4 = R.id.subtitle;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
                                                        if (textView2 != null) {
                                                            i4 = R.id.title;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                            if (textView3 != null) {
                                                                i4 = R.id.toolbar;
                                                                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                                                if (toolbar != null) {
                                                                    return new w1((ConstraintLayout) view, countryCodePicker, textView, imageButton, linearLayout, linearLayout2, linearLayout3, imageView, button, button2, oneKeyClearEditText, oneKeyClearEditText2, textInputLayout, textView2, textView3, toolbar);
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
    public static w1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_sign_up, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63261a;
    }
}
