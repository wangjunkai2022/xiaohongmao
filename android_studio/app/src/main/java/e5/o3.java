package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.StrokeTextView;

/* compiled from: LayoutGiftLocalAnimBinding.java */
/* loaded from: classes3.dex */
public final class o3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62860a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62861b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62862c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f62863d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62864e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f62865f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f62866g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f62867h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f62868i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final StrokeTextView f62869j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62870k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62871l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f62872m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final FrameLayout f62873n;

    private o3(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull StrokeTextView strokeTextView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull FrameLayout frameLayout) {
        this.f62860a = relativeLayout;
        this.f62861b = imageView;
        this.f62862c = imageView2;
        this.f62863d = linearLayout;
        this.f62864e = imageView3;
        this.f62865f = imageView4;
        this.f62866g = imageView5;
        this.f62867h = imageView6;
        this.f62868i = imageView7;
        this.f62869j = strokeTextView;
        this.f62870k = textView;
        this.f62871l = textView2;
        this.f62872m = linearLayout2;
        this.f62873n = frameLayout;
    }

    @NonNull
    public static o3 a(@NonNull View view) {
        int i4 = R.id.gift_anim_drawee_creator;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_anim_drawee_creator);
        if (imageView != null) {
            i4 = R.id.gift_anim_drawee_gift;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_anim_drawee_gift);
            if (imageView2 != null) {
                i4 = R.id.gift_anim_gift_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gift_anim_gift_layout);
                if (linearLayout != null) {
                    i4 = R.id.gift_anim_gift_num1;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_anim_gift_num1);
                    if (imageView3 != null) {
                        i4 = R.id.gift_anim_gift_num2;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_anim_gift_num2);
                        if (imageView4 != null) {
                            i4 = R.id.gift_anim_gift_num3;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_anim_gift_num3);
                            if (imageView5 != null) {
                                i4 = R.id.gift_anim_gift_num4;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_anim_gift_num4);
                                if (imageView6 != null) {
                                    i4 = R.id.gift_anim_gift_x;
                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_anim_gift_x);
                                    if (imageView7 != null) {
                                        i4 = R.id.gift_anim_tv_combo;
                                        StrokeTextView strokeTextView = (StrokeTextView) ViewBindings.findChildViewById(view, R.id.gift_anim_tv_combo);
                                        if (strokeTextView != null) {
                                            i4 = R.id.gift_anim_tv_gift_action;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gift_anim_tv_gift_action);
                                            if (textView != null) {
                                                i4 = R.id.gift_anim_tv_nickname;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gift_anim_tv_nickname);
                                                if (textView2 != null) {
                                                    i4 = R.id.rj;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rj);
                                                    if (linearLayout2 != null) {
                                                        i4 = R.id.sj;
                                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.sj);
                                                        if (frameLayout != null) {
                                                            return new o3((RelativeLayout) view, imageView, imageView2, linearLayout, imageView3, imageView4, imageView5, imageView6, imageView7, strokeTextView, textView, textView2, linearLayout2, frameLayout);
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
    public static o3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_gift_local_anim, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62860a;
    }
}
