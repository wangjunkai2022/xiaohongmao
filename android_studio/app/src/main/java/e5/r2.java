package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ItemHotAnchorBinding.java */
/* loaded from: classes3.dex */
public final class r2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62991a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62992b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62993c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62994d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62995e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62996f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62997g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62998h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62999i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f63000j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f63001k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ConstraintLayout f63002l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f63003m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f63004n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f63005o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f63006p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f63007q;

    private r2(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull TextView textView7, @NonNull LinearLayout linearLayout) {
        this.f62991a = constraintLayout;
        this.f62992b = imageView;
        this.f62993c = imageView2;
        this.f62994d = imageView3;
        this.f62995e = imageView4;
        this.f62996f = textView;
        this.f62997g = textView2;
        this.f62998h = textView3;
        this.f62999i = textView4;
        this.f63000j = textView5;
        this.f63001k = textView6;
        this.f63002l = constraintLayout2;
        this.f63003m = imageView5;
        this.f63004n = imageView6;
        this.f63005o = imageView7;
        this.f63006p = textView7;
        this.f63007q = linearLayout;
    }

    @NonNull
    public static r2 a(@NonNull View view) {
        int i4 = R.id.item_game_type;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.item_game_type);
        if (imageView != null) {
            i4 = R.id.item_hot_anchor_img_front_cover;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_hot_anchor_img_front_cover);
            if (imageView2 != null) {
                i4 = R.id.item_hot_anchor_img_toy;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_hot_anchor_img_toy);
                if (imageView3 != null) {
                    i4 = R.id.item_hot_anchor_img_video;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_hot_anchor_img_video);
                    if (imageView4 != null) {
                        i4 = R.id.item_hot_anchor_title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.item_hot_anchor_title);
                        if (textView != null) {
                            i4 = R.id.item_hot_anchor_tv_intro;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.item_hot_anchor_tv_intro);
                            if (textView2 != null) {
                                i4 = R.id.item_hot_anchor_tv_location;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.item_hot_anchor_tv_location);
                                if (textView3 != null) {
                                    i4 = R.id.item_hot_anchor_tv_nickname;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.item_hot_anchor_tv_nickname);
                                    if (textView4 != null) {
                                        i4 = R.id.item_hot_anchor_tv_online_count;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.item_hot_anchor_tv_online_count);
                                        if (textView5 != null) {
                                            i4 = R.id.item_hot_anchor_tv_online_leixing;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.item_hot_anchor_tv_online_leixing);
                                            if (textView6 != null) {
                                                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                                i4 = R.id.iv_ad_label;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_ad_label);
                                                if (imageView5 != null) {
                                                    i4 = R.id.iv_last_week_rank;
                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_last_week_rank);
                                                    if (imageView6 != null) {
                                                        i4 = R.id.iv_pk_label;
                                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pk_label);
                                                        if (imageView7 != null) {
                                                            i4 = R.id.livetype;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.livetype);
                                                            if (textView7 != null) {
                                                                i4 = R.id.location_container;
                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.location_container);
                                                                if (linearLayout != null) {
                                                                    return new r2(constraintLayout, imageView, imageView2, imageView3, imageView4, textView, textView2, textView3, textView4, textView5, textView6, constraintLayout, imageView5, imageView6, imageView7, textView7, linearLayout);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static r2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_hot_anchor, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62991a;
    }
}
