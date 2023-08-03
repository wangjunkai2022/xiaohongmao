package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.banner.BannerCarousel;

/* compiled from: FragMainMeBinding.java */
/* loaded from: classes3.dex */
public final class u0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f63171a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BannerCarousel f63172b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f63173c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63174d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final s3 f63175e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f63176f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SwipeRefreshLayout f63177g;

    private u0(@NonNull FrameLayout frameLayout, @NonNull BannerCarousel bannerCarousel, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull s3 s3Var, @NonNull ImageView imageView, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.f63171a = frameLayout;
        this.f63172b = bannerCarousel;
        this.f63173c = recyclerView;
        this.f63174d = textView;
        this.f63175e = s3Var;
        this.f63176f = imageView;
        this.f63177g = swipeRefreshLayout;
    }

    @NonNull
    public static u0 a(@NonNull View view) {
        int i4 = R.id.banner_carousel;
        BannerCarousel bannerCarousel = (BannerCarousel) ViewBindings.findChildViewById(view, R.id.banner_carousel);
        if (bannerCarousel != null) {
            i4 = R.id.fragment_me_menus_layout;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.fragment_me_menus_layout);
            if (recyclerView != null) {
                i4 = R.id.fragment_tv_version;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.fragment_tv_version);
                if (textView != null) {
                    i4 = R.id.header;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.header);
                    if (findChildViewById != null) {
                        s3 a10 = s3.a(findChildViewById);
                        i4 = R.id.iv_open_peerage;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_open_peerage);
                        if (imageView != null) {
                            i4 = R.id.swipe_refresh_layout;
                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_refresh_layout);
                            if (swipeRefreshLayout != null) {
                                return new u0((FrameLayout) view, bannerCarousel, recyclerView, textView, a10, imageView, swipeRefreshLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static u0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.frag_main_me, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f63171a;
    }
}
