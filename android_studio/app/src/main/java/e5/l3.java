package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;

/* compiled from: LayoutBannerCarouselBinding.java */
/* loaded from: classes3.dex */
public final class l3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f62710a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewPager2 f62711b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TabLayout f62712c;

    private l3(@NonNull FrameLayout frameLayout, @NonNull ViewPager2 viewPager2, @NonNull TabLayout tabLayout) {
        this.f62710a = frameLayout;
        this.f62711b = viewPager2;
        this.f62712c = tabLayout;
    }

    @NonNull
    public static l3 a(@NonNull View view) {
        int i4 = R.id.hot_anchor_banners_pager;
        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.hot_anchor_banners_pager);
        if (viewPager2 != null) {
            i4 = R.id.tabs;
            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
            if (tabLayout != null) {
                return new l3((FrameLayout) view, viewPager2, tabLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static l3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_banner_carousel, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f62710a;
    }
}
