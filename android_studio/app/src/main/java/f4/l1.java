package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.emoji2.widget.EmojiTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemHistoryLinkBinding.java */
/* loaded from: classes3.dex */
public final class l1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65630a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f65631b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f65632c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f65633d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65634e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final EmojiTextView f65635f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65636g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f65637h;

    private l1(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull EmojiTextView emojiTextView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f65630a = constraintLayout;
        this.f65631b = constraintLayout2;
        this.f65632c = frameLayout;
        this.f65633d = imageView;
        this.f65634e = textView;
        this.f65635f = emojiTextView;
        this.f65636g = textView2;
        this.f65637h = textView3;
    }

    @NonNull
    public static l1 a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = b.j.L6;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
        if (frameLayout != null) {
            i4 = b.j.U8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.ag;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.xg;
                    EmojiTextView emojiTextView = (EmojiTextView) ViewBindings.findChildViewById(view, i4);
                    if (emojiTextView != null) {
                        i4 = b.j.Og;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView2 != null) {
                            i4 = b.j.Tg;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                            if (textView3 != null) {
                                return new l1(constraintLayout, constraintLayout, frameLayout, imageView, textView, emojiTextView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static l1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2078i2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65630a;
    }
}
