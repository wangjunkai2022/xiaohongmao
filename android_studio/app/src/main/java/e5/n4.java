package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextSwitcher;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.giftView.GiftLayoutView;

/* compiled from: RoomLayoutGiftBinding.java */
/* loaded from: classes3.dex */
public final class n4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62800a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f62801b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62802c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62803d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final GiftLayoutView f62804e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Group f62805f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f62806g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62807h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f62808i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f62809j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62810k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62811l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f62812m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f62813n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ConstraintLayout f62814o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f62815p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f62816q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f62817r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final Group f62818s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final RecyclerView f62819t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final LinearLayout f62820u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f62821v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextSwitcher f62822w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextSwitcher f62823x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextSwitcher f62824y;

    private n4(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull GiftLayoutView giftLayoutView, @NonNull Group group, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull ProgressBar progressBar, @NonNull RelativeLayout relativeLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView6, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView7, @NonNull Group group2, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView8, @NonNull TextSwitcher textSwitcher, @NonNull TextSwitcher textSwitcher2, @NonNull TextSwitcher textSwitcher3) {
        this.f62800a = constraintLayout;
        this.f62801b = view;
        this.f62802c = textView;
        this.f62803d = textView2;
        this.f62804e = giftLayoutView;
        this.f62805f = group;
        this.f62806g = linearLayout;
        this.f62807h = textView3;
        this.f62808i = imageView;
        this.f62809j = linearLayout2;
        this.f62810k = textView4;
        this.f62811l = textView5;
        this.f62812m = progressBar;
        this.f62813n = relativeLayout;
        this.f62814o = constraintLayout2;
        this.f62815p = textView6;
        this.f62816q = relativeLayout2;
        this.f62817r = textView7;
        this.f62818s = group2;
        this.f62819t = recyclerView;
        this.f62820u = linearLayout3;
        this.f62821v = textView8;
        this.f62822w = textSwitcher;
        this.f62823x = textSwitcher2;
        this.f62824y = textSwitcher3;
    }

    @NonNull
    public static n4 a(@NonNull View view) {
        int i4 = R.id.bgExtra;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bgExtra);
        if (findChildViewById != null) {
            i4 = R.id.btn_noble_open;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_noble_open);
            if (textView != null) {
                i4 = R.id.first_recharge_surprise;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.first_recharge_surprise);
                if (textView2 != null) {
                    i4 = R.id.gift;
                    GiftLayoutView giftLayoutView = (GiftLayoutView) ViewBindings.findChildViewById(view, R.id.gift);
                    if (giftLayoutView != null) {
                        i4 = R.id.gifts_group;
                        Group group = (Group) ViewBindings.findChildViewById(view, R.id.gifts_group);
                        if (group != null) {
                            i4 = R.id.gifts_layout_switcher;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gifts_layout_switcher);
                            if (linearLayout != null) {
                                i4 = R.id.goldBalanceTv;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.goldBalanceTv);
                                if (textView3 != null) {
                                    i4 = R.id.goldLevelIc;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.goldLevelIc);
                                    if (imageView != null) {
                                        i4 = R.id.goldLevelLayout;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.goldLevelLayout);
                                        if (linearLayout2 != null) {
                                            i4 = R.id.goldNextGoalTv;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.goldNextGoalTv);
                                            if (textView4 != null) {
                                                i4 = R.id.gold_price;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.gold_price);
                                                if (textView5 != null) {
                                                    i4 = R.id.goldProgress;
                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.goldProgress);
                                                    if (progressBar != null) {
                                                        i4 = R.id.layout_btn_noble_open;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout_btn_noble_open);
                                                        if (relativeLayout != null) {
                                                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                                            i4 = R.id.layout_gift_btn_send;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.layout_gift_btn_send);
                                                            if (textView6 != null) {
                                                                i4 = R.id.layout_gift_btnlay;
                                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout_gift_btnlay);
                                                                if (relativeLayout2 != null) {
                                                                    i4 = R.id.layout_gift_charge_tv;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.layout_gift_charge_tv);
                                                                    if (textView7 != null) {
                                                                        i4 = R.id.noble_group;
                                                                        Group group2 = (Group) ViewBindings.findChildViewById(view, R.id.noble_group);
                                                                        if (group2 != null) {
                                                                            i4 = R.id.nobleRecycler;
                                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.nobleRecycler);
                                                                            if (recyclerView != null) {
                                                                                i4 = R.id.prices;
                                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.prices);
                                                                                if (linearLayout3 != null) {
                                                                                    i4 = R.id.room_gift_chargeinfor_balance;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.room_gift_chargeinfor_balance);
                                                                                    if (textView8 != null) {
                                                                                        i4 = R.id.sw_gift;
                                                                                        TextSwitcher textSwitcher = (TextSwitcher) ViewBindings.findChildViewById(view, R.id.sw_gift);
                                                                                        if (textSwitcher != null) {
                                                                                            i4 = R.id.sw_gift_fan;
                                                                                            TextSwitcher textSwitcher2 = (TextSwitcher) ViewBindings.findChildViewById(view, R.id.sw_gift_fan);
                                                                                            if (textSwitcher2 != null) {
                                                                                                i4 = R.id.sw_noble;
                                                                                                TextSwitcher textSwitcher3 = (TextSwitcher) ViewBindings.findChildViewById(view, R.id.sw_noble);
                                                                                                if (textSwitcher3 != null) {
                                                                                                    return new n4(constraintLayout, findChildViewById, textView, textView2, giftLayoutView, group, linearLayout, textView3, imageView, linearLayout2, textView4, textView5, progressBar, relativeLayout, constraintLayout, textView6, relativeLayout2, textView7, group2, recyclerView, linearLayout3, textView8, textSwitcher, textSwitcher2, textSwitcher3);
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
    public static n4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.room_layout_gift, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62800a;
    }
}
