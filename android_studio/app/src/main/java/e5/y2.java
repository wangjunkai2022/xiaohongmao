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

/* compiled from: ItemRankingPedestalBinding.java */
/* loaded from: classes3.dex */
public final class y2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63363a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Group f63364b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f63365c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f63366d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f63367e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f63368f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f63369g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f63370h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f63371i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f63372j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f63373k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f63374l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f63375m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f63376n;

    private y2(@NonNull ConstraintLayout constraintLayout, @NonNull Group group, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f63363a = constraintLayout;
        this.f63364b = group;
        this.f63365c = imageView;
        this.f63366d = imageView2;
        this.f63367e = imageView3;
        this.f63368f = imageView4;
        this.f63369g = imageView5;
        this.f63370h = imageView6;
        this.f63371i = imageView7;
        this.f63372j = textView;
        this.f63373k = textView2;
        this.f63374l = textView3;
        this.f63375m = textView4;
        this.f63376n = textView5;
    }

    @NonNull
    public static y2 a(@NonNull View view) {
        int i4 = R.id.group_pk;
        Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_pk);
        if (group != null) {
            i4 = R.id.iv_avatar;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_avatar);
            if (imageView != null) {
                i4 = R.id.iv_bg_top;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bg_top);
                if (imageView2 != null) {
                    i4 = R.id.iv_defeats_icon;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_defeats_icon);
                    if (imageView3 != null) {
                        i4 = R.id.iv_level;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_level);
                        if (imageView4 != null) {
                            i4 = R.id.iv_peerage;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_peerage);
                            if (imageView5 != null) {
                                i4 = R.id.iv_sex;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_sex);
                                if (imageView6 != null) {
                                    i4 = R.id.iv_win_icon;
                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_win_icon);
                                    if (imageView7 != null) {
                                        i4 = R.id.tv_coin_count;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coin_count);
                                        if (textView != null) {
                                            i4 = R.id.tv_count_defeats;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_count_defeats);
                                            if (textView2 != null) {
                                                i4 = R.id.tv_count_win;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_count_win);
                                                if (textView3 != null) {
                                                    i4 = R.id.tv_game_name;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_game_name);
                                                    if (textView4 != null) {
                                                        i4 = R.id.tv_name;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                        if (textView5 != null) {
                                                            return new y2((ConstraintLayout) view, group, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, textView, textView2, textView3, textView4, textView5);
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
    public static y2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_ranking_pedestal, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63363a;
    }
}
