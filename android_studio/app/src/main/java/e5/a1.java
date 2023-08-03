package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;

/* compiled from: FragmentChatBinding.java */
/* loaded from: classes3.dex */
public final class a1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62231a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f62232b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62233c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62234d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62235e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TabLayout f62236f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager2 f62237g;

    private a1(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2) {
        this.f62231a = constraintLayout;
        this.f62232b = view;
        this.f62233c = imageView;
        this.f62234d = imageView2;
        this.f62235e = imageView3;
        this.f62236f = tabLayout;
        this.f62237g = viewPager2;
    }

    @NonNull
    public static a1 a(@NonNull View view) {
        int i4 = R.id.bgExtra;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bgExtra);
        if (findChildViewById != null) {
            i4 = R.id.indicator;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.indicator);
            if (imageView != null) {
                i4 = R.id.iv_chat_notifications;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_chat_notifications);
                if (imageView2 != null) {
                    i4 = R.id.iv_chat_subscribe;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_chat_subscribe);
                    if (imageView3 != null) {
                        i4 = R.id.tab_layout;
                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tab_layout);
                        if (tabLayout != null) {
                            i4 = R.id.view_pager;
                            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
                            if (viewPager2 != null) {
                                return new a1((ConstraintLayout) view, findChildViewById, imageView, imageView2, imageView3, tabLayout, viewPager2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static a1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_chat, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62231a;
    }
}
