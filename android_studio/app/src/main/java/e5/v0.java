package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;

/* compiled from: FragMainRankBinding.java */
/* loaded from: classes3.dex */
public final class v0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63210a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TabLayout f63211b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewPager2 f63212c;

    private v0(@NonNull ConstraintLayout constraintLayout, @NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2) {
        this.f63210a = constraintLayout;
        this.f63211b = tabLayout;
        this.f63212c = viewPager2;
    }

    @NonNull
    public static v0 a(@NonNull View view) {
        int i4 = R.id.tab_layout;
        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tab_layout);
        if (tabLayout != null) {
            i4 = R.id.view_pager;
            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
            if (viewPager2 != null) {
                return new v0((ConstraintLayout) view, tabLayout, viewPager2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static v0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.frag_main_rank, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63210a;
    }
}
