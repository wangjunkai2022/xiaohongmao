package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentMainBinding.java */
/* loaded from: classes3.dex */
public final class k1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f62635a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f62636b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62637c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62638d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f62639e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f62640f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f62641g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f62642h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f62643i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f62644j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final FragmentContainerView f62645k;

    private k1(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull RelativeLayout relativeLayout5, @NonNull RelativeLayout relativeLayout6, @NonNull FragmentContainerView fragmentContainerView) {
        this.f62635a = frameLayout;
        this.f62636b = linearLayout;
        this.f62637c = imageView;
        this.f62638d = imageView2;
        this.f62639e = relativeLayout;
        this.f62640f = relativeLayout2;
        this.f62641g = relativeLayout3;
        this.f62642h = relativeLayout4;
        this.f62643i = relativeLayout5;
        this.f62644j = relativeLayout6;
        this.f62645k = fragmentContainerView;
    }

    @NonNull
    public static k1 a(@NonNull View view) {
        int i4 = R.id.main_bottomtab_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main_bottomtab_container);
        if (linearLayout != null) {
            i4 = R.id.main_imgbtn_room;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.main_imgbtn_room);
            if (imageView != null) {
                i4 = R.id.main_new_indicator;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.main_new_indicator);
                if (imageView2 != null) {
                    i4 = R.id.main_rl_chat;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main_rl_chat);
                    if (relativeLayout != null) {
                        i4 = R.id.main_rl_index;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main_rl_index);
                        if (relativeLayout2 != null) {
                            i4 = R.id.main_rl_mall;
                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main_rl_mall);
                            if (relativeLayout3 != null) {
                                i4 = R.id.main_rl_me;
                                RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main_rl_me);
                                if (relativeLayout4 != null) {
                                    i4 = R.id.main_rl_push;
                                    RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main_rl_push);
                                    if (relativeLayout5 != null) {
                                        i4 = R.id.main_rl_ranking_list;
                                        RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main_rl_ranking_list);
                                        if (relativeLayout6 != null) {
                                            i4 = R.id.nav_host_fragment;
                                            FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.nav_host_fragment);
                                            if (fragmentContainerView != null) {
                                                return new k1((FrameLayout) view, linearLayout, imageView, imageView2, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, fragmentContainerView);
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
    public static k1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_main, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f62635a;
    }
}
