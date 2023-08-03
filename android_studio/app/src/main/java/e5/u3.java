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
import com.opensource.svgaplayer.SVGAImageView;
import com.qennnsad.aknkaksd.presentation.ui.room.view.PeerageLoginView;

/* compiled from: LayoutSvgaAnimsWatcherBinding.java */
/* loaded from: classes3.dex */
public final class u3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f63197a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f63198b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PeerageLoginView f63199c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SVGAImageView f63200d;

    private u3(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull PeerageLoginView peerageLoginView, @NonNull SVGAImageView sVGAImageView) {
        this.f63197a = relativeLayout;
        this.f63198b = relativeLayout2;
        this.f63199c = peerageLoginView;
        this.f63200d = sVGAImageView;
    }

    @NonNull
    public static u3 a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i4 = R.id.room_peerage_login_info;
        PeerageLoginView peerageLoginView = (PeerageLoginView) ViewBindings.findChildViewById(view, R.id.room_peerage_login_info);
        if (peerageLoginView != null) {
            i4 = R.id.room_svga_peerage_login;
            SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.room_svga_peerage_login);
            if (sVGAImageView != null) {
                return new u3(relativeLayout, relativeLayout, peerageLoginView, sVGAImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static u3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_svga_anims_watcher, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f63197a;
    }
}
