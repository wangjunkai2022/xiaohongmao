package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: LayRoomDialogVideoBinding.java */
/* loaded from: classes3.dex */
public final class k3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62652a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f62653b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62654c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62655d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f62656e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62657f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62658g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62659h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62660i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62661j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62662k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62663l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f62664m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f62665n;

    private k3(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11) {
        this.f62652a = relativeLayout;
        this.f62653b = linearLayout;
        this.f62654c = textView;
        this.f62655d = textView2;
        this.f62656e = relativeLayout2;
        this.f62657f = textView3;
        this.f62658g = textView4;
        this.f62659h = textView5;
        this.f62660i = textView6;
        this.f62661j = textView7;
        this.f62662k = textView8;
        this.f62663l = textView9;
        this.f62664m = textView10;
        this.f62665n = textView11;
    }

    @NonNull
    public static k3 a(@NonNull View view) {
        int i4 = R.id.tj;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tj);
        if (linearLayout != null) {
            i4 = R.id.privater_room_dialog_prerequisite_video_header;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_prerequisite_video_header);
            if (textView != null) {
                i4 = R.id.privater_room_dialog_prerequisite_video_header_2;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_prerequisite_video_header_2);
                if (textView2 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    i4 = R.id.privater_room_dialog_video_addmoney;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_video_addmoney);
                    if (textView3 != null) {
                        i4 = R.id.privater_room_dialog_video_commit;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_video_commit);
                        if (textView4 != null) {
                            i4 = R.id.privater_room_dialog_video_money_prerequisite;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_video_money_prerequisite);
                            if (textView5 != null) {
                                i4 = R.id.privater_room_dialog_video_mymoney;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_video_mymoney);
                                if (textView6 != null) {
                                    i4 = R.id.privater_room_dialog_video_point_balance;
                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_video_point_balance);
                                    if (textView7 != null) {
                                        i4 = R.id.privater_room_dialog_video_point_comimt;
                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_video_point_comimt);
                                        if (textView8 != null) {
                                            i4 = R.id.privater_room_dialog_video_point_prerequisite;
                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_video_point_prerequisite);
                                            if (textView9 != null) {
                                                i4 = R.id.privater_room_dialog_video_point_tuiguang;
                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_video_point_tuiguang);
                                                if (textView10 != null) {
                                                    i4 = R.id.privater_room_dialog_video_point_tuiguang2;
                                                    TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_video_point_tuiguang2);
                                                    if (textView11 != null) {
                                                        return new k3(relativeLayout, linearLayout, textView, textView2, relativeLayout, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11);
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
    public static k3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.lay_room_dialog_video, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62652a;
    }
}
