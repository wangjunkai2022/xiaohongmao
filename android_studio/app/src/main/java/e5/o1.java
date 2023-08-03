package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentPrivateRoomBinding.java */
/* loaded from: classes3.dex */
public final class o1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f62841a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final g3 f62842b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final h3 f62843c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final i3 f62844d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final j3 f62845e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final k3 f62846f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f62847g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f62848h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62849i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f62850j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f62851k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62852l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f62853m;

    private o1(@NonNull FrameLayout frameLayout, @NonNull g3 g3Var, @NonNull h3 h3Var, @NonNull i3 i3Var, @NonNull j3 j3Var, @NonNull k3 k3Var, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62841a = frameLayout;
        this.f62842b = g3Var;
        this.f62843c = h3Var;
        this.f62844d = i3Var;
        this.f62845e = j3Var;
        this.f62846f = k3Var;
        this.f62847g = imageView;
        this.f62848h = imageView2;
        this.f62849i = textView;
        this.f62850j = imageView3;
        this.f62851k = imageView4;
        this.f62852l = textView2;
        this.f62853m = textView3;
    }

    @NonNull
    public static o1 a(@NonNull View view) {
        int i4 = R.id.layout_level;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.layout_level);
        if (findChildViewById != null) {
            g3 a10 = g3.a(findChildViewById);
            i4 = R.id.layout_pwd;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.layout_pwd);
            if (findChildViewById2 != null) {
                h3 a11 = h3.a(findChildViewById2);
                i4 = R.id.layout_ticket;
                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.layout_ticket);
                if (findChildViewById3 != null) {
                    i3 a12 = i3.a(findChildViewById3);
                    i4 = R.id.layout_time;
                    View findChildViewById4 = ViewBindings.findChildViewById(view, R.id.layout_time);
                    if (findChildViewById4 != null) {
                        j3 a13 = j3.a(findChildViewById4);
                        i4 = R.id.layout_video;
                        View findChildViewById5 = ViewBindings.findChildViewById(view, R.id.layout_video);
                        if (findChildViewById5 != null) {
                            k3 a14 = k3.a(findChildViewById5);
                            i4 = R.id.privater_room_dialog_bg;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_bg);
                            if (imageView != null) {
                                i4 = R.id.privater_room_dialog_close;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_close);
                                if (imageView2 != null) {
                                    i4 = R.id.privater_room_dialog_name;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_name);
                                    if (textView != null) {
                                        i4 = R.id.privater_room_dialog_photo;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_photo);
                                        if (imageView3 != null) {
                                            i4 = R.id.privater_room_dialog_title;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_title);
                                            if (imageView4 != null) {
                                                i4 = R.id.privater_room_dialog_type;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_type);
                                                if (textView2 != null) {
                                                    i4 = R.id.tv_guest_preview_hint;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_guest_preview_hint);
                                                    if (textView3 != null) {
                                                        return new o1((FrameLayout) view, a10, a11, a12, a13, a14, imageView, imageView2, textView, imageView3, imageView4, textView2, textView3);
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
    public static o1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_private_room, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f62841a;
    }
}
