package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.im.freechat.ui.widget.TextMessageView;

/* compiled from: ItemChatDetailsImageMeBinding.java */
/* loaded from: classes3.dex */
public final class k0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65604a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65605b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65606c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CardView f65607d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextMessageView f65608e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65609f;

    private k0(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull CardView cardView, @NonNull TextMessageView textMessageView, @NonNull TextView textView) {
        this.f65604a = constraintLayout;
        this.f65605b = constraintLayout2;
        this.f65606c = imageView;
        this.f65607d = cardView;
        this.f65608e = textMessageView;
        this.f65609f = textView;
    }

    @NonNull
    public static k0 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.X8;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
        if (imageView != null) {
            i4 = b.j.wa;
            CardView cardView = (CardView) ViewBindings.findChildViewById(view, i4);
            if (cardView != null) {
                i4 = b.j.fg;
                TextMessageView textMessageView = (TextMessageView) ViewBindings.findChildViewById(view, i4);
                if (textMessageView != null) {
                    i4 = b.j.hg;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView != null) {
                        return new k0(constraintLayout, constraintLayout, imageView, cardView, textMessageView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static k0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.H1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65604a;
    }
}
