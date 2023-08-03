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
import com.hbb20.CountryCodePicker;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;

/* compiled from: FragmentRestorePasswordBinding.java */
/* loaded from: classes3.dex */
public final class s1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63063a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CountryCodePicker f63064b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63065c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final OneKeyClearEditText f63066d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final OneKeyClearEditText f63067e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f63068f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f63069g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f63070h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final OneKeyClearEditText f63071i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f63072j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Button f63073k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f63074l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f63075m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final Toolbar f63076n;

    private s1(@NonNull ConstraintLayout constraintLayout, @NonNull CountryCodePicker countryCodePicker, @NonNull TextView textView, @NonNull OneKeyClearEditText oneKeyClearEditText, @NonNull OneKeyClearEditText oneKeyClearEditText2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull OneKeyClearEditText oneKeyClearEditText3, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull Toolbar toolbar) {
        this.f63063a = constraintLayout;
        this.f63064b = countryCodePicker;
        this.f63065c = textView;
        this.f63066d = oneKeyClearEditText;
        this.f63067e = oneKeyClearEditText2;
        this.f63068f = linearLayout;
        this.f63069g = linearLayout2;
        this.f63070h = imageView;
        this.f63071i = oneKeyClearEditText3;
        this.f63072j = button;
        this.f63073k = button2;
        this.f63074l = textView2;
        this.f63075m = textView3;
        this.f63076n = toolbar;
    }

    @NonNull
    public static s1 a(@NonNull View view) {
        int i4 = R.id.ccp;
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
                        i4 = R.id.linearLayout2;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                        if (linearLayout != null) {
                            i4 = R.id.ll_sms_input;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_sms_input);
                            if (linearLayout2 != null) {
                                i4 = R.id.logo;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.logo);
                                if (imageView != null) {
                                    i4 = R.id.phone_number;
                                    OneKeyClearEditText oneKeyClearEditText3 = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.phone_number);
                                    if (oneKeyClearEditText3 != null) {
                                        i4 = R.id.restore;
                                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.restore);
                                        if (button != null) {
                                            i4 = R.id.sms_button;
                                            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.sms_button);
                                            if (button2 != null) {
                                                i4 = R.id.subtitle;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
                                                if (textView2 != null) {
                                                    i4 = R.id.title;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                    if (textView3 != null) {
                                                        i4 = R.id.toolbar;
                                                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                                        if (toolbar != null) {
                                                            return new s1((ConstraintLayout) view, countryCodePicker, textView, oneKeyClearEditText, oneKeyClearEditText2, linearLayout, linearLayout2, imageView, oneKeyClearEditText3, button, button2, textView2, textView3, toolbar);
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
    public static s1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_restore_password, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63063a;
    }
}
