package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentContributorsBinding.java */
/* loaded from: classes3.dex */
public final class e1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62346a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f62347b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f62348c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final r1 f62349d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Toolbar f62350e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62351f;

    private e1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull LinearLayout linearLayout, @NonNull r1 r1Var, @NonNull Toolbar toolbar, @NonNull TextView textView) {
        this.f62346a = constraintLayout;
        this.f62347b = imageButton;
        this.f62348c = linearLayout;
        this.f62349d = r1Var;
        this.f62350e = toolbar;
        this.f62351f = textView;
    }

    @NonNull
    public static e1 a(@NonNull View view) {
        int i4 = R.id.imgbtn_toolbar_back;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
        if (imageButton != null) {
            i4 = R.id.ll_total_count;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_total_count);
            if (linearLayout != null) {
                i4 = R.id.ranking;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.ranking);
                if (findChildViewById != null) {
                    r1 a10 = r1.a(findChildViewById);
                    i4 = R.id.toolbar;
                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                    if (toolbar != null) {
                        i4 = R.id.tvTotalCoin;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvTotalCoin);
                        if (textView != null) {
                            return new e1((ConstraintLayout) view, imageButton, linearLayout, a10, toolbar, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static e1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_contributors, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62346a;
    }
}
