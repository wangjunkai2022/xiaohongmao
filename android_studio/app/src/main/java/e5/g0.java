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

/* compiled from: DialogPinnedMsgIntroBinding.java */
/* loaded from: classes3.dex */
public final class g0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62435a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62436b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62437c;

    private g0(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62435a = constraintLayout;
        this.f62436b = textView;
        this.f62437c = textView2;
    }

    @NonNull
    public static g0 a(@NonNull View view) {
        int i4 = R.id.tvContent;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvContent);
        if (textView != null) {
            i4 = R.id.tvHeader;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvHeader);
            if (textView2 != null) {
                return new g0((ConstraintLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static g0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_pinned_msg_intro, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62435a;
    }
}
