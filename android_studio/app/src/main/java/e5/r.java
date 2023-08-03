package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogChargeroomBinding.java */
/* loaded from: classes3.dex */
public final class r implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62970a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62971b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f62972c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62973d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62974e;

    private r(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62970a = relativeLayout;
        this.f62971b = textView;
        this.f62972c = relativeLayout2;
        this.f62973d = textView2;
        this.f62974e = textView3;
    }

    @NonNull
    public static r a(@NonNull View view) {
        int i4 = R.id.dialog_chargeroom_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_chargeroom_cancel);
        if (textView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i4 = R.id.dialog_chargeroom_ticket;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_chargeroom_ticket);
            if (textView2 != null) {
                i4 = R.id.dialog_chargeroom_time;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_chargeroom_time);
                if (textView3 != null) {
                    return new r(relativeLayout, textView, relativeLayout, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static r c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_chargeroom, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62970a;
    }
}
