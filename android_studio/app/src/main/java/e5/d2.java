package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import java.util.Objects;

/* compiled from: ItemBannerBinding.java */
/* loaded from: classes3.dex */
public final class d2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f62321a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62322b;

    private d2(@NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.f62321a = imageView;
        this.f62322b = imageView2;
    }

    @NonNull
    public static d2 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        ImageView imageView = (ImageView) view;
        return new d2(imageView, imageView);
    }

    @NonNull
    public static d2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_banner, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ImageView getRoot() {
        return this.f62321a;
    }
}
