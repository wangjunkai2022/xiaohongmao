package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import java.util.Objects;

/* compiled from: ItemIndicatorBinding.java */
/* loaded from: classes3.dex */
public final class s2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f63077a;

    private s2(@NonNull View view) {
        this.f63077a = view;
    }

    @NonNull
    public static s2 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new s2(view);
    }

    @NonNull
    public static s2 b(@NonNull LayoutInflater layoutInflater) {
        return c(layoutInflater, null, false);
    }

    @NonNull
    public static s2 c(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_indicator, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f63077a;
    }
}
