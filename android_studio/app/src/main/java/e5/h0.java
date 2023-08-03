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
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogRankTodayBinding.java */
/* loaded from: classes3.dex */
public final class h0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62476a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f62477b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f62478c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Group f62479d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62480e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f62481f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f62482g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f62483h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f62484i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RecyclerView f62485j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SwipeRefreshLayout f62486k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62487l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f62488m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f62489n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f62490o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f62491p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f62492q;

    private h0(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull View view2, @NonNull Group group, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull RecyclerView recyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f62476a = constraintLayout;
        this.f62477b = view;
        this.f62478c = view2;
        this.f62479d = group;
        this.f62480e = imageView;
        this.f62481f = imageView2;
        this.f62482g = imageView3;
        this.f62483h = imageView4;
        this.f62484i = imageView5;
        this.f62485j = recyclerView;
        this.f62486k = swipeRefreshLayout;
        this.f62487l = textView;
        this.f62488m = textView2;
        this.f62489n = textView3;
        this.f62490o = textView4;
        this.f62491p = textView5;
        this.f62492q = textView6;
    }

    @NonNull
    public static h0 a(@NonNull View view) {
        int i4 = R.id.bg;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg);
        if (findChildViewById != null) {
            i4 = R.id.divider;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.divider);
            if (findChildViewById2 != null) {
                i4 = R.id.group_top_item;
                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_top_item);
                if (group != null) {
                    i4 = R.id.iv_avatar;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_avatar);
                    if (imageView != null) {
                        i4 = R.id.iv_level;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_level);
                        if (imageView2 != null) {
                            i4 = R.id.iv_peerage;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_peerage);
                            if (imageView3 != null) {
                                i4 = R.id.iv_sex;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_sex);
                                if (imageView4 != null) {
                                    i4 = R.id.iv_top_bg;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_top_bg);
                                    if (imageView5 != null) {
                                        i4 = R.id.recycler;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler);
                                        if (recyclerView != null) {
                                            i4 = R.id.swipe_refresh_layout;
                                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_refresh_layout);
                                            if (swipeRefreshLayout != null) {
                                                i4 = R.id.tv_coin_count;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coin_count);
                                                if (textView != null) {
                                                    i4 = R.id.tv_coin_hint;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coin_hint);
                                                    if (textView2 != null) {
                                                        i4 = R.id.tv_empty_list;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty_list);
                                                        if (textView3 != null) {
                                                            i4 = R.id.tv_name;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                            if (textView4 != null) {
                                                                i4 = R.id.tv_rank_today;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rank_today);
                                                                if (textView5 != null) {
                                                                    i4 = R.id.tv_rank_week;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rank_week);
                                                                    if (textView6 != null) {
                                                                        return new h0((ConstraintLayout) view, findChildViewById, findChildViewById2, group, imageView, imageView2, imageView3, imageView4, imageView5, recyclerView, swipeRefreshLayout, textView, textView2, textView3, textView4, textView5, textView6);
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
    public static h0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_rank_today, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62476a;
    }
}
