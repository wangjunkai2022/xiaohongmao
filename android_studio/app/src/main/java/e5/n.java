package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: CompetitorScoresLayout2Binding.java */
/* loaded from: classes3.dex */
public final class n implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62751a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62752b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62753c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f62754d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f62755e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final FrameLayout f62756f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62757g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62758h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ConstraintLayout f62759i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final i4 f62760j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final i4 f62761k;

    private n(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull FrameLayout frameLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ConstraintLayout constraintLayout3, @NonNull i4 i4Var, @NonNull i4 i4Var2) {
        this.f62751a = constraintLayout;
        this.f62752b = textView;
        this.f62753c = textView2;
        this.f62754d = frameLayout;
        this.f62755e = constraintLayout2;
        this.f62756f = frameLayout2;
        this.f62757g = textView3;
        this.f62758h = textView4;
        this.f62759i = constraintLayout3;
        this.f62760j = i4Var;
        this.f62761k = i4Var2;
    }

    @NonNull
    public static n a(@NonNull View view) {
        int i4 = R.id.label_our_side;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.label_our_side);
        if (textView != null) {
            i4 = R.id.label_their_side;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.label_their_side);
            if (textView2 != null) {
                i4 = R.id.left_pk_scores;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.left_pk_scores);
                if (frameLayout != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i4 = R.id.right_pk_scores;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.right_pk_scores);
                    if (frameLayout2 != null) {
                        i4 = R.id.tv_left_pk_scores;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_left_pk_scores);
                        if (textView3 != null) {
                            i4 = R.id.tv_right_pk_scores;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_right_pk_scores);
                            if (textView4 != null) {
                                i4 = R.id.vsFlowThumb;
                                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.vsFlowThumb);
                                if (constraintLayout2 != null) {
                                    i4 = R.id.win_label_left;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.win_label_left);
                                    if (findChildViewById != null) {
                                        i4 a10 = i4.a(findChildViewById);
                                        i4 = R.id.win_label_right;
                                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.win_label_right);
                                        if (findChildViewById2 != null) {
                                            return new n(constraintLayout, textView, textView2, frameLayout, constraintLayout, frameLayout2, textView3, textView4, constraintLayout2, a10, i4.a(findChildViewById2));
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
    public static n c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.competitor_scores_layout_2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62751a;
    }
}
