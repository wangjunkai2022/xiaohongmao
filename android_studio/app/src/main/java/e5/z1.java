package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.room.view.ScrollingText;

/* compiled from: FragmentUserProfileBinding.java */
/* loaded from: classes3.dex */
public final class z1 implements ViewBinding {
    @NonNull
    public final TextView A;
    @NonNull
    public final TextView B;
    @NonNull
    public final TextView C;
    @NonNull
    public final TextView D;
    @NonNull
    public final TextView E;
    @NonNull
    public final TextView F;
    @NonNull
    public final TextView G;
    @NonNull
    public final TextView H;
    @NonNull
    public final TextView I;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63392a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f63393b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f63394c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageButton f63395d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f63396e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f63397f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f63398g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f63399h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f63400i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f63401j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f63402k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ScrollingText f63403l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f63404m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f63405n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f63406o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f63407p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f63408q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f63409r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f63410s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f63411t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f63412u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f63413v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f63414w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f63415x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f63416y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final TextView f63417z;

    private z1(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageButton imageButton, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull ScrollingText scrollingText, @NonNull ImageView imageView8, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull TextView textView14, @NonNull TextView textView15, @NonNull TextView textView16, @NonNull TextView textView17, @NonNull TextView textView18, @NonNull TextView textView19, @NonNull TextView textView20, @NonNull TextView textView21, @NonNull TextView textView22) {
        this.f63392a = constraintLayout;
        this.f63393b = view;
        this.f63394c = constraintLayout2;
        this.f63395d = imageButton;
        this.f63396e = imageView;
        this.f63397f = imageView2;
        this.f63398g = imageView3;
        this.f63399h = imageView4;
        this.f63400i = imageView5;
        this.f63401j = imageView6;
        this.f63402k = imageView7;
        this.f63403l = scrollingText;
        this.f63404m = imageView8;
        this.f63405n = textView;
        this.f63406o = textView2;
        this.f63407p = textView3;
        this.f63408q = textView4;
        this.f63409r = textView5;
        this.f63410s = textView6;
        this.f63411t = textView7;
        this.f63412u = textView8;
        this.f63413v = textView9;
        this.f63414w = textView10;
        this.f63415x = textView11;
        this.f63416y = textView12;
        this.f63417z = textView13;
        this.A = textView14;
        this.B = textView15;
        this.C = textView16;
        this.D = textView17;
        this.E = textView18;
        this.F = textView19;
        this.G = textView20;
        this.H = textView21;
        this.I = textView22;
    }

    @NonNull
    public static z1 a(@NonNull View view) {
        int i4 = R.id.card_divider;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.card_divider);
        if (findChildViewById != null) {
            i4 = R.id.cl_contributors;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.cl_contributors);
            if (constraintLayout != null) {
                i4 = R.id.ib_back;
                ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.ib_back);
                if (imageButton != null) {
                    i4 = R.id.iv_arrow;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow);
                    if (imageView != null) {
                        i4 = R.id.iv_avatar;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_avatar);
                        if (imageView2 != null) {
                            i4 = R.id.iv_contributor_1;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_contributor_1);
                            if (imageView3 != null) {
                                i4 = R.id.iv_contributor_2;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_contributor_2);
                                if (imageView4 != null) {
                                    i4 = R.id.iv_contributor_3;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_contributor_3);
                                    if (imageView5 != null) {
                                        i4 = R.id.iv_level;
                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_level);
                                        if (imageView6 != null) {
                                            i4 = R.id.iv_peerage;
                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_peerage);
                                            if (imageView7 != null) {
                                                i4 = R.id.scroll_text;
                                                ScrollingText scrollingText = (ScrollingText) ViewBindings.findChildViewById(view, R.id.scroll_text);
                                                if (scrollingText != null) {
                                                    i4 = R.id.top_arc;
                                                    ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.top_arc);
                                                    if (imageView8 != null) {
                                                        i4 = R.id.tv_add_friend;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_add_friend);
                                                        if (textView != null) {
                                                            i4 = R.id.tv_blacklist_user;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_blacklist_user);
                                                            if (textView2 != null) {
                                                                i4 = R.id.tv_chat;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_chat);
                                                                if (textView3 != null) {
                                                                    i4 = R.id.tv_city;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_city);
                                                                    if (textView4 != null) {
                                                                        i4 = R.id.tv_city_hint;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_city_hint);
                                                                        if (textView5 != null) {
                                                                            i4 = R.id.tv_contribution;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_contribution);
                                                                            if (textView6 != null) {
                                                                                i4 = R.id.tv_emotion;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_emotion);
                                                                                if (textView7 != null) {
                                                                                    i4 = R.id.tv_emotion_hint;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_emotion_hint);
                                                                                    if (textView8 != null) {
                                                                                        i4 = R.id.tv_family_hint;
                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_family_hint);
                                                                                        if (textView9 != null) {
                                                                                            i4 = R.id.tv_family_level;
                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_family_level);
                                                                                            if (textView10 != null) {
                                                                                                i4 = R.id.tv_follow_user;
                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_follow_user);
                                                                                                if (textView11 != null) {
                                                                                                    i4 = R.id.tv_followees;
                                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_followees);
                                                                                                    if (textView12 != null) {
                                                                                                        i4 = R.id.tv_follows;
                                                                                                        TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_follows);
                                                                                                        if (textView13 != null) {
                                                                                                            i4 = R.id.tv_id;
                                                                                                            TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_id);
                                                                                                            if (textView14 != null) {
                                                                                                                i4 = R.id.tv_info_title;
                                                                                                                TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_info_title);
                                                                                                                if (textView15 != null) {
                                                                                                                    i4 = R.id.tv_intro;
                                                                                                                    TextView textView16 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_intro);
                                                                                                                    if (textView16 != null) {
                                                                                                                        i4 = R.id.tv_intro_hint;
                                                                                                                        TextView textView17 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_intro_hint);
                                                                                                                        if (textView17 != null) {
                                                                                                                            i4 = R.id.tv_nickname;
                                                                                                                            TextView textView18 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nickname);
                                                                                                                            if (textView18 != null) {
                                                                                                                                i4 = R.id.tv_open_stream;
                                                                                                                                TextView textView19 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_open_stream);
                                                                                                                                if (textView19 != null) {
                                                                                                                                    i4 = R.id.tv_profession_hint;
                                                                                                                                    TextView textView20 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_profession_hint);
                                                                                                                                    if (textView20 != null) {
                                                                                                                                        i4 = R.id.tv_proffestion;
                                                                                                                                        TextView textView21 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_proffestion);
                                                                                                                                        if (textView21 != null) {
                                                                                                                                            i4 = R.id.tv_sex;
                                                                                                                                            TextView textView22 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sex);
                                                                                                                                            if (textView22 != null) {
                                                                                                                                                return new z1((ConstraintLayout) view, findChildViewById, constraintLayout, imageButton, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, scrollingText, imageView8, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, textView22);
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
    public static z1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_user_profile, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63392a;
    }
}
