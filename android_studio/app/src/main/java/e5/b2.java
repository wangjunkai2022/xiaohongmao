package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import java.util.Objects;

/* compiled from: IncludeStatusbarBinding.java */
/* loaded from: classes3.dex */
public final class b2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62273a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f62274b;

    private b2(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f62273a = linearLayout;
        this.f62274b = linearLayout2;
    }

    @NonNull
    public static b2 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        LinearLayout linearLayout = (LinearLayout) view;
        return new b2(linearLayout, linearLayout);
    }

    @NonNull
    public static b2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.include_statusbar, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62273a;
    }
}
