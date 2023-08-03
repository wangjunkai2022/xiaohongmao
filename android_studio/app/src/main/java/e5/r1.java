package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.banner.BannerCarousel;

/* compiled from: FragmentRankingBinding.java */
/* loaded from: classes3.dex */
public final class r1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62983a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BannerCarousel f62984b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final y2 f62985c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final y2 f62986d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final y2 f62987e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RecyclerView f62988f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SwipeRefreshLayout f62989g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62990h;

    private r1(@NonNull ConstraintLayout constraintLayout, @NonNull BannerCarousel bannerCarousel, @NonNull y2 y2Var, @NonNull y2 y2Var2, @NonNull y2 y2Var3, @NonNull RecyclerView recyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull TextView textView) {
        this.f62983a = constraintLayout;
        this.f62984b = bannerCarousel;
        this.f62985c = y2Var;
        this.f62986d = y2Var2;
        this.f62987e = y2Var3;
        this.f62988f = recyclerView;
        this.f62989g = swipeRefreshLayout;
        this.f62990h = textView;
    }

    @NonNull
    public static r1 a(@NonNull View view) {
        int i4 = R.id.banner_carousel;
        BannerCarousel bannerCarousel = (BannerCarousel) ViewBindings.findChildViewById(view, R.id.banner_carousel);
        if (bannerCarousel != null) {
            i4 = R.id.container_top_1;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.container_top_1);
            if (findChildViewById != null) {
                y2 a10 = y2.a(findChildViewById);
                i4 = R.id.container_top_2;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.container_top_2);
                if (findChildViewById2 != null) {
                    y2 a11 = y2.a(findChildViewById2);
                    i4 = R.id.container_top_3;
                    View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.container_top_3);
                    if (findChildViewById3 != null) {
                        y2 a12 = y2.a(findChildViewById3);
                        i4 = R.id.recycler;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler);
                        if (recyclerView != null) {
                            i4 = R.id.swipe_refresh_layout;
                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_refresh_layout);
                            if (swipeRefreshLayout != null) {
                                i4 = R.id.tv_empty_list;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty_list);
                                if (textView != null) {
                                    return new r1((ConstraintLayout) view, bannerCarousel, a10, a11, a12, recyclerView, swipeRefreshLayout, textView);
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
    public static r1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_ranking, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62983a;
    }
}
