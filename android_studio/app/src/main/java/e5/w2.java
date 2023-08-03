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

/* compiled from: ItemPlayerSideBtnBinding.java */
/* loaded from: classes3.dex */
public final class w2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63277a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63278b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63279c;

    private w2(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f63277a = constraintLayout;
        this.f63278b = imageView;
        this.f63279c = textView;
    }

    @NonNull
    public static w2 a(@NonNull View view) {
        int i4 = R.id.image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
        if (imageView != null) {
            i4 = R.id.tv_indicator;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_indicator);
            if (textView != null) {
                return new w2((ConstraintLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static w2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_player_side_btn, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63277a;
    }
}
