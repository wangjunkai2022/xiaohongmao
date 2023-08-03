package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: ItemCompetitorBinding.java */
/* loaded from: classes3.dex */
public final class k2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62646a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62647b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62648c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f62649d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62650e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ConstraintLayout f62651f;

    private k2(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull ConstraintLayout constraintLayout) {
        this.f62646a = relativeLayout;
        this.f62647b = imageView;
        this.f62648c = textView;
        this.f62649d = simpleDraweeView;
        this.f62650e = textView2;
        this.f62651f = constraintLayout;
    }

    @NonNull
    public static k2 a(@NonNull View view) {
        int i4 = R.id.item_competitor_gender;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.item_competitor_gender);
        if (imageView != null) {
            i4 = R.id.item_competitor_invite_btn;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.item_competitor_invite_btn);
            if (textView != null) {
                i4 = R.id.item_competitor_portrait;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.item_competitor_portrait);
                if (simpleDraweeView != null) {
                    i4 = R.id.item_competitor_username;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.item_competitor_username);
                    if (textView2 != null) {
                        i4 = R.id.lay_portrait;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.lay_portrait);
                        if (constraintLayout != null) {
                            return new k2((RelativeLayout) view, imageView, textView, simpleDraweeView, textView2, constraintLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static k2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_competitor, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62646a;
    }
}
