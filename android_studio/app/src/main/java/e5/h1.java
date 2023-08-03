package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentFollowersBinding.java */
/* loaded from: classes3.dex */
public final class h1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62493a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f62494b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62495c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f62496d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SwipeRefreshLayout f62497e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Toolbar f62498f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62499g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62500h;

    private h1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62493a = constraintLayout;
        this.f62494b = imageButton;
        this.f62495c = imageView;
        this.f62496d = recyclerView;
        this.f62497e = swipeRefreshLayout;
        this.f62498f = toolbar;
        this.f62499g = textView;
        this.f62500h = textView2;
    }

    @NonNull
    public static h1 a(@NonNull View view) {
        int i4 = R.id.imgbtn_toolbar_back;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
        if (imageButton != null) {
            i4 = R.id.iv_search;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_search);
            if (imageView != null) {
                i4 = R.id.rv_followers;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_followers);
                if (recyclerView != null) {
                    i4 = R.id.swipe_refresh_layout;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_refresh_layout);
                    if (swipeRefreshLayout != null) {
                        i4 = R.id.toolbar;
                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                        if (toolbar != null) {
                            i4 = R.id.tv_empty;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty);
                            if (textView != null) {
                                i4 = R.id.tv_title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView2 != null) {
                                    return new h1((ConstraintLayout) view, imageButton, imageView, recyclerView, swipeRefreshLayout, toolbar, textView, textView2);
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
    public static h1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_followers, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62493a;
    }
}
