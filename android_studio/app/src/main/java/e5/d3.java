package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ItemSettingBinding.java */
/* loaded from: classes3.dex */
public final class d3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62323a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SwitchCompat f62324b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62325c;

    private d3(@NonNull ConstraintLayout constraintLayout, @NonNull SwitchCompat switchCompat, @NonNull TextView textView) {
        this.f62323a = constraintLayout;
        this.f62324b = switchCompat;
        this.f62325c = textView;
    }

    @NonNull
    public static d3 a(@NonNull View view) {
        int i4 = R.id.sw_enable;
        SwitchCompat switchCompat = (SwitchCompat) ViewBindings.findChildViewById(view, R.id.sw_enable);
        if (switchCompat != null) {
            i4 = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                return new d3((ConstraintLayout) view, switchCompat, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static d3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_setting, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62323a;
    }
}
