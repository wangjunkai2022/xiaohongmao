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

/* compiled from: DialogSimpleConfirmationBinding.java */
/* loaded from: classes3.dex */
public final class o0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62836a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f62837b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f62838c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62839d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62840e;

    private o0(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62836a = constraintLayout;
        this.f62837b = button;
        this.f62838c = button2;
        this.f62839d = textView;
        this.f62840e = textView2;
    }

    @NonNull
    public static o0 a(@NonNull View view) {
        int i4 = R.id.btn_cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_cancel);
        if (button != null) {
            i4 = R.id.btn_confirm;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_confirm);
            if (button2 != null) {
                i4 = R.id.tv_message;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_message);
                if (textView != null) {
                    i4 = R.id.tv_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new o0((ConstraintLayout) view, button, button2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static o0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_simple_confirmation, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62836a;
    }
}
