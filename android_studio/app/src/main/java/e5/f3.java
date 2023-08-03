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
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.view.PubChatRecyclerView;
import com.qennnsad.aknkaksd.presentation.ui.room.view.BlockTextView;

/* compiled from: ItemViewPlayerBinding.java */
/* loaded from: classes3.dex */
public final class f3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62404a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final o4 f62405b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f62406c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final q4 f62407d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62408e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f62409f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final r4 f62410g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f62411h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final u3 f62412i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final d4 f62413j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final BlockTextView f62414k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f62415l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f62416m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f62417n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f62418o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f62419p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final PubChatRecyclerView f62420q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final m4 f62421r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final s4 f62422s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f62423t;

    private f3(@NonNull RelativeLayout relativeLayout, @NonNull o4 o4Var, @NonNull FrameLayout frameLayout, @NonNull q4 q4Var, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull r4 r4Var, @NonNull LinearLayout linearLayout, @NonNull u3 u3Var, @NonNull d4 d4Var, @NonNull BlockTextView blockTextView, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout4, @NonNull PubChatRecyclerView pubChatRecyclerView, @NonNull m4 m4Var, @NonNull s4 s4Var, @NonNull TextView textView) {
        this.f62404a = relativeLayout;
        this.f62405b = o4Var;
        this.f62406c = frameLayout;
        this.f62407d = q4Var;
        this.f62408e = imageView;
        this.f62409f = imageView2;
        this.f62410g = r4Var;
        this.f62411h = linearLayout;
        this.f62412i = u3Var;
        this.f62413j = d4Var;
        this.f62414k = blockTextView;
        this.f62415l = relativeLayout2;
        this.f62416m = relativeLayout3;
        this.f62417n = imageView3;
        this.f62418o = linearLayout2;
        this.f62419p = relativeLayout4;
        this.f62420q = pubChatRecyclerView;
        this.f62421r = m4Var;
        this.f62422s = s4Var;
        this.f62423t = textView;
    }

    @NonNull
    public static f3 a(@NonNull View view) {
        int i4 = R.id.animations;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.animations);
        if (findChildViewById != null) {
            o4 a10 = o4.a(findChildViewById);
            i4 = R.id.fragment_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_container);
            if (frameLayout != null) {
                i4 = R.id.gift_actions_container;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.gift_actions_container);
                if (findChildViewById2 != null) {
                    q4 a11 = q4.a(findChildViewById2);
                    i4 = R.id.img_thumb;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_thumb);
                    if (imageView != null) {
                        i4 = R.id.iv_watermark;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_watermark);
                        if (imageView2 != null) {
                            i4 = R.id.live_operation;
                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.live_operation);
                            if (findChildViewById3 != null) {
                                r4 a12 = r4.a(findChildViewById3);
                                i4 = R.id.ll_bottom;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_bottom);
                                if (linearLayout != null) {
                                    i4 = R.id.peerage_animation_container;
                                    View findChildViewById4 = ViewBindings.findChildViewById(view, R.id.peerage_animation_container);
                                    if (findChildViewById4 != null) {
                                        u3 a13 = u3.a(findChildViewById4);
                                        i4 = R.id.playerContainer;
                                        View findChildViewById5 = ViewBindings.findChildViewById(view, R.id.playerContainer);
                                        if (findChildViewById5 != null) {
                                            d4 a14 = d4.a(findChildViewById5);
                                            i4 = R.id.room_block;
                                            BlockTextView blockTextView = (BlockTextView) ViewBindings.findChildViewById(view, R.id.room_block);
                                            if (blockTextView != null) {
                                                RelativeLayout relativeLayout = (RelativeLayout) view;
                                                i4 = R.id.room_fragment_view_root;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.room_fragment_view_root);
                                                if (relativeLayout2 != null) {
                                                    i4 = R.id.room_layout_loading_avatar;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.room_layout_loading_avatar);
                                                    if (imageView3 != null) {
                                                        i4 = R.id.room_layout_loading_title;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.room_layout_loading_title);
                                                        if (linearLayout2 != null) {
                                                            i4 = R.id.room_move_layout;
                                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.room_move_layout);
                                                            if (relativeLayout3 != null) {
                                                                i4 = R.id.room_recycler_chat;
                                                                PubChatRecyclerView pubChatRecyclerView = (PubChatRecyclerView) ViewBindings.findChildViewById(view, R.id.room_recycler_chat);
                                                                if (pubChatRecyclerView != null) {
                                                                    i4 = R.id.side_panel;
                                                                    View findChildViewById6 = ViewBindings.findChildViewById(view, R.id.side_panel);
                                                                    if (findChildViewById6 != null) {
                                                                        m4 a15 = m4.a(findChildViewById6);
                                                                        i4 = R.id.top_audience;
                                                                        View findChildViewById7 = ViewBindings.findChildViewById(view, R.id.top_audience);
                                                                        if (findChildViewById7 != null) {
                                                                            s4 a16 = s4.a(findChildViewById7);
                                                                            i4 = R.id.tv_resolution_info;
                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_resolution_info);
                                                                            if (textView != null) {
                                                                                return new f3(relativeLayout, a10, frameLayout, a11, imageView, imageView2, a12, linearLayout, a13, a14, blockTextView, relativeLayout, relativeLayout2, imageView3, linearLayout2, relativeLayout3, pubChatRecyclerView, a15, a16, textView);
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
    public static f3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_view_player, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62404a;
    }
}
