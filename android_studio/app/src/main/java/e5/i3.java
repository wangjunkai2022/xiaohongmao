package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: LayRoomDialogTicketBinding.java */
/* loaded from: classes3.dex */
public final class i3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62554a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62555b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f62556c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62557d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62558e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f62559f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62560g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62561h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f62562i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62563j;

    private i3(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout4, @NonNull TextView textView5) {
        this.f62554a = linearLayout;
        this.f62555b = imageView;
        this.f62556c = linearLayout2;
        this.f62557d = textView;
        this.f62558e = textView2;
        this.f62559f = linearLayout3;
        this.f62560g = textView3;
        this.f62561h = textView4;
        this.f62562i = linearLayout4;
        this.f62563j = textView5;
    }

    @NonNull
    public static i3 a(@NonNull View view) {
        int i4 = R.id.iv_ticket_ad;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_ticket_ad);
        if (imageView != null) {
            i4 = R.id.layout_header;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_header);
            if (linearLayout != null) {
                i4 = R.id.privater_room_dialog_prerequisite_header;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_prerequisite_header);
                if (textView != null) {
                    i4 = R.id.privater_room_dialog_prerequisite_header_2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_prerequisite_header_2);
                    if (textView2 != null) {
                        LinearLayout linearLayout2 = (LinearLayout) view;
                        i4 = R.id.privater_room_dialog_ticket_addmoney;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_ticket_addmoney);
                        if (textView3 != null) {
                            i4 = R.id.privater_room_dialog_ticket_commit;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_ticket_commit);
                            if (textView4 != null) {
                                i4 = R.id.privater_room_dialog_ticket_infolayout;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_ticket_infolayout);
                                if (linearLayout3 != null) {
                                    i4 = R.id.privater_room_dialog_ticket_mymoney;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_ticket_mymoney);
                                    if (textView5 != null) {
                                        return new i3(linearLayout2, imageView, linearLayout, textView, textView2, linearLayout2, textView3, textView4, linearLayout3, textView5);
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
    public static i3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.lay_room_dialog_ticket, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62554a;
    }
}
