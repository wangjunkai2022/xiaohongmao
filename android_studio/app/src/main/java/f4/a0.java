package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import b4.b;
import java.util.Objects;

/* compiled from: ItemBannerBinding.java */
/* loaded from: classes3.dex */
public final class a0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f65406a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f65407b;

    private a0(@NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.f65406a = imageView;
        this.f65407b = imageView2;
    }

    @NonNull
    public static a0 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        ImageView imageView = (ImageView) view;
        return new a0(imageView, imageView);
    }

    @NonNull
    public static a0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2165x1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ImageView getRoot() {
        return this.f65406a;
    }
}
