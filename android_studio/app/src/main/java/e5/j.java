package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.view.MySwipeView;

/* compiled from: ActivityRoomBinding.java */
/* loaded from: classes3.dex */
public final class j implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62565a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f62566b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MySwipeView f62567c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f62568d;

    private j(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull MySwipeView mySwipeView, @NonNull FrameLayout frameLayout2) {
        this.f62565a = relativeLayout;
        this.f62566b = frameLayout;
        this.f62567c = mySwipeView;
        this.f62568d = frameLayout2;
    }

    @NonNull
    public static j a(@NonNull View view) {
        int i4 = R.id.fragment_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_container);
        if (frameLayout != null) {
            i4 = R.id.publish_swipe_view;
            MySwipeView mySwipeView = (MySwipeView) ViewBindings.findChildViewById(view, R.id.publish_swipe_view);
            if (mySwipeView != null) {
                i4 = R.id.room_container;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.room_container);
                if (frameLayout2 != null) {
                    return new j((RelativeLayout) view, frameLayout, mySwipeView, frameLayout2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static j c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.activity_room, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62565a;
    }
}
