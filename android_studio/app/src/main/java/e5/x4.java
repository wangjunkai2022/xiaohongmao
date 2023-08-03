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

/* compiled from: ViewPeerageLoginBinding.java */
/* loaded from: classes3.dex */
public final class x4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63329a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63330b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63331c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63332d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f63333e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f63334f;

    private x4(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3) {
        this.f63329a = constraintLayout;
        this.f63330b = imageView;
        this.f63331c = textView;
        this.f63332d = textView2;
        this.f63333e = simpleDraweeView;
        this.f63334f = textView3;
    }

    @NonNull
    public static x4 a(@NonNull View view) {
        int i4 = R.id.peerage_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.peerage_icon);
        if (imageView != null) {
            i4 = R.id.peerage_info;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.peerage_info);
            if (textView != null) {
                i4 = R.id.peerage_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.peerage_name);
                if (textView2 != null) {
                    i4 = R.id.peerage_user_icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.peerage_user_icon);
                    if (simpleDraweeView != null) {
                        i4 = R.id.peerage_user_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.peerage_user_name);
                        if (textView3 != null) {
                            return new x4((ConstraintLayout) view, imageView, textView, textView2, simpleDraweeView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static x4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.view_peerage_login, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63329a;
    }
}
