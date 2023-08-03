package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: RankItemPanelPkBinding.java */
/* loaded from: classes3.dex */
public final class j4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62612a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f62613b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62614c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62615d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62616e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62617f;

    private j4(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62612a = constraintLayout;
        this.f62613b = constraintLayout2;
        this.f62614c = imageView;
        this.f62615d = imageView2;
        this.f62616e = textView;
        this.f62617f = textView2;
    }

    @NonNull
    public static j4 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = R.id.iv_defeats_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_defeats_icon);
        if (imageView != null) {
            i4 = R.id.iv_win_icon;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_win_icon);
            if (imageView2 != null) {
                i4 = R.id.tv_count_defeats;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_count_defeats);
                if (textView != null) {
                    i4 = R.id.tv_count_win;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_count_win);
                    if (textView2 != null) {
                        return new j4(constraintLayout, constraintLayout, imageView, imageView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static j4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.rank_item_panel_pk, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62612a;
    }
}
