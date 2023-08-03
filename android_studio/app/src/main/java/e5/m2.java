package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ItemDepositOptionBinding.java */
/* loaded from: classes3.dex */
public final class m2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62741a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62742b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62743c;

    private m2(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62741a = constraintLayout;
        this.f62742b = textView;
        this.f62743c = textView2;
    }

    @NonNull
    public static m2 a(@NonNull View view) {
        int i4 = R.id.tv_coins;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coins);
        if (textView != null) {
            i4 = R.id.tv_yuan;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_yuan);
            if (textView2 != null) {
                return new m2((ConstraintLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static m2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_deposit_option, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62741a;
    }
}
