package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.wang.avi.AVLoadingIndicatorView;

/* compiled from: DialogUserinfoPeerageBinding.java */
/* loaded from: classes3.dex */
public final class s0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63039a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f63040b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Group f63041c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Guideline f63042d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Guideline f63043e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Guideline f63044f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f63045g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f63046h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f63047i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final AVLoadingIndicatorView f63048j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f63049k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f63050l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f63051m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f63052n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f63053o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f63054p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f63055q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f63056r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f63057s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f63058t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f63059u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f63060v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f63061w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final ConstraintLayout f63062x;

    private s0(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull Group group, @NonNull Guideline guideline, @NonNull Guideline guideline2, @NonNull Guideline guideline3, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull AVLoadingIndicatorView aVLoadingIndicatorView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull ConstraintLayout constraintLayout2) {
        this.f63039a = constraintLayout;
        this.f63040b = view;
        this.f63041c = group;
        this.f63042d = guideline;
        this.f63043e = guideline2;
        this.f63044f = guideline3;
        this.f63045g = imageView;
        this.f63046h = imageView2;
        this.f63047i = imageView3;
        this.f63048j = aVLoadingIndicatorView;
        this.f63049k = textView;
        this.f63050l = textView2;
        this.f63051m = textView3;
        this.f63052n = textView4;
        this.f63053o = textView5;
        this.f63054p = textView6;
        this.f63055q = textView7;
        this.f63056r = textView8;
        this.f63057s = textView9;
        this.f63058t = textView10;
        this.f63059u = textView11;
        this.f63060v = textView12;
        this.f63061w = textView13;
        this.f63062x = constraintLayout2;
    }

    @NonNull
    public static s0 a(@NonNull View view) {
        int i4 = R.id.bg_bottom;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_bottom);
        if (findChildViewById != null) {
            i4 = R.id.bottom_group;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.bottom_group);
            if (group != null) {
                i4 = R.id.guideline1;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline1);
                if (guideline != null) {
                    i4 = R.id.guideline2;
                    Guideline guideline2 = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline2);
                    if (guideline2 != null) {
                        i4 = R.id.guideline3;
                        Guideline guideline3 = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline3);
                        if (guideline3 != null) {
                            i4 = R.id.iv_user_avatar;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_user_avatar);
                            if (imageView != null) {
                                i4 = R.id.iv_user_level;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_user_level);
                                if (imageView2 != null) {
                                    i4 = R.id.iv_user_sex;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_user_sex);
                                    if (imageView3 != null) {
                                        i4 = R.id.pb_user_info;
                                        AVLoadingIndicatorView aVLoadingIndicatorView = (AVLoadingIndicatorView) ViewBindings.findChildViewById(view, R.id.pb_user_info);
                                        if (aVLoadingIndicatorView != null) {
                                            i4 = R.id.tv_complaint;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_complaint);
                                            if (textView != null) {
                                                i4 = R.id.tv_fans_count;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fans_count);
                                                if (textView2 != null) {
                                                    i4 = R.id.tv_follow_button;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_follow_button);
                                                    if (textView3 != null) {
                                                        i4 = R.id.tv_followees_count;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_followees_count);
                                                        if (textView4 != null) {
                                                            i4 = R.id.tv_main_page_button;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_main_page_button);
                                                            if (textView5 != null) {
                                                                i4 = R.id.tv_open_peerage;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_open_peerage);
                                                                if (textView6 != null) {
                                                                    i4 = R.id.tv_open_stream;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_open_stream);
                                                                    if (textView7 != null) {
                                                                        i4 = R.id.tv_reply_button;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_reply_button);
                                                                        if (textView8 != null) {
                                                                            i4 = R.id.tv_send_name_card;
                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send_name_card);
                                                                            if (textView9 != null) {
                                                                                i4 = R.id.tv_sent_count;
                                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sent_count);
                                                                                if (textView10 != null) {
                                                                                    i4 = R.id.tv_user_id;
                                                                                    TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_id);
                                                                                    if (textView11 != null) {
                                                                                        i4 = R.id.tv_user_nickname;
                                                                                        TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_nickname);
                                                                                        if (textView12 != null) {
                                                                                            i4 = R.id.tv_user_signature;
                                                                                            TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_signature);
                                                                                            if (textView13 != null) {
                                                                                                i4 = R.id.user_info_peerage_layout;
                                                                                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.user_info_peerage_layout);
                                                                                                if (constraintLayout != null) {
                                                                                                    return new s0((ConstraintLayout) view, findChildViewById, group, guideline, guideline2, guideline3, imageView, imageView2, imageView3, aVLoadingIndicatorView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, constraintLayout);
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
    public static s0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_userinfo_peerage, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63039a;
    }
}
