package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.carousel.LayoutCarousel;

/* compiled from: RoomButtonsSidePaneBinding.java */
/* loaded from: classes3.dex */
public final class m4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62746a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f62747b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LayoutCarousel f62748c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f62749d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62750e;

    private m4(@NonNull LinearLayout linearLayout, @NonNull ImageButton imageButton, @NonNull LayoutCarousel layoutCarousel, @NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.f62746a = linearLayout;
        this.f62747b = imageButton;
        this.f62748c = layoutCarousel;
        this.f62749d = frameLayout;
        this.f62750e = textView;
    }

    @NonNull
    public static m4 a(@NonNull View view) {
        int i4 = R.id.btn_fan_club;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_fan_club);
        if (imageButton != null) {
            i4 = R.id.layout_carousel;
            LayoutCarousel layoutCarousel = (LayoutCarousel) ViewBindings.findChildViewById(view, R.id.layout_carousel);
            if (layoutCarousel != null) {
                i4 = R.id.layout_fanclub_btns;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.layout_fanclub_btns);
                if (frameLayout != null) {
                    i4 = R.id.tv_fan_club_indicator;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fan_club_indicator);
                    if (textView != null) {
                        return new m4((LinearLayout) view, imageButton, layoutCarousel, frameLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static m4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.room_buttons_side_pane, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62746a;
    }
}
