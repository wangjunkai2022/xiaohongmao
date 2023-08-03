package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.zhy.view.flowlayout.TagFlowLayout;

/* compiled from: RecommendThemTagflowLayoutBinding.java */
/* loaded from: classes3.dex */
public final class l4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62713a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TagFlowLayout f62714b;

    private l4(@NonNull RelativeLayout relativeLayout, @NonNull TagFlowLayout tagFlowLayout) {
        this.f62713a = relativeLayout;
        this.f62714b = tagFlowLayout;
    }

    @NonNull
    public static l4 a(@NonNull View view) {
        TagFlowLayout tagFlowLayout = (TagFlowLayout) ViewBindings.findChildViewById(view, R.id.id_flowlayout);
        if (tagFlowLayout != null) {
            return new l4((RelativeLayout) view, tagFlowLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.id_flowlayout)));
    }

    @NonNull
    public static l4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.recommend_them_tagflow_layout, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62713a;
    }
}
