package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: ItemContributorBinding.java */
/* loaded from: classes3.dex */
public final class l2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f62699a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f62700b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62701c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62702d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62703e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f62704f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f62705g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62706h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62707i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62708j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62709k;

    private l2(@NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f62699a = frameLayout;
        this.f62700b = simpleDraweeView;
        this.f62701c = imageView;
        this.f62702d = imageView2;
        this.f62703e = imageView3;
        this.f62704f = imageView4;
        this.f62705g = constraintLayout;
        this.f62706h = textView;
        this.f62707i = textView2;
        this.f62708j = textView3;
        this.f62709k = textView4;
    }

    @NonNull
    public static l2 a(@NonNull View view) {
        int i4 = R.id.iv_avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_avatar);
        if (simpleDraweeView != null) {
            i4 = R.id.iv_level;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_level);
            if (imageView != null) {
                i4 = R.id.iv_peerage;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_peerage);
                if (imageView2 != null) {
                    i4 = R.id.iv_sex;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_sex);
                    if (imageView3 != null) {
                        i4 = R.id.iv_top_bg;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_top_bg);
                        if (imageView4 != null) {
                            i4 = R.id.main;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.main);
                            if (constraintLayout != null) {
                                i4 = R.id.tv_coin_count;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coin_count);
                                if (textView != null) {
                                    i4 = R.id.tv_coin_hint;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coin_hint);
                                    if (textView2 != null) {
                                        i4 = R.id.tv_name;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                        if (textView3 != null) {
                                            i4 = R.id.tv_rank;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rank);
                                            if (textView4 != null) {
                                                return new l2((FrameLayout) view, simpleDraweeView, imageView, imageView2, imageView3, imageView4, constraintLayout, textView, textView2, textView3, textView4);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static l2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_contributor, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f62699a;
    }
}
