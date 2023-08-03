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

/* compiled from: ItemRankingBinding.java */
/* loaded from: classes3.dex */
public final class x2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f63312a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f63313b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f63314c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f63315d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f63316e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f63317f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f63318g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ConstraintLayout f63319h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final j4 f63320i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f63321j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f63322k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f63323l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f63324m;

    private x2(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ConstraintLayout constraintLayout, @NonNull j4 j4Var, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f63312a = frameLayout;
        this.f63313b = textView;
        this.f63314c = imageView;
        this.f63315d = imageView2;
        this.f63316e = imageView3;
        this.f63317f = imageView4;
        this.f63318g = imageView5;
        this.f63319h = constraintLayout;
        this.f63320i = j4Var;
        this.f63321j = textView2;
        this.f63322k = textView3;
        this.f63323l = textView4;
        this.f63324m = textView5;
    }

    @NonNull
    public static x2 a(@NonNull View view) {
        int i4 = R.id.btn_follow;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_follow);
        if (textView != null) {
            i4 = R.id.iv_avatar;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_avatar);
            if (imageView != null) {
                i4 = R.id.iv_level;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_level);
                if (imageView2 != null) {
                    i4 = R.id.iv_peerage;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_peerage);
                    if (imageView3 != null) {
                        i4 = R.id.iv_sex;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_sex);
                        if (imageView4 != null) {
                            i4 = R.id.iv_top_bg;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_top_bg);
                            if (imageView5 != null) {
                                i4 = R.id.main;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.main);
                                if (constraintLayout != null) {
                                    i4 = R.id.pk_panel;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.pk_panel);
                                    if (findChildViewById != null) {
                                        j4 a10 = j4.a(findChildViewById);
                                        i4 = R.id.tv_coin_count;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coin_count);
                                        if (textView2 != null) {
                                            i4 = R.id.tv_game_name;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_game_name);
                                            if (textView3 != null) {
                                                i4 = R.id.tv_name;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                if (textView4 != null) {
                                                    i4 = R.id.tv_rank;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rank);
                                                    if (textView5 != null) {
                                                        return new x2((FrameLayout) view, textView, imageView, imageView2, imageView3, imageView4, imageView5, constraintLayout, a10, textView2, textView3, textView4, textView5);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static x2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_ranking, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f63312a;
    }
}
