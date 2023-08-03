package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: CustomToastBinding.java */
/* loaded from: classes3.dex */
public final class p implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f62876a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62877b;

    private p(@NonNull CardView cardView, @NonNull TextView textView) {
        this.f62876a = cardView;
        this.f62877b = textView;
    }

    @NonNull
    public static p a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.toast_message);
        if (textView != null) {
            return new p((CardView) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.toast_message)));
    }

    @NonNull
    public static p c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.custom_toast, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f62876a;
    }
}
