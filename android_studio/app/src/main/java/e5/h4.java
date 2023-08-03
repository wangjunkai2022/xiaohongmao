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

/* compiled from: PrivateTypeDialogPopuBinding.java */
/* loaded from: classes3.dex */
public final class h4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62509a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62510b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62511c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62512d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62513e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62514f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62515g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f62516h;

    private h4(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull RelativeLayout relativeLayout2) {
        this.f62509a = relativeLayout;
        this.f62510b = textView;
        this.f62511c = textView2;
        this.f62512d = textView3;
        this.f62513e = textView4;
        this.f62514f = textView5;
        this.f62515g = textView6;
        this.f62516h = relativeLayout2;
    }

    @NonNull
    public static h4 a(@NonNull View view) {
        int i4 = R.id.private_tyep_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.private_tyep_cancel);
        if (textView != null) {
            i4 = R.id.private_tyep_level;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.private_tyep_level);
            if (textView2 != null) {
                i4 = R.id.private_tyep_password;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.private_tyep_password);
                if (textView3 != null) {
                    i4 = R.id.private_tyep_recovery;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.private_tyep_recovery);
                    if (textView4 != null) {
                        i4 = R.id.private_tyep_ticket;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.private_tyep_ticket);
                        if (textView5 != null) {
                            i4 = R.id.private_tyep_time;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.private_tyep_time);
                            if (textView6 != null) {
                                RelativeLayout relativeLayout = (RelativeLayout) view;
                                return new h4(relativeLayout, textView, textView2, textView3, textView4, textView5, textView6, relativeLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static h4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.private_type_dialog_popu, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62509a;
    }
}
