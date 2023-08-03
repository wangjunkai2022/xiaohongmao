package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogCheckipErrorBinding.java */
/* loaded from: classes3.dex */
public final class s implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63033a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f63034b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f63035c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63036d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63037e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f63038f;

    private s(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f63033a = constraintLayout;
        this.f63034b = textView;
        this.f63035c = linearLayout;
        this.f63036d = textView2;
        this.f63037e = textView3;
        this.f63038f = textView4;
    }

    @NonNull
    public static s a(@NonNull View view) {
        int i4 = R.id.dialog_checkip_kefu;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_checkip_kefu);
        if (textView != null) {
            i4 = R.id.dialog_checkip_kefu_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.dialog_checkip_kefu_layout);
            if (linearLayout != null) {
                i4 = R.id.dialog_checkip_sure;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_checkip_sure);
                if (textView2 != null) {
                    i4 = R.id.dialog_checkip_tishi;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_checkip_tishi);
                    if (textView3 != null) {
                        i4 = R.id.dialog_checkip_title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_checkip_title);
                        if (textView4 != null) {
                            return new s((ConstraintLayout) view, textView, linearLayout, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static s c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_checkip_error, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63033a;
    }
}
