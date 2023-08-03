package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.im.freechat.ui.widget.TextMessageView;

/* compiled from: ItemChatDetailsTextOtherBinding.java */
/* loaded from: classes3.dex */
public final class w0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65828a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65829b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f65830c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65831d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextMessageView f65832e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65833f;

    private w0(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull TextView textView, @NonNull TextMessageView textMessageView, @NonNull TextView textView2) {
        this.f65828a = constraintLayout;
        this.f65829b = constraintLayout2;
        this.f65830c = constraintLayout3;
        this.f65831d = textView;
        this.f65832e = textMessageView;
        this.f65833f = textView2;
    }

    @NonNull
    public static w0 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.wa;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i4);
        if (constraintLayout2 != null) {
            i4 = b.j.hg;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
            if (textView != null) {
                i4 = b.j.xg;
                TextMessageView textMessageView = (TextMessageView) ViewBindings.findChildViewById(view, i4);
                if (textMessageView != null) {
                    i4 = b.j.Og;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        return new w0(constraintLayout, constraintLayout, constraintLayout2, textView, textMessageView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static w0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.T1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65828a;
    }
}
