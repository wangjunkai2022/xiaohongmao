package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogRoomManageBinding.java */
/* loaded from: classes3.dex */
public final class k0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62627a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f62628b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f62629c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f62630d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f62631e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f62632f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Button f62633g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Button f62634h;

    private k0(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull Button button4, @NonNull Button button5, @NonNull Button button6, @NonNull Button button7) {
        this.f62627a = linearLayout;
        this.f62628b = button;
        this.f62629c = button2;
        this.f62630d = button3;
        this.f62631e = button4;
        this.f62632f = button5;
        this.f62633g = button6;
        this.f62634h = button7;
    }

    @NonNull
    public static k0 a(@NonNull View view) {
        int i4 = R.id.btn_add_manager;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_add_manager);
        if (button != null) {
            i4 = R.id.btn_cancel;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_cancel);
            if (button2 != null) {
                i4 = R.id.btn_kick_user;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.btn_kick_user);
                if (button3 != null) {
                    i4 = R.id.btn_manager_list;
                    Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.btn_manager_list);
                    if (button4 != null) {
                        i4 = R.id.btn_mute_user;
                        Button button5 = (Button) ViewBindings.findChildViewById(view, R.id.btn_mute_user);
                        if (button5 != null) {
                            i4 = R.id.btn_report_user;
                            Button button6 = (Button) ViewBindings.findChildViewById(view, R.id.btn_report_user);
                            if (button6 != null) {
                                i4 = R.id.btn_warn_user;
                                Button button7 = (Button) ViewBindings.findChildViewById(view, R.id.btn_warn_user);
                                if (button7 != null) {
                                    return new k0((LinearLayout) view, button, button2, button3, button4, button5, button6, button7);
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
    public static k0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_room_manage, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62627a;
    }
}
