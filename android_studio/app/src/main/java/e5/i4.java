package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import java.util.Objects;

/* compiled from: PunishmentWinLabelBinding.java */
/* loaded from: classes3.dex */
public final class i4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextView f62564a;

    private i4(@NonNull TextView textView) {
        this.f62564a = textView;
    }

    @NonNull
    public static i4 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new i4((TextView) view);
    }

    @NonNull
    public static i4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.punishment_win_label, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public TextView getRoot() {
        return this.f62564a;
    }
}
