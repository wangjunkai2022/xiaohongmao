package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
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

/* compiled from: FragmentModifyPasswordBinding.java */
/* loaded from: classes3.dex */
public final class m1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62728a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final EditText f62729b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f62730c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f62731d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageButton f62732e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f62733f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f62734g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextInputLayout f62735h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final Toolbar f62736i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62737j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62738k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62739l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f62740m;

    private m1(@NonNull ConstraintLayout constraintLayout, @NonNull EditText editText, @NonNull EditText editText2, @NonNull EditText editText3, @NonNull ImageButton imageButton, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextInputLayout textInputLayout, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f62728a = constraintLayout;
        this.f62729b = editText;
        this.f62730c = editText2;
        this.f62731d = editText3;
        this.f62732e = imageButton;
        this.f62733f = linearLayout;
        this.f62734g = imageView;
        this.f62735h = textInputLayout;
        this.f62736i = toolbar;
        this.f62737j = textView;
        this.f62738k = textView2;
        this.f62739l = textView3;
        this.f62740m = textView4;
    }

    @NonNull
    public static m1 a(@NonNull View view) {
        int i4 = R.id.ev_confirm_password;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.ev_confirm_password);
        if (editText != null) {
            i4 = R.id.ev_new_password;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.ev_new_password);
            if (editText2 != null) {
                i4 = R.id.ev_old_password;
                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.ev_old_password);
                if (editText3 != null) {
                    i4 = R.id.imgbtn_toolbar_back;
                    ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
                    if (imageButton != null) {
                        i4 = R.id.linearLayout2;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                        if (linearLayout != null) {
                            i4 = R.id.logo;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.logo);
                            if (imageView != null) {
                                i4 = R.id.til_confirm_password;
                                TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_confirm_password);
                                if (textInputLayout != null) {
                                    i4 = R.id.toolbar;
                                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                    if (toolbar != null) {
                                        i4 = R.id.tv_customer_support;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_customer_support);
                                        if (textView != null) {
                                            i4 = R.id.tv_modify_password;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_modify_password);
                                            if (textView2 != null) {
                                                i4 = R.id.tv_recover_password;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_recover_password);
                                                if (textView3 != null) {
                                                    i4 = R.id.tv_title;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                    if (textView4 != null) {
                                                        return new m1((ConstraintLayout) view, editText, editText2, editText3, imageButton, linearLayout, imageView, textInputLayout, toolbar, textView, textView2, textView3, textView4);
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
    public static m1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_modify_password, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62728a;
    }
}
