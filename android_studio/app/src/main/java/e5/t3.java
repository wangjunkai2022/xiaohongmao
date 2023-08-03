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

/* compiled from: LayoutPkTimerBinding.java */
/* loaded from: classes3.dex */
public final class t3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63154a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63155b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f63156c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63157d;

    private t3(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView) {
        this.f63154a = constraintLayout;
        this.f63155b = imageView;
        this.f63156c = constraintLayout2;
        this.f63157d = textView;
    }

    @NonNull
    public static t3 a(@NonNull View view) {
        int i4 = R.id.ic_pk_timer;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_pk_timer);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pk_timer);
            if (textView != null) {
                return new t3(constraintLayout, imageView, constraintLayout, textView);
            }
            i4 = R.id.tv_pk_timer;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static t3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_pk_timer, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63154a;
    }
}
