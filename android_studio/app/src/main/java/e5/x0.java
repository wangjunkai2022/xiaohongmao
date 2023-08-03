package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentAnchorGridBinding.java */
/* loaded from: classes3.dex */
public final class x0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f63295a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f63296b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63297c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f63298d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63299e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RecyclerView f63300f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SwipeRefreshLayout f63301g;

    private x0(@NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull RecyclerView recyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.f63295a = frameLayout;
        this.f63296b = relativeLayout;
        this.f63297c = textView;
        this.f63298d = linearLayout;
        this.f63299e = textView2;
        this.f63300f = recyclerView;
        this.f63301g = swipeRefreshLayout;
    }

    @NonNull
    public static x0 a(@NonNull View view) {
        int i4 = R.id.followed_anchor_rl_no_live;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.followed_anchor_rl_no_live);
        if (relativeLayout != null) {
            i4 = R.id.followed_anchor_tv_view_hot;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.followed_anchor_tv_view_hot);
            if (textView != null) {
                i4 = R.id.loadingFooter;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loadingFooter);
                if (linearLayout != null) {
                    i4 = R.id.loadingHeader;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.loadingHeader);
                    if (textView2 != null) {
                        i4 = R.id.recommend_anchor_recycler;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recommend_anchor_recycler);
                        if (recyclerView != null) {
                            i4 = R.id.swipeToRefresh;
                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipeToRefresh);
                            if (swipeRefreshLayout != null) {
                                return new x0((FrameLayout) view, relativeLayout, textView, linearLayout, textView2, recyclerView, swipeRefreshLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static x0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_anchor_grid, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f63295a;
    }
}
