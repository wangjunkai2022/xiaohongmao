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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.wang.avi.AVLoadingIndicatorView;

/* compiled from: DialogUserinfoBinding.java */
/* loaded from: classes3.dex */
public final class q0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62927a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Group f62928b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f62929c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62930d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62931e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f62932f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final AVLoadingIndicatorView f62933g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62934h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62935i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62936j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62937k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62938l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f62939m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f62940n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f62941o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f62942p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f62943q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f62944r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f62945s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f62946t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f62947u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f62948v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f62949w;

    private q0(@NonNull ConstraintLayout constraintLayout, @NonNull Group group, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull AVLoadingIndicatorView aVLoadingIndicatorView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull TextView textView14, @NonNull TextView textView15, @NonNull TextView textView16) {
        this.f62927a = constraintLayout;
        this.f62928b = group;
        this.f62929c = view;
        this.f62930d = imageView;
        this.f62931e = imageView2;
        this.f62932f = imageView3;
        this.f62933g = aVLoadingIndicatorView;
        this.f62934h = textView;
        this.f62935i = textView2;
        this.f62936j = textView3;
        this.f62937k = textView4;
        this.f62938l = textView5;
        this.f62939m = textView6;
        this.f62940n = textView7;
        this.f62941o = textView8;
        this.f62942p = textView9;
        this.f62943q = textView10;
        this.f62944r = textView11;
        this.f62945s = textView12;
        this.f62946t = textView13;
        this.f62947u = textView14;
        this.f62948v = textView15;
        this.f62949w = textView16;
    }

    @NonNull
    public static q0 a(@NonNull View view) {
        int i4 = R.id.bottom_group;
        Group group = (Group) ViewBindings.findChildViewById(view, R.id.bottom_group);
        if (group != null) {
            i4 = R.id.divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
            if (findChildViewById != null) {
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
                                        i4 = R.id.tv_fans_count_hint;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fans_count_hint);
                                        if (textView3 != null) {
                                            i4 = R.id.tv_follow_button;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_follow_button);
                                            if (textView4 != null) {
                                                i4 = R.id.tv_followees_count;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_followees_count);
                                                if (textView5 != null) {
                                                    i4 = R.id.tv_followees_count_hint;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_followees_count_hint);
                                                    if (textView6 != null) {
                                                        i4 = R.id.tv_main_page_button;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_main_page_button);
                                                        if (textView7 != null) {
                                                            i4 = R.id.tv_open_peerage;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_open_peerage);
                                                            if (textView8 != null) {
                                                                i4 = R.id.tv_open_stream;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_open_stream);
                                                                if (textView9 != null) {
                                                                    i4 = R.id.tv_reply_button;
                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_reply_button);
                                                                    if (textView10 != null) {
                                                                        i4 = R.id.tv_send_name_card;
                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send_name_card);
                                                                        if (textView11 != null) {
                                                                            i4 = R.id.tv_sent_count;
                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sent_count);
                                                                            if (textView12 != null) {
                                                                                i4 = R.id.tv_sent_count_hint;
                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sent_count_hint);
                                                                                if (textView13 != null) {
                                                                                    i4 = R.id.tv_user_id;
                                                                                    TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_id);
                                                                                    if (textView14 != null) {
                                                                                        i4 = R.id.tv_user_nickname;
                                                                                        TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_nickname);
                                                                                        if (textView15 != null) {
                                                                                            i4 = R.id.tv_user_signature;
                                                                                            TextView textView16 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_signature);
                                                                                            if (textView16 != null) {
                                                                                                return new q0((ConstraintLayout) view, group, findChildViewById, imageView, imageView2, imageView3, aVLoadingIndicatorView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16);
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
    public static q0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_userinfo, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62927a;
    }
}
