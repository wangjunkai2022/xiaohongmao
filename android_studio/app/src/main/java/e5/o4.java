package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: RoomLiveAnimBinding.java */
/* loaded from: classes3.dex */
public final class o4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62874a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f62875b;

    private o4(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2) {
        this.f62874a = relativeLayout;
        this.f62875b = relativeLayout2;
    }

    @NonNull
    public static o4 a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.room_live_show_anim_layout);
        if (relativeLayout != null) {
            return new o4((RelativeLayout) view, relativeLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.room_live_show_anim_layout)));
    }

    @NonNull
    public static o4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.room_live_anim, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62874a;
    }
}
