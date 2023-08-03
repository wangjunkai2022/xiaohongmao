package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: ButtonSwitchToRightPkBinding.java */
/* loaded from: classes3.dex */
public final class m implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62715a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62716b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f62717c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f62718d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62719e;

    private m(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f62715a = linearLayout;
        this.f62716b = imageView;
        this.f62717c = simpleDraweeView;
        this.f62718d = linearLayout2;
        this.f62719e = textView;
    }

    @NonNull
    public static m a(@NonNull View view) {
        int i4 = R.id.comp_switch_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.comp_switch_icon);
        if (imageView != null) {
            i4 = R.id.img_user_avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_user_avatar);
            if (simpleDraweeView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i4 = R.id.tv_right_competitor_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_right_competitor_name);
                if (textView != null) {
                    return new m(linearLayout, imageView, simpleDraweeView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static m c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.button_switch_to_right_pk, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62715a;
    }
}
