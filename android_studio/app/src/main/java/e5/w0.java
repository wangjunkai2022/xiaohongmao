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

/* compiled from: FragMainRankListBinding.java */
/* loaded from: classes3.dex */
public final class w0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63254a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63255b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f63256c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Guideline f63257d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f63258e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TabLayout f63259f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager2 f63260g;

    private w0(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout2, @NonNull Guideline guideline, @NonNull ImageView imageView2, @NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2) {
        this.f63254a = constraintLayout;
        this.f63255b = imageView;
        this.f63256c = constraintLayout2;
        this.f63257d = guideline;
        this.f63258e = imageView2;
        this.f63259f = tabLayout;
        this.f63260g = viewPager2;
    }

    @NonNull
    public static w0 a(@NonNull View view) {
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
                            return new w0(constraintLayout, imageView, constraintLayout, guideline, imageView2, tabLayout, viewPager2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static w0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.frag_main_rank_list, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63254a;
    }
}
