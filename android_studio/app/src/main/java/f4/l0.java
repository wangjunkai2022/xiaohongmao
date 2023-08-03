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

/* compiled from: ItemChatDetailsImageOtherBinding.java */
/* loaded from: classes3.dex */
public final class l0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65624a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65625b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65626c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CardView f65627d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextMessageView f65628e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65629f;

    private l0(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull CardView cardView, @NonNull TextMessageView textMessageView, @NonNull TextView textView) {
        this.f65624a = constraintLayout;
        this.f65625b = constraintLayout2;
        this.f65626c = imageView;
        this.f65627d = cardView;
        this.f65628e = textMessageView;
        this.f65629f = textView;
    }

    @NonNull
    public static l0 a(@NonNull View view) {
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
                        return new l0(constraintLayout, constraintLayout, imageView, cardView, textMessageView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static l0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.I1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65624a;
    }
}
