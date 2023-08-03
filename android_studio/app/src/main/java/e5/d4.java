package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.ksyun.media.player.KSYTextureView;
import com.opensource.svgaplayer.SVGAImageView;
import com.qennnsad.aknkaksd.presentation.ui.widget.PkInfoPanel;

/* compiled from: PkDoubleVideoWatcherKsyBinding.java */
/* loaded from: classes3.dex */
public final class d4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62326a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62327b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62328c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62329d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f62330e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final PkInfoPanel f62331f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final PkInfoPanel f62332g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SVGAImageView f62333h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final m f62334i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final KSYTextureView f62335j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f62336k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f62337l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f62338m;

    private d4(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout, @NonNull PkInfoPanel pkInfoPanel, @NonNull PkInfoPanel pkInfoPanel2, @NonNull SVGAImageView sVGAImageView, @NonNull m mVar, @NonNull KSYTextureView kSYTextureView, @NonNull View view, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3) {
        this.f62326a = relativeLayout;
        this.f62327b = imageView;
        this.f62328c = imageView2;
        this.f62329d = imageView3;
        this.f62330e = frameLayout;
        this.f62331f = pkInfoPanel;
        this.f62332g = pkInfoPanel2;
        this.f62333h = sVGAImageView;
        this.f62334i = mVar;
        this.f62335j = kSYTextureView;
        this.f62336k = view;
        this.f62337l = relativeLayout2;
        this.f62338m = relativeLayout3;
    }

    @NonNull
    public static d4 a(@NonNull View view) {
        int i4 = R.id.iv_pk_match_result_draw;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pk_match_result_draw);
        if (imageView != null) {
            i4 = R.id.iv_pk_match_result_left;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pk_match_result_left);
            if (imageView2 != null) {
                i4 = R.id.iv_pk_match_result_right;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pk_match_result_right);
                if (imageView3 != null) {
                    i4 = R.id.pk_info_container;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.pk_info_container);
                    if (frameLayout != null) {
                        i4 = R.id.pk_info_panel;
                        PkInfoPanel pkInfoPanel = (PkInfoPanel) ViewBindings.findChildViewById(view, R.id.pk_info_panel);
                        if (pkInfoPanel != null) {
                            i4 = R.id.pk_info_panel_reversed;
                            PkInfoPanel pkInfoPanel2 = (PkInfoPanel) ViewBindings.findChildViewById(view, R.id.pk_info_panel_reversed);
                            if (pkInfoPanel2 != null) {
                                i4 = R.id.room_svga;
                                SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.room_svga);
                                if (sVGAImageView != null) {
                                    i4 = R.id.switch_to_right_pk;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.switch_to_right_pk);
                                    if (findChildViewById != null) {
                                        m a10 = m.a(findChildViewById);
                                        i4 = R.id.tx_view_video;
                                        KSYTextureView kSYTextureView = (KSYTextureView) ViewBindings.findChildViewById(view, R.id.tx_view_video);
                                        if (kSYTextureView != null) {
                                            i4 = R.id.video_baseline;
                                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.video_baseline);
                                            if (findChildViewById2 != null) {
                                                i4 = R.id.video_pair;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.video_pair);
                                                if (relativeLayout != null) {
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) view;
                                                    return new d4(relativeLayout2, imageView, imageView2, imageView3, frameLayout, pkInfoPanel, pkInfoPanel2, sVGAImageView, a10, kSYTextureView, findChildViewById2, relativeLayout, relativeLayout2);
                                                }
                                            }
                                        }
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
    public static d4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.pk_double_video_watcher_ksy, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62326a;
    }
}
