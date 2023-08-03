package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.wang.avi.AVLoadingIndicatorView;

/* compiled from: DialogLoadingBinding.java */
/* loaded from: classes3.dex */
public final class d0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62314a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AVLoadingIndicatorView f62315b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62316c;

    private d0(@NonNull LinearLayout linearLayout, @NonNull AVLoadingIndicatorView aVLoadingIndicatorView, @NonNull TextView textView) {
        this.f62314a = linearLayout;
        this.f62315b = aVLoadingIndicatorView;
        this.f62316c = textView;
    }

    @NonNull
    public static d0 a(@NonNull View view) {
        int i4 = R.id.AVLoadingIndicatorView;
        AVLoadingIndicatorView aVLoadingIndicatorView = (AVLoadingIndicatorView) ViewBindings.findChildViewById(view, R.id.AVLoadingIndicatorView);
        if (aVLoadingIndicatorView != null) {
            i4 = R.id.id_tv_loading_dialog_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.id_tv_loading_dialog_text);
            if (textView != null) {
                return new d0((LinearLayout) view, aVLoadingIndicatorView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static d0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_loading, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62314a;
    }
}
