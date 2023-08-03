package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.banner.BannerCarousel;
import java.util.Objects;

/* compiled from: ItemBannerListBinding.java */
/* loaded from: classes3.dex */
public final class e2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final BannerCarousel f62352a;

    private e2(@NonNull BannerCarousel bannerCarousel) {
        this.f62352a = bannerCarousel;
    }

    @NonNull
    public static e2 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new e2((BannerCarousel) view);
    }

    @NonNull
    public static e2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_banner_list, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public BannerCarousel getRoot() {
        return this.f62352a;
    }
}
