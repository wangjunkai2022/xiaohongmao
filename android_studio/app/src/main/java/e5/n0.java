package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogSeatRankBinding.java */
/* loaded from: classes3.dex */
public final class n0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62762a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f62763b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f62764c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SwipeRefreshLayout f62765d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62766e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62767f;

    private n0(@NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62762a = constraintLayout;
        this.f62763b = frameLayout;
        this.f62764c = recyclerView;
        this.f62765d = swipeRefreshLayout;
        this.f62766e = textView;
        this.f62767f = textView2;
    }

    @NonNull
    public static n0 a(@NonNull View view) {
        int i4 = R.id.fl_peerage_ad;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_peerage_ad);
        if (frameLayout != null) {
            i4 = R.id.frag_seat_recycler;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.frag_seat_recycler);
            if (recyclerView != null) {
                i4 = R.id.swipe_refresh_layout;
                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_refresh_layout);
                if (swipeRefreshLayout != null) {
                    i4 = R.id.tv_empty_list;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty_list);
                    if (textView != null) {
                        i4 = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            return new n0((ConstraintLayout) view, frameLayout, recyclerView, swipeRefreshLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static n0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_seat_rank, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62762a;
    }
}
