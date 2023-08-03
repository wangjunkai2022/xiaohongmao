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

/* compiled from: LayoutLaunchadBinding.java */
/* loaded from: classes3.dex */
public final class q3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62962a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62963b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f62964c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62965d;

    private q3(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView) {
        this.f62962a = constraintLayout;
        this.f62963b = imageView;
        this.f62964c = constraintLayout2;
        this.f62965d = textView;
    }

    @NonNull
    public static q3 a(@NonNull View view) {
        int i4 = R.id.bg_launchad;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_launchad);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_launchad_timer);
            if (textView != null) {
                return new q3(constraintLayout, imageView, constraintLayout, textView);
            }
            i4 = R.id.tv_launchad_timer;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static q3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_launchad, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62962a;
    }
}
