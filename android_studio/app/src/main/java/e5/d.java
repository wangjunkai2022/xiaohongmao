package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;

/* compiled from: ActivityChatRequestsBinding.java */
/* loaded from: classes3.dex */
public final class d implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62310a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TabLayout f62311b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Toolbar f62312c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager2 f62313d;

    private d(@NonNull ConstraintLayout constraintLayout, @NonNull TabLayout tabLayout, @NonNull Toolbar toolbar, @NonNull ViewPager2 viewPager2) {
        this.f62310a = constraintLayout;
        this.f62311b = tabLayout;
        this.f62312c = toolbar;
        this.f62313d = viewPager2;
    }

    @NonNull
    public static d a(@NonNull View view) {
        int i4 = R.id.tab_layout;
        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tab_layout);
        if (tabLayout != null) {
            i4 = R.id.toolbar;
            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
            if (toolbar != null) {
                i4 = R.id.view_pager;
                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
                if (viewPager2 != null) {
                    return new d((ConstraintLayout) view, tabLayout, toolbar, viewPager2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static d c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.activity_chat_requests, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62310a;
    }
}
