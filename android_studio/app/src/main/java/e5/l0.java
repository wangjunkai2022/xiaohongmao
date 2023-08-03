package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogRoomPublishFinishBinding.java */
/* loaded from: classes3.dex */
public final class l0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62677a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62678b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62679c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62680d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62681e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62682f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62683g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62684h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f62685i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f62686j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f62687k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ScrollView f62688l;

    private l0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ScrollView scrollView) {
        this.f62677a = linearLayout;
        this.f62678b = textView;
        this.f62679c = imageView;
        this.f62680d = imageView2;
        this.f62681e = textView2;
        this.f62682f = textView3;
        this.f62683g = textView4;
        this.f62684h = textView5;
        this.f62685i = imageView3;
        this.f62686j = linearLayout2;
        this.f62687k = linearLayout3;
        this.f62688l = scrollView;
    }

    @NonNull
    public static l0 a(@NonNull View view) {
        int i4 = R.id.dialog_room_finish_anchor_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_room_finish_anchor_name);
        if (textView != null) {
            i4 = R.id.dialog_room_finish_anchor_photo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dialog_room_finish_anchor_photo);
            if (imageView != null) {
                i4 = R.id.dialog_room_finish_btn_close;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.dialog_room_finish_btn_close);
                if (imageView2 != null) {
                    i4 = R.id.dialog_room_finish_btn_finish;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_room_finish_btn_finish);
                    if (textView2 != null) {
                        i4 = R.id.dialog_room_finish_btn_follow;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_room_finish_btn_follow);
                        if (textView3 != null) {
                            i4 = R.id.dialog_room_finish_my_gain;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_room_finish_my_gain);
                            if (textView4 != null) {
                                i4 = R.id.dialog_room_finish_users_num;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_room_finish_users_num);
                                if (textView5 != null) {
                                    i4 = R.id.iv_ad;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_ad);
                                    if (imageView3 != null) {
                                        i4 = R.id.layout_audience;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_audience);
                                        if (linearLayout != null) {
                                            i4 = R.id.layout_income;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_income);
                                            if (linearLayout2 != null) {
                                                i4 = R.id.room_finish_dialog_scroll;
                                                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.room_finish_dialog_scroll);
                                                if (scrollView != null) {
                                                    return new l0((LinearLayout) view, textView, imageView, imageView2, textView2, textView3, textView4, textView5, imageView3, linearLayout, linearLayout2, scrollView);
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
    public static l0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_room_publish_finish, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62677a;
    }
}
