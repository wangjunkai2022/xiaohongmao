package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentEditProfileBinding.java */
/* loaded from: classes3.dex */
public final class f1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62374a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62375b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RadioGroup f62376c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f62377d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f62378e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f62379f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f62380g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f62381h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f62382i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f62383j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62384k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62385l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f62386m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f62387n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f62388o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f62389p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f62390q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f62391r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f62392s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f62393t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final ImageButton f62394u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final Toolbar f62395v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f62396w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final RelativeLayout f62397x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final RadioButton f62398y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final RadioButton f62399z;

    private f1(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RadioGroup radioGroup, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull RelativeLayout relativeLayout5, @NonNull RelativeLayout relativeLayout6, @NonNull RelativeLayout relativeLayout7, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull ImageButton imageButton, @NonNull Toolbar toolbar, @NonNull TextView textView11, @NonNull RelativeLayout relativeLayout8, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2) {
        this.f62374a = linearLayout;
        this.f62375b = imageView;
        this.f62376c = radioGroup;
        this.f62377d = relativeLayout;
        this.f62378e = relativeLayout2;
        this.f62379f = relativeLayout3;
        this.f62380g = relativeLayout4;
        this.f62381h = relativeLayout5;
        this.f62382i = relativeLayout6;
        this.f62383j = relativeLayout7;
        this.f62384k = textView;
        this.f62385l = textView2;
        this.f62386m = textView3;
        this.f62387n = textView4;
        this.f62388o = textView5;
        this.f62389p = textView6;
        this.f62390q = textView7;
        this.f62391r = textView8;
        this.f62392s = textView9;
        this.f62393t = textView10;
        this.f62394u = imageButton;
        this.f62395v = toolbar;
        this.f62396w = textView11;
        this.f62397x = relativeLayout8;
        this.f62398y = radioButton;
        this.f62399z = radioButton2;
    }

    @NonNull
    public static f1 a(@NonNull View view) {
        int i4 = R.id.edit_profile_drawee_avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.edit_profile_drawee_avatar);
        if (imageView != null) {
            i4 = R.id.edit_profile_gp_sex;
            RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.edit_profile_gp_sex);
            if (radioGroup != null) {
                i4 = R.id.edit_profile_rl_avatar;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.edit_profile_rl_avatar);
                if (relativeLayout != null) {
                    i4 = R.id.edit_profile_rl_hometown;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.edit_profile_rl_hometown);
                    if (relativeLayout2 != null) {
                        i4 = R.id.edit_profile_rl_id;
                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.edit_profile_rl_id);
                        if (relativeLayout3 != null) {
                            i4 = R.id.edit_profile_rl_introduction;
                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.edit_profile_rl_introduction);
                            if (relativeLayout4 != null) {
                                i4 = R.id.edit_profile_rl_namecard;
                                RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.edit_profile_rl_namecard);
                                if (relativeLayout5 != null) {
                                    i4 = R.id.edit_profile_rl_nickname;
                                    RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.edit_profile_rl_nickname);
                                    if (relativeLayout6 != null) {
                                        i4 = R.id.edit_profile_rl_state;
                                        RelativeLayout relativeLayout7 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.edit_profile_rl_state);
                                        if (relativeLayout7 != null) {
                                            i4 = R.id.edit_profile_tv_birthday;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_birthday);
                                            if (textView != null) {
                                                i4 = R.id.edit_profile_tv_hometown;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_hometown);
                                                if (textView2 != null) {
                                                    i4 = R.id.edit_profile_tv_hometown_label;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_hometown_label);
                                                    if (textView3 != null) {
                                                        i4 = R.id.edit_profile_tv_id_value;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_id_value);
                                                        if (textView4 != null) {
                                                            i4 = R.id.edit_profile_tv_introduction;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_introduction);
                                                            if (textView5 != null) {
                                                                i4 = R.id.edit_profile_tv_namecard;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_namecard);
                                                                if (textView6 != null) {
                                                                    i4 = R.id.edit_profile_tv_nickname;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_nickname);
                                                                    if (textView7 != null) {
                                                                        i4 = R.id.edit_profile_tv_nickname_label;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_nickname_label);
                                                                        if (textView8 != null) {
                                                                            i4 = R.id.edit_profile_tv_state;
                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_state);
                                                                            if (textView9 != null) {
                                                                                i4 = R.id.edit_profile_tv_state_label;
                                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_state_label);
                                                                                if (textView10 != null) {
                                                                                    i4 = R.id.imgbtn_toolbar_back;
                                                                                    ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
                                                                                    if (imageButton != null) {
                                                                                        i4 = R.id.toolbar;
                                                                                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                                                                        if (toolbar != null) {
                                                                                            i4 = R.id.tv_toolbar_title;
                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                                                                                            if (textView11 != null) {
                                                                                                i4 = R.id.userbirthday;
                                                                                                RelativeLayout relativeLayout8 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.userbirthday);
                                                                                                if (relativeLayout8 != null) {
                                                                                                    i4 = R.id.userinfo_write_female;
                                                                                                    RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.userinfo_write_female);
                                                                                                    if (radioButton != null) {
                                                                                                        i4 = R.id.userinfo_write_male;
                                                                                                        RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.userinfo_write_male);
                                                                                                        if (radioButton2 != null) {
                                                                                                            return new f1((LinearLayout) view, imageView, radioGroup, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, imageButton, toolbar, textView11, relativeLayout8, radioButton, radioButton2);
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
    public static f1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_edit_profile, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62374a;
    }
}
