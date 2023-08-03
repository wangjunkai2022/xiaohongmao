package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.room.gift.LocalAnimPlayerView;

/* compiled from: RoomLiveLocalGiftListBinding.java */
/* loaded from: classes3.dex */
public final class q4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62966a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LocalAnimPlayerView f62967b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LocalAnimPlayerView f62968c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f62969d;

    private q4(@NonNull LinearLayout linearLayout, @NonNull LocalAnimPlayerView localAnimPlayerView, @NonNull LocalAnimPlayerView localAnimPlayerView2, @NonNull LinearLayout linearLayout2) {
        this.f62966a = linearLayout;
        this.f62967b = localAnimPlayerView;
        this.f62968c = localAnimPlayerView2;
        this.f62969d = linearLayout2;
    }

    @NonNull
    public static q4 a(@NonNull View view) {
        int i4 = R.id.local_gift_anim_1;
        LocalAnimPlayerView localAnimPlayerView = (LocalAnimPlayerView) ViewBindings.findChildViewById(view, R.id.local_gift_anim_1);
        if (localAnimPlayerView != null) {
            i4 = R.id.local_gift_anim_2;
            LocalAnimPlayerView localAnimPlayerView2 = (LocalAnimPlayerView) ViewBindings.findChildViewById(view, R.id.local_gift_anim_2);
            if (localAnimPlayerView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new q4(linearLayout, localAnimPlayerView, localAnimPlayerView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static q4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.room_live_local_gift_list, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62966a;
    }
}
