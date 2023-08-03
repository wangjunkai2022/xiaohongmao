package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.im.freechat.ui.widget.TextMessageView;

/* compiled from: ItemChatDetailsMediaGroupMeBinding.java */
/* loaded from: classes3.dex */
public final class o0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65668a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f65669b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CardView f65670c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextMessageView f65671d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65672e;

    private o0(@NonNull ConstraintLayout constraintLayout, @NonNull RecyclerView recyclerView, @NonNull CardView cardView, @NonNull TextMessageView textMessageView, @NonNull TextView textView) {
        this.f65668a = constraintLayout;
        this.f65669b = recyclerView;
        this.f65670c = cardView;
        this.f65671d = textMessageView;
        this.f65672e = textView;
    }

    @NonNull
    public static o0 a(@NonNull View view) {
        int i4 = b.j.S7;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
        if (recyclerView != null) {
            i4 = b.j.wa;
            CardView cardView = (CardView) ViewBindings.findChildViewById(view, i4);
            if (cardView != null) {
                i4 = b.j.fg;
                TextMessageView textMessageView = (TextMessageView) ViewBindings.findChildViewById(view, i4);
                if (textMessageView != null) {
                    i4 = b.j.hg;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView != null) {
                        return new o0((ConstraintLayout) view, recyclerView, cardView, textMessageView, textView);
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
        View inflate = layoutInflater.inflate(b.m.L1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65668a;
    }
}
