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

/* compiled from: ItemChatDetailsTextMeBinding.java */
/* loaded from: classes3.dex */
public final class v0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65800a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65801b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f65802c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65803d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextMessageView f65804e;

    private v0(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull TextView textView, @NonNull TextMessageView textMessageView) {
        this.f65800a = constraintLayout;
        this.f65801b = constraintLayout2;
        this.f65802c = constraintLayout3;
        this.f65803d = textView;
        this.f65804e = textMessageView;
    }

    @NonNull
    public static v0 a(@NonNull View view) {
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
                    return new v0(constraintLayout, constraintLayout, constraintLayout2, textView, textMessageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static v0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.S1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65800a;
    }
}
