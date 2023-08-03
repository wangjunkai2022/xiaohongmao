package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: LayoutMyInfoBinding.java */
/* loaded from: classes3.dex */
public final class s3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63078a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63079b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f63080c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f63081d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63082e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f63083f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63084g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f63085h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f63086i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f63087j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f63088k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f63089l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f63090m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f63091n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f63092o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f63093p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f63094q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final ImageView f63095r;

    private s3(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull ImageView imageView4, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull ImageView imageView5) {
        this.f63078a = constraintLayout;
        this.f63079b = imageView;
        this.f63080c = imageView2;
        this.f63081d = imageView3;
        this.f63082e = textView;
        this.f63083f = imageView4;
        this.f63084g = textView2;
        this.f63085h = textView3;
        this.f63086i = textView4;
        this.f63087j = textView5;
        this.f63088k = textView6;
        this.f63089l = textView7;
        this.f63090m = textView8;
        this.f63091n = textView9;
        this.f63092o = textView10;
        this.f63093p = textView11;
        this.f63094q = textView12;
        this.f63095r = imageView5;
    }

    @NonNull
    public static s3 a(@NonNull View view) {
        int i4 = R.id.iv_peerage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_peerage);
        if (imageView != null) {
            i4 = R.id.me_edit;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.me_edit);
            if (imageView2 != null) {
                i4 = R.id.me_level;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.me_level);
                if (imageView3 != null) {
                    i4 = R.id.me_sign;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.me_sign);
                    if (textView != null) {
                        i4 = R.id.my_me_photo;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.my_me_photo);
                        if (imageView4 != null) {
                            i4 = R.id.tv_contribution;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_contribution);
                            if (textView2 != null) {
                                i4 = R.id.tv_family_hint;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_family_hint);
                                if (textView3 != null) {
                                    i4 = R.id.tv_family_level;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_family_level);
                                    if (textView4 != null) {
                                        i4 = R.id.tv_fan_club_label;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fan_club_label);
                                        if (textView5 != null) {
                                            i4 = R.id.tv_followees;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_followees);
                                            if (textView6 != null) {
                                                i4 = R.id.tv_followees_hint;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_followees_hint);
                                                if (textView7 != null) {
                                                    i4 = R.id.tv_follows;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_follows);
                                                    if (textView8 != null) {
                                                        i4 = R.id.tv_follows_hint;
                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_follows_hint);
                                                        if (textView9 != null) {
                                                            i4 = R.id.tv_id;
                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_id);
                                                            if (textView10 != null) {
                                                                i4 = R.id.tv_mystery_enabled_hint;
                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mystery_enabled_hint);
                                                                if (textView11 != null) {
                                                                    i4 = R.id.tv_nickname;
                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nickname);
                                                                    if (textView12 != null) {
                                                                        i4 = R.id.tv_sex;
                                                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.tv_sex);
                                                                        if (imageView5 != null) {
                                                                            return new s3((ConstraintLayout) view, imageView, imageView2, imageView3, textView, imageView4, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, imageView5);
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
    public static s3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_my_info, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63078a;
    }
}
