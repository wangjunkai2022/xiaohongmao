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
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: PinnedMsgItemviewCollapsedBinding.java */
/* loaded from: classes3.dex */
public final class y3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63377a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f63378b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f63379c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f63380d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63381e;

    private y3(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView) {
        this.f63377a = constraintLayout;
        this.f63378b = simpleDraweeView;
        this.f63379c = imageView;
        this.f63380d = constraintLayout2;
        this.f63381e = textView;
    }

    @NonNull
    public static y3 a(@NonNull View view) {
        int i4 = R.id.ivAvatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivAvatar);
        if (simpleDraweeView != null) {
            i4 = R.id.ivCoin;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivCoin);
            if (imageView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i4 = R.id.tvPrice;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvPrice);
                if (textView != null) {
                    return new y3(constraintLayout, simpleDraweeView, imageView, constraintLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static y3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.pinned_msg_itemview_collapsed, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63377a;
    }
}
