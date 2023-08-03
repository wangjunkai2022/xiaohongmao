package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;

/* compiled from: FragMainIndexBinding.java */
/* loaded from: classes3.dex */
public final class t0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f63130a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63131b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f63132c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f63133d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f63134e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageButton f63135f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63136g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f63137h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TabLayout f63138i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ViewPager2 f63139j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final FrameLayout f63140k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final FrameLayout f63141l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final FrameLayout f63142m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f63143n;

    private t0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageButton imageButton, @NonNull TextView textView, @NonNull ImageView imageView5, @NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView2) {
        this.f63130a = linearLayout;
        this.f63131b = imageView;
        this.f63132c = imageView2;
        this.f63133d = imageView3;
        this.f63134e = imageView4;
        this.f63135f = imageButton;
        this.f63136g = textView;
        this.f63137h = imageView5;
        this.f63138i = tabLayout;
        this.f63139j = viewPager2;
        this.f63140k = frameLayout;
        this.f63141l = frameLayout2;
        this.f63142m = frameLayout3;
        this.f63143n = textView2;
    }

    @NonNull
    public static t0 a(@NonNull View view) {
        int i4 = R.id.ic_home_casino;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_home_casino);
        if (imageView != null) {
            i4 = R.id.ic_home_cup;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_home_cup);
            if (imageView2 != null) {
                i4 = R.id.ic_home_header;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_home_header);
                if (imageView3 != null) {
                    i4 = R.id.main_index_game_center_voucher;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.main_index_game_center_voucher);
                    if (imageView4 != null) {
                        i4 = R.id.main_index_imgbtn_chat;
                        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.main_index_imgbtn_chat);
                        if (imageButton != null) {
                            i4 = R.id.main_index_imgbtn_search;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.main_index_imgbtn_search);
                            if (textView != null) {
                                i4 = R.id.main_index_pk_on;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.main_index_pk_on);
                                if (imageView5 != null) {
                                    i4 = R.id.main_index_tab_layout;
                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.main_index_tab_layout);
                                    if (tabLayout != null) {
                                        i4 = R.id.main_index_view_pager;
                                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.main_index_view_pager);
                                        if (viewPager2 != null) {
                                            i4 = R.id.main_tab_hint_arrow;
                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.main_tab_hint_arrow);
                                            if (frameLayout != null) {
                                                i4 = R.id.mian_index_game_center;
                                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mian_index_game_center);
                                                if (frameLayout2 != null) {
                                                    i4 = R.id.mian_index_pk;
                                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mian_index_pk);
                                                    if (frameLayout3 != null) {
                                                        i4 = R.id.new_msg;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.new_msg);
                                                        if (textView2 != null) {
                                                            return new t0((LinearLayout) view, imageView, imageView2, imageView3, imageView4, imageButton, textView, imageView5, tabLayout, viewPager2, frameLayout, frameLayout2, frameLayout3, textView2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static t0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.frag_main_index, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f63130a;
    }
}
