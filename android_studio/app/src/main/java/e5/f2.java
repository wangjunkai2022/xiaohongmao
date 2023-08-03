package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: ItemBlacklistUserBinding.java */
/* loaded from: classes3.dex */
public final class f2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62400a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f62401b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f62402c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62403d;

    private f2(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f62400a = constraintLayout;
        this.f62401b = button;
        this.f62402c = simpleDraweeView;
        this.f62403d = textView;
    }

    @NonNull
    public static f2 a(@NonNull View view) {
        int i4 = R.id.btn_remove_blacklist;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_remove_blacklist);
        if (button != null) {
            i4 = R.id.iv_user_avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_user_avatar);
            if (simpleDraweeView != null) {
                i4 = R.id.tv_user_nickname;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_nickname);
                if (textView != null) {
                    return new f2((ConstraintLayout) view, button, simpleDraweeView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static f2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_blacklist_user, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62400a;
    }
}
