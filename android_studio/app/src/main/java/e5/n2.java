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

/* compiled from: ItemFollowedAnchorBinding.java */
/* loaded from: classes3.dex */
public final class n2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62775a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final r2 f62776b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62777c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62778d;

    private n2(@NonNull LinearLayout linearLayout, @NonNull r2 r2Var, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f62775a = linearLayout;
        this.f62776b = r2Var;
        this.f62777c = imageView;
        this.f62778d = textView;
    }

    @NonNull
    public static n2 a(@NonNull View view) {
        int i4 = R.id.anchorData;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.anchorData);
        if (findChildViewById != null) {
            r2 a10 = r2.a(findChildViewById);
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.item_follow_anchor_sex);
            if (imageView != null) {
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.item_followed_anchor_tv_nickname);
                if (textView != null) {
                    return new n2((LinearLayout) view, a10, imageView, textView);
                }
                i4 = R.id.item_followed_anchor_tv_nickname;
            } else {
                i4 = R.id.item_follow_anchor_sex;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static n2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_followed_anchor, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62775a;
    }
}
