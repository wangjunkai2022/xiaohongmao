package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentRankBinding.java */
/* loaded from: classes3.dex */
public final class p1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62893a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final y2 f62894b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final y2 f62895c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final y2 f62896d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RecyclerView f62897e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SwipeRefreshLayout f62898f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62899g;

    private p1(@NonNull ConstraintLayout constraintLayout, @NonNull y2 y2Var, @NonNull y2 y2Var2, @NonNull y2 y2Var3, @NonNull RecyclerView recyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull TextView textView) {
        this.f62893a = constraintLayout;
        this.f62894b = y2Var;
        this.f62895c = y2Var2;
        this.f62896d = y2Var3;
        this.f62897e = recyclerView;
        this.f62898f = swipeRefreshLayout;
        this.f62899g = textView;
    }

    @NonNull
    public static p1 a(@NonNull View view) {
        int i4 = R.id.container_top_1;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.container_top_1);
        if (findChildViewById != null) {
            y2 a10 = y2.a(findChildViewById);
            i4 = R.id.container_top_2;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.container_top_2);
            if (findChildViewById2 != null) {
                y2 a11 = y2.a(findChildViewById2);
                i4 = R.id.container_top_3;
                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.container_top_3);
                if (findChildViewById3 != null) {
                    y2 a12 = y2.a(findChildViewById3);
                    i4 = R.id.recycler;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler);
                    if (recyclerView != null) {
                        i4 = R.id.swipe_refresh_layout;
                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_refresh_layout);
                        if (swipeRefreshLayout != null) {
                            i4 = R.id.tv_empty_list;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty_list);
                            if (textView != null) {
                                return new p1((ConstraintLayout) view, a10, a11, a12, recyclerView, swipeRefreshLayout, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static p1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_rank, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62893a;
    }
}
