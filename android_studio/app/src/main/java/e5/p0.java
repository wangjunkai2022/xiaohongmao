package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.wang.avi.AVLoadingIndicatorView;

/* compiled from: DialogStreamChatBinding.java */
/* loaded from: classes3.dex */
public final class p0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62878a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f62879b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f62880c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f62881d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62882e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f62883f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f62884g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Group f62885h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f62886i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final AVLoadingIndicatorView f62887j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RecyclerView f62888k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62889l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f62890m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f62891n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f62892o;

    private p0(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull Button button2, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull View view2, @NonNull Group group, @NonNull ImageView imageView2, @NonNull AVLoadingIndicatorView aVLoadingIndicatorView, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f62878a = constraintLayout;
        this.f62879b = button;
        this.f62880c = button2;
        this.f62881d = frameLayout;
        this.f62882e = imageView;
        this.f62883f = view;
        this.f62884g = view2;
        this.f62885h = group;
        this.f62886i = imageView2;
        this.f62887j = aVLoadingIndicatorView;
        this.f62888k = recyclerView;
        this.f62889l = textView;
        this.f62890m = textView2;
        this.f62891n = textView3;
        this.f62892o = textView4;
    }

    @NonNull
    public static p0 a(@NonNull View view) {
        int i4 = R.id.btn_hide;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_hide);
        if (button != null) {
            i4 = R.id.btn_start_chat;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_start_chat);
            if (button2 != null) {
                i4 = R.id.chat_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.chat_container);
                if (frameLayout != null) {
                    i4 = R.id.decor;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.decor);
                    if (imageView != null) {
                        i4 = R.id.divider;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                        if (findChildViewById != null) {
                            i4 = R.id.divider2;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.divider2);
                            if (findChildViewById2 != null) {
                                i4 = R.id.group_deposit_options;
                                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_deposit_options);
                                if (group != null) {
                                    i4 = R.id.iv_close;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                                    if (imageView2 != null) {
                                        i4 = R.id.pb_loading;
                                        AVLoadingIndicatorView aVLoadingIndicatorView = (AVLoadingIndicatorView) ViewBindings.findChildViewById(view, R.id.pb_loading);
                                        if (aVLoadingIndicatorView != null) {
                                            i4 = R.id.rv_deposit_options;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_deposit_options);
                                            if (recyclerView != null) {
                                                i4 = R.id.tv_hint;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hint);
                                                if (textView != null) {
                                                    i4 = R.id.tv_nickname;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nickname);
                                                    if (textView2 != null) {
                                                        i4 = R.id.tv_online_indicator;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_online_indicator);
                                                        if (textView3 != null) {
                                                            i4 = R.id.tv_title;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                            if (textView4 != null) {
                                                                return new p0((ConstraintLayout) view, button, button2, frameLayout, imageView, findChildViewById, findChildViewById2, group, imageView2, aVLoadingIndicatorView, recyclerView, textView, textView2, textView3, textView4);
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
    public static p0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_stream_chat, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62878a;
    }
}
