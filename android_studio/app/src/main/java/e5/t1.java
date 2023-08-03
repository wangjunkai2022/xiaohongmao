package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentSearchUserBinding.java */
/* loaded from: classes3.dex */
public final class t1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63144a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63145b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f63146c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SearchView f63147d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SwipeRefreshLayout f63148e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Toolbar f63149f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63150g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f63151h;

    private t1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull SearchView searchView, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f63144a = constraintLayout;
        this.f63145b = imageView;
        this.f63146c = recyclerView;
        this.f63147d = searchView;
        this.f63148e = swipeRefreshLayout;
        this.f63149f = toolbar;
        this.f63150g = textView;
        this.f63151h = textView2;
    }

    @NonNull
    public static t1 a(@NonNull View view) {
        int i4 = R.id.iv_ad;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_ad);
        if (imageView != null) {
            i4 = R.id.rv_search;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_search);
            if (recyclerView != null) {
                i4 = R.id.search_edit_content;
                SearchView searchView = (SearchView) ViewBindings.findChildViewById(view, R.id.search_edit_content);
                if (searchView != null) {
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
                                    return new t1((ConstraintLayout) view, imageView, recyclerView, searchView, swipeRefreshLayout, toolbar, textView, textView2);
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
    public static t1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_search_user, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63144a;
    }
}
