package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.banner.BannerCarousel;

/* compiled from: FragmentChatListBinding.java */
/* loaded from: classes3.dex */
public final class c1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62285a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BannerCarousel f62286b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f62287c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62288d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ContentLoadingProgressBar f62289e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SearchView f62290f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62291g;

    private c1(@NonNull ConstraintLayout constraintLayout, @NonNull BannerCarousel bannerCarousel, @NonNull RecyclerView recyclerView, @NonNull ImageView imageView, @NonNull ContentLoadingProgressBar contentLoadingProgressBar, @NonNull SearchView searchView, @NonNull TextView textView) {
        this.f62285a = constraintLayout;
        this.f62286b = bannerCarousel;
        this.f62287c = recyclerView;
        this.f62288d = imageView;
        this.f62289e = contentLoadingProgressBar;
        this.f62290f = searchView;
        this.f62291g = textView;
    }

    @NonNull
    public static c1 a(@NonNull View view) {
        int i4 = R.id.banner_carousel;
        BannerCarousel bannerCarousel = (BannerCarousel) ViewBindings.findChildViewById(view, R.id.banner_carousel);
        if (bannerCarousel != null) {
            i4 = R.id.chat_list;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.chat_list);
            if (recyclerView != null) {
                i4 = R.id.iv_empty;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_empty);
                if (imageView != null) {
                    i4 = R.id.progress;
                    ContentLoadingProgressBar contentLoadingProgressBar = (ContentLoadingProgressBar) ViewBindings.findChildViewById(view, R.id.progress);
                    if (contentLoadingProgressBar != null) {
                        i4 = R.id.search;
                        SearchView searchView = (SearchView) ViewBindings.findChildViewById(view, R.id.search);
                        if (searchView != null) {
                            i4 = R.id.tv_empty;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty);
                            if (textView != null) {
                                return new c1((ConstraintLayout) view, bannerCarousel, recyclerView, imageView, contentLoadingProgressBar, searchView, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static c1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_chat_list, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62285a;
    }
}
