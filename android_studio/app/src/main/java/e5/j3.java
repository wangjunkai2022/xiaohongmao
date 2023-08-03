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

/* compiled from: LayRoomDialogTimeBinding.java */
/* loaded from: classes3.dex */
public final class j3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62600a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f62601b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62602c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62603d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f62604e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62605f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62606g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62607h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62608i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62609j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62610k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f62611l;

    private j3(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.f62600a = relativeLayout;
        this.f62601b = linearLayout;
        this.f62602c = textView;
        this.f62603d = textView2;
        this.f62604e = relativeLayout2;
        this.f62605f = textView3;
        this.f62606g = textView4;
        this.f62607h = textView5;
        this.f62608i = textView6;
        this.f62609j = textView7;
        this.f62610k = textView8;
        this.f62611l = textView9;
    }

    @NonNull
    public static j3 a(@NonNull View view) {
        int i4 = R.id.sj;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.sj);
        if (linearLayout != null) {
            i4 = R.id.privater_room_dialog_prerequisite_time;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_prerequisite_time);
            if (textView != null) {
                i4 = R.id.privater_room_dialog_prerequisite_time_2;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_prerequisite_time_2);
                if (textView2 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    i4 = R.id.privater_room_dialog_time_addmoney;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_time_addmoney);
                    if (textView3 != null) {
                        i4 = R.id.privater_room_dialog_time_commit;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_time_commit);
                        if (textView4 != null) {
                            i4 = R.id.privater_room_dialog_time_mymoney;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_time_mymoney);
                            if (textView5 != null) {
                                i4 = R.id.privater_room_dialog_time_point_balance;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_time_point_balance);
                                if (textView6 != null) {
                                    i4 = R.id.privater_room_dialog_time_point_comimt;
                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_time_point_comimt);
                                    if (textView7 != null) {
                                        i4 = R.id.privater_room_dialog_time_point_tuiguang;
                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_time_point_tuiguang);
                                        if (textView8 != null) {
                                            i4 = R.id.privater_room_dialog_time_point_tuiguang2;
                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_time_point_tuiguang2);
                                            if (textView9 != null) {
                                                return new j3(relativeLayout, linearLayout, textView, textView2, relativeLayout, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
    public static j3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.lay_room_dialog_time, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62600a;
    }
}
