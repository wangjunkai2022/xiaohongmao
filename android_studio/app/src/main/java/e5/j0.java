package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogRechargeSucceedBinding.java */
/* loaded from: classes3.dex */
public final class j0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62569a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f62570b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62571c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62572d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62573e;

    private j0(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62569a = constraintLayout;
        this.f62570b = button;
        this.f62571c = textView;
        this.f62572d = textView2;
        this.f62573e = textView3;
    }

    @NonNull
    public static j0 a(@NonNull View view) {
        int i4 = R.id.btn_confirm;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_confirm);
        if (button != null) {
            i4 = R.id.tv_coins;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coins);
            if (textView != null) {
                i4 = R.id.tv_hint;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hint);
                if (textView2 != null) {
                    i4 = R.id.tv_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView3 != null) {
                        return new j0((ConstraintLayout) view, button, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static j0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_recharge_succeed, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62569a;
    }
}
