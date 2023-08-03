package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import java.util.Objects;

/* compiled from: GphMediaTypeItemBinding.java */
/* loaded from: classes2.dex */
public final class f implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ImageButton f68983a;

    private f(@NonNull ImageButton imageButton) {
        this.f68983a = imageButton;
    }

    @NonNull
    public static f a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new f((ImageButton) view);
    }

    @NonNull
    public static f c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18098i0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ImageButton getRoot() {
        return this.f68983a;
    }
}
