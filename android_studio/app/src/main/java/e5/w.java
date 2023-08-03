package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogEditFeelBinding.java */
/* loaded from: classes3.dex */
public final class w implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f63238a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63239b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63240c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f63241d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63242e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f63243f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63244g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f63245h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f63246i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f63247j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f63248k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f63249l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f63250m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f63251n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f63252o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f63253p;

    private w(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull TextView textView3, @NonNull ImageView imageView4, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull RelativeLayout relativeLayout5, @NonNull ImageView imageView5) {
        this.f63238a = linearLayout;
        this.f63239b = imageView;
        this.f63240c = textView;
        this.f63241d = imageView2;
        this.f63242e = textView2;
        this.f63243f = imageView3;
        this.f63244g = textView3;
        this.f63245h = imageView4;
        this.f63246i = textView4;
        this.f63247j = textView5;
        this.f63248k = relativeLayout;
        this.f63249l = relativeLayout2;
        this.f63250m = relativeLayout3;
        this.f63251n = relativeLayout4;
        this.f63252o = relativeLayout5;
        this.f63253p = imageView5;
    }

    @NonNull
    public static w a(@NonNull View view) {
        int i4 = R.id.edit_profile_tv_gay;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_gay);
        if (imageView != null) {
            i4 = R.id.edit_profile_tv_gay_label;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_gay_label);
            if (textView != null) {
                i4 = R.id.edit_profile_tv_lonely;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_lonely);
                if (imageView2 != null) {
                    i4 = R.id.edit_profile_tv_lonely_label;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_lonely_label);
                    if (textView2 != null) {
                        i4 = R.id.edit_profile_tv_love;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_love);
                        if (imageView3 != null) {
                            i4 = R.id.edit_profile_tv_love_label;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_love_label);
                            if (textView3 != null) {
                                i4 = R.id.edit_profile_tv_married;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_married);
                                if (imageView4 != null) {
                                    i4 = R.id.edit_profile_tv_married_label;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_married_label);
                                    if (textView4 != null) {
                                        i4 = R.id.edit_profile_tv_no_label;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.edit_profile_tv_no_label);
                                        if (textView5 != null) {
                                            i4 = R.id.popup_feel_gay;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.popup_feel_gay);
                                            if (relativeLayout != null) {
                                                i4 = R.id.popup_feel_lonely;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.popup_feel_lonely);
                                                if (relativeLayout2 != null) {
                                                    i4 = R.id.popup_feel_love;
                                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.popup_feel_love);
                                                    if (relativeLayout3 != null) {
                                                        i4 = R.id.popup_feel_married;
                                                        RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.popup_feel_married);
                                                        if (relativeLayout4 != null) {
                                                            i4 = R.id.popup_feel_no;
                                                            RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.popup_feel_no);
                                                            if (relativeLayout5 != null) {
                                                                i4 = R.id.popup_feel_no_img;
                                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.popup_feel_no_img);
                                                                if (imageView5 != null) {
                                                                    return new w((LinearLayout) view, imageView, textView, imageView2, textView2, imageView3, textView3, imageView4, textView4, textView5, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, imageView5);
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
    public static w c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_edit_feel, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f63238a;
    }
}
