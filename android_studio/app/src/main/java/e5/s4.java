package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Chronometer;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.view.PubChatRecyclerView;
import com.qennnsad.aknkaksd.presentation.ui.room.view.ScrollingText;
import master.flame.danmaku.ui.widget.DanmakuView;

/* compiled from: RoomTopAudienceBarBinding.java */
/* loaded from: classes3.dex */
public final class s4 implements ViewBinding {
    @NonNull
    public final LinearLayout A;
    @NonNull
    public final AppCompatTextView B;
    @NonNull
    public final TextView C;
    @NonNull
    public final TextView D;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f63096a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f63097b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final DanmakuView f63098c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f63099d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63100e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f63101f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63102g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f63103h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f63104i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f63105j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f63106k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f63107l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f63108m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f63109n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final PubChatRecyclerView f63110o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ConstraintLayout f63111p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f63112q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final Button f63113r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final LinearLayout f63114s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final RelativeLayout f63115t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f63116u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f63117v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f63118w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final ScrollingText f63119x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final Chronometer f63120y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final ImageView f63121z;

    private s4(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull DanmakuView danmakuView, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout6, @NonNull PubChatRecyclerView pubChatRecyclerView, @NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView2, @NonNull Button button, @NonNull LinearLayout linearLayout7, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ScrollingText scrollingText, @NonNull Chronometer chronometer, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout8, @NonNull AppCompatTextView appCompatTextView, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f63096a = relativeLayout;
        this.f63097b = linearLayout;
        this.f63098c = danmakuView;
        this.f63099d = recyclerView;
        this.f63100e = textView;
        this.f63101f = textView2;
        this.f63102g = textView3;
        this.f63103h = linearLayout2;
        this.f63104i = linearLayout3;
        this.f63105j = linearLayout4;
        this.f63106k = linearLayout5;
        this.f63107l = relativeLayout2;
        this.f63108m = imageView;
        this.f63109n = linearLayout6;
        this.f63110o = pubChatRecyclerView;
        this.f63111p = constraintLayout;
        this.f63112q = imageView2;
        this.f63113r = button;
        this.f63114s = linearLayout7;
        this.f63115t = relativeLayout3;
        this.f63116u = textView4;
        this.f63117v = textView5;
        this.f63118w = textView6;
        this.f63119x = scrollingText;
        this.f63120y = chronometer;
        this.f63121z = imageView3;
        this.A = linearLayout8;
        this.B = appCompatTextView;
        this.C = textView7;
        this.D = textView8;
    }

    @NonNull
    public static s4 a(@NonNull View view) {
        int i4 = R.id.money;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.money);
        if (linearLayout != null) {
            i4 = R.id.mrl_danmaku_bigWin;
            DanmakuView danmakuView = (DanmakuView) ViewBindings.findChildViewById(view, R.id.mrl_danmaku_bigWin);
            if (danmakuView != null) {
                i4 = R.id.pinned_msg_recycler;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.pinned_msg_recycler);
                if (recyclerView != null) {
                    i4 = R.id.price;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.price);
                    if (textView != null) {
                        i4 = R.id.rank;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.rank);
                        if (textView2 != null) {
                            i4 = R.id.room_ad;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.room_ad);
                            if (textView3 != null) {
                                i4 = R.id.room_ad_downlod;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.room_ad_downlod);
                                if (linearLayout2 != null) {
                                    i4 = R.id.room_ad_scroll;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.room_ad_scroll);
                                    if (linearLayout3 != null) {
                                        i4 = R.id.room_coin_rank_lay;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.room_coin_rank_lay);
                                        if (linearLayout4 != null) {
                                            i4 = R.id.room_coin_rank_today;
                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.room_coin_rank_today);
                                            if (linearLayout5 != null) {
                                                RelativeLayout relativeLayout = (RelativeLayout) view;
                                                i4 = R.id.room_imgbtn_close;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.room_imgbtn_close);
                                                if (imageView != null) {
                                                    i4 = R.id.room_owner;
                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.room_owner);
                                                    if (linearLayout6 != null) {
                                                        i4 = R.id.room_recycler_audience;
                                                        PubChatRecyclerView pubChatRecyclerView = (PubChatRecyclerView) ViewBindings.findChildViewById(view, R.id.room_recycler_audience);
                                                        if (pubChatRecyclerView != null) {
                                                            i4 = R.id.room_seat_layout;
                                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.room_seat_layout);
                                                            if (constraintLayout != null) {
                                                                i4 = R.id.room_seat_seatimg;
                                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.room_seat_seatimg);
                                                                if (imageView2 != null) {
                                                                    i4 = R.id.room_top_bar_start_tv;
                                                                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.room_top_bar_start_tv);
                                                                    if (button != null) {
                                                                        i4 = R.id.room_top_coin_layout;
                                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.room_top_coin_layout);
                                                                        if (linearLayout7 != null) {
                                                                            i4 = R.id.room_top_title_layout;
                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.room_top_title_layout);
                                                                            if (relativeLayout2 != null) {
                                                                                i4 = R.id.room_tv_label_user_count;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.room_tv_label_user_count);
                                                                                if (textView4 != null) {
                                                                                    i4 = R.id.room_tv_live_user_count;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.room_tv_live_user_count);
                                                                                    if (textView5 != null) {
                                                                                        i4 = R.id.room_tv_live_user_count_seat;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.room_tv_live_user_count_seat);
                                                                                        if (textView6 != null) {
                                                                                            i4 = R.id.scroll_text;
                                                                                            ScrollingText scrollingText = (ScrollingText) ViewBindings.findChildViewById(view, R.id.scroll_text);
                                                                                            if (scrollingText != null) {
                                                                                                i4 = R.id.timer;
                                                                                                Chronometer chronometer = (Chronometer) ViewBindings.findChildViewById(view, R.id.timer);
                                                                                                if (chronometer != null) {
                                                                                                    i4 = R.id.top_audience_avatar;
                                                                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.top_audience_avatar);
                                                                                                    if (imageView3 != null) {
                                                                                                        i4 = R.id.topMsg;
                                                                                                        LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.topMsg);
                                                                                                        if (linearLayout8 != null) {
                                                                                                            i4 = R.id.tvTopMsg;
                                                                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tvTopMsg);
                                                                                                            if (appCompatTextView != null) {
                                                                                                                i4 = R.id.txt_gold_count;
                                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_gold_count);
                                                                                                                if (textView7 != null) {
                                                                                                                    i4 = R.id.water_room_uid;
                                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.water_room_uid);
                                                                                                                    if (textView8 != null) {
                                                                                                                        return new s4(relativeLayout, linearLayout, danmakuView, recyclerView, textView, textView2, textView3, linearLayout2, linearLayout3, linearLayout4, linearLayout5, relativeLayout, imageView, linearLayout6, pubChatRecyclerView, constraintLayout, imageView2, button, linearLayout7, relativeLayout2, textView4, textView5, textView6, scrollingText, chronometer, imageView3, linearLayout8, appCompatTextView, textView7, textView8);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static s4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.room_top_audience_bar, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f63096a;
    }
}
