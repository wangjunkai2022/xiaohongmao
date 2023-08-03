package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.util.NestedScrollableHost;

/* compiled from: LayoutCarouselBinding.java */
/* loaded from: classes3.dex */
public final class m3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final NestedScrollableHost f62744a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewPager2 f62745b;

    private m3(@NonNull NestedScrollableHost nestedScrollableHost, @NonNull ViewPager2 viewPager2) {
        this.f62744a = nestedScrollableHost;
        this.f62745b = viewPager2;
    }

    @NonNull
    public static m3 a(@NonNull View view) {
        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
        if (viewPager2 != null) {
            return new m3((NestedScrollableHost) view, viewPager2);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.view_pager)));
    }

    @NonNull
    public static m3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_carousel, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public NestedScrollableHost getRoot() {
        return this.f62744a;
    }
}
