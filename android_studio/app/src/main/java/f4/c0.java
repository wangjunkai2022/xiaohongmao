package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.im.freechat.utils.AudioView;

/* compiled from: ItemChatDetailsAudioOtherBinding.java */
/* loaded from: classes3.dex */
public final class c0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65443a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AudioView f65444b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageButton f65445c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f65446d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final CardView f65447e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65448f;

    private c0(@NonNull ConstraintLayout constraintLayout, @NonNull AudioView audioView, @NonNull ImageButton imageButton, @NonNull ConstraintLayout constraintLayout2, @NonNull CardView cardView, @NonNull TextView textView) {
        this.f65443a = constraintLayout;
        this.f65444b = audioView;
        this.f65445c = imageButton;
        this.f65446d = constraintLayout2;
        this.f65447e = cardView;
        this.f65448f = textView;
    }

    @NonNull
    public static c0 a(@NonNull View view) {
        int i4 = b.j.f1906r1;
        AudioView audioView = (AudioView) ViewBindings.findChildViewById(view, i4);
        if (audioView != null) {
            i4 = b.j.Y1;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i4);
            if (imageButton != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i4 = b.j.wa;
                CardView cardView = (CardView) ViewBindings.findChildViewById(view, i4);
                if (cardView != null) {
                    i4 = b.j.Zf;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView != null) {
                        return new c0(constraintLayout, audioView, imageButton, constraintLayout, cardView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static c0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2177z1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65443a;
    }
}
