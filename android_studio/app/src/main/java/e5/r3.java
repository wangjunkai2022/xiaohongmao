package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;

/* compiled from: LayoutLoginConfigBinding.java */
/* loaded from: classes3.dex */
public final class r3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63008a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63009b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63010c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RadioGroup f63011d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RadioButton f63012e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RadioButton f63013f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RadioButton f63014g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RadioButton f63015h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final OneKeyClearEditText f63016i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RadioButton f63017j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RadioButton f63018k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ConstraintLayout f63019l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RadioButton f63020m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RadioButton f63021n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RadioGroup f63022o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f63023p;

    private r3(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RadioGroup radioGroup, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioButton radioButton3, @NonNull RadioButton radioButton4, @NonNull OneKeyClearEditText oneKeyClearEditText, @NonNull RadioButton radioButton5, @NonNull RadioButton radioButton6, @NonNull ConstraintLayout constraintLayout2, @NonNull RadioButton radioButton7, @NonNull RadioButton radioButton8, @NonNull RadioGroup radioGroup2, @NonNull TextView textView2) {
        this.f63008a = constraintLayout;
        this.f63009b = imageView;
        this.f63010c = textView;
        this.f63011d = radioGroup;
        this.f63012e = radioButton;
        this.f63013f = radioButton2;
        this.f63014g = radioButton3;
        this.f63015h = radioButton4;
        this.f63016i = oneKeyClearEditText;
        this.f63017j = radioButton5;
        this.f63018k = radioButton6;
        this.f63019l = constraintLayout2;
        this.f63020m = radioButton7;
        this.f63021n = radioButton8;
        this.f63022o = radioGroup2;
        this.f63023p = textView2;
    }

    @NonNull
    public static r3 a(@NonNull View view) {
        int i4 = R.id.btn_config_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_config_close);
        if (imageView != null) {
            i4 = R.id.btn_config_save;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_config_save);
            if (textView != null) {
                i4 = R.id.captchaGroup;
                RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.captchaGroup);
                if (radioGroup != null) {
                    i4 = R.id.cb_china_server;
                    RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.cb_china_server);
                    if (radioButton != null) {
                        i4 = R.id.cb_force_none;
                        RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.cb_force_none);
                        if (radioButton2 != null) {
                            i4 = R.id.cb_out_of_china_server;
                            RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.cb_out_of_china_server);
                            if (radioButton3 != null) {
                                i4 = R.id.cb_test_server;
                                RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(view, R.id.cb_test_server);
                                if (radioButton4 != null) {
                                    i4 = R.id.etTestServerDomain;
                                    OneKeyClearEditText oneKeyClearEditText = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.etTestServerDomain);
                                    if (oneKeyClearEditText != null) {
                                        i4 = R.id.graphCaptcha;
                                        RadioButton radioButton5 = (RadioButton) ViewBindings.findChildViewById(view, R.id.graphCaptcha);
                                        if (radioButton5 != null) {
                                            i4 = R.id.hCaptcha;
                                            RadioButton radioButton6 = (RadioButton) ViewBindings.findChildViewById(view, R.id.hCaptcha);
                                            if (radioButton6 != null) {
                                                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                                i4 = R.id.none;
                                                RadioButton radioButton7 = (RadioButton) ViewBindings.findChildViewById(view, R.id.none);
                                                if (radioButton7 != null) {
                                                    i4 = R.id.reCaptcha;
                                                    RadioButton radioButton8 = (RadioButton) ViewBindings.findChildViewById(view, R.id.reCaptcha);
                                                    if (radioButton8 != null) {
                                                        i4 = R.id.rg_force_server;
                                                        RadioGroup radioGroup2 = (RadioGroup) ViewBindings.findChildViewById(view, R.id.rg_force_server);
                                                        if (radioGroup2 != null) {
                                                            i4 = R.id.tv_force_server_hint;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_force_server_hint);
                                                            if (textView2 != null) {
                                                                return new r3(constraintLayout, imageView, textView, radioGroup, radioButton, radioButton2, radioButton3, radioButton4, oneKeyClearEditText, radioButton5, radioButton6, constraintLayout, radioButton7, radioButton8, radioGroup2, textView2);
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
    public static r3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_login_config, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63008a;
    }
}
