package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;

/* compiled from: FragmentRankListBinding.java */
/* loaded from: classes3.dex */
public final class q1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62950a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62951b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f62952c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Guideline f62953d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62954e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TabLayout f62955f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager2 f62956g;

    private q1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout2, @NonNull Guideline guideline, @NonNull ImageView imageView2, @NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2) {
        this.f62950a = constraintLayout;
        this.f62951b = imageView;
        this.f62952c = constraintLayout2;
        this.f62953d = guideline;
        this.f62954e = imageView2;
        this.f62955f = tabLayout;
        this.f62956g = viewPager2;
    }

    @NonNull
    public static q1 a(@NonNull View view) {
        int i4 = R.id.bg_game_rank;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_game_rank);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i4 = R.id.guideline;
            Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline);
            if (guideline != null) {
                i4 = R.id.iv_game_rank_decor;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_game_rank_decor);
                if (imageView2 != null) {
                    i4 = R.id.tab_layout;
                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tab_layout);
                    if (tabLayout != null) {
                        i4 = R.id.view_pager;
                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
                        if (viewPager2 != null) {
                            return new q1(constraintLayout, imageView, constraintLayout, guideline, imageView2, tabLayout, viewPager2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static q1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_rank_list, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62950a;
    }
}
