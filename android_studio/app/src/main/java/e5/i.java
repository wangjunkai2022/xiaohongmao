package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.view.MySwipeView;
import com.qennnsad.aknkaksd.util.ScrollableLayout;
import master.flame.danmaku.ui.widget.DanmakuView;

/* compiled from: ActivityPlayerBinding.java */
/* loaded from: classes3.dex */
public final class i implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62517a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final DanmakuView f62518b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final DanmakuView f62519c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f62520d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final f3 f62521e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f62522f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final MySwipeView f62523g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f62524h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ScrollableLayout f62525i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f62526j;

    private i(@NonNull RelativeLayout relativeLayout, @NonNull DanmakuView danmakuView, @NonNull DanmakuView danmakuView2, @NonNull View view, @NonNull f3 f3Var, @NonNull RelativeLayout relativeLayout2, @NonNull MySwipeView mySwipeView, @NonNull View view2, @NonNull ScrollableLayout scrollableLayout, @NonNull ImageView imageView) {
        this.f62517a = relativeLayout;
        this.f62518b = danmakuView;
        this.f62519c = danmakuView2;
        this.f62520d = view;
        this.f62521e = f3Var;
        this.f62522f = relativeLayout2;
        this.f62523g = mySwipeView;
        this.f62524h = view2;
        this.f62525i = scrollableLayout;
        this.f62526j = imageView;
    }

    @NonNull
    public static i a(@NonNull View view) {
        int i4 = R.id.mrl_danmaku;
        DanmakuView danmakuView = (DanmakuView) ViewBindings.findChildViewById(view, R.id.mrl_danmaku);
        if (danmakuView != null) {
            i4 = R.id.mrl_danmaku_level;
            DanmakuView danmakuView2 = (DanmakuView) ViewBindings.findChildViewById(view, R.id.mrl_danmaku_level);
            if (danmakuView2 != null) {
                i4 = R.id.next;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.next);
                if (findChildViewById != null) {
                    i4 = R.id.player;
                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.player);
                    if (findChildViewById2 != null) {
                        f3 a10 = f3.a(findChildViewById2);
                        RelativeLayout relativeLayout = (RelativeLayout) view;
                        i4 = R.id.player_swipe_view;
                        MySwipeView mySwipeView = (MySwipeView) ViewBindings.findChildViewById(view, R.id.player_swipe_view);
                        if (mySwipeView != null) {
                            i4 = R.id.prev;
                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.prev);
                            if (findChildViewById3 != null) {
                                i4 = R.id.scrollable;
                                ScrollableLayout scrollableLayout = (ScrollableLayout) ViewBindings.findChildViewById(view, R.id.scrollable);
                                if (scrollableLayout != null) {
                                    i4 = R.id.testDialogButton;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.testDialogButton);
                                    if (imageView != null) {
                                        return new i(relativeLayout, danmakuView, danmakuView2, findChildViewById, a10, relativeLayout, mySwipeView, findChildViewById3, scrollableLayout, imageView);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static i c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.activity_player, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62517a;
    }
}
