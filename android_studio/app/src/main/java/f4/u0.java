package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.emoji2.widget.EmojiTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemChatDetailsTextChannelBinding.java */
/* loaded from: classes3.dex */
public final class u0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65775a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65776b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f65777c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EmojiTextView f65778d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65779e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65780f;

    private u0(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull EmojiTextView emojiTextView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65775a = constraintLayout;
        this.f65776b = constraintLayout2;
        this.f65777c = constraintLayout3;
        this.f65778d = emojiTextView;
        this.f65779e = textView;
        this.f65780f = textView2;
    }

    @NonNull
    public static u0 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.wa;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i4);
        if (constraintLayout2 != null) {
            i4 = b.j.xg;
            EmojiTextView emojiTextView = (EmojiTextView) ViewBindings.findChildViewById(view, i4);
            if (emojiTextView != null) {
                i4 = b.j.yg;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.Tg;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        return new u0(constraintLayout, constraintLayout, constraintLayout2, emojiTextView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static u0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.R1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65775a;
    }
}
