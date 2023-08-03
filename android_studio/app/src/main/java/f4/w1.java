package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: LayoutChatDetailsDownBinding.java */
/* loaded from: classes3.dex */
public final class w1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f65834a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f65835b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f65836c;

    private w1(@NonNull FrameLayout frameLayout, @NonNull ImageButton imageButton, @NonNull TextView textView) {
        this.f65834a = frameLayout;
        this.f65835b = imageButton;
        this.f65836c = textView;
    }

    @NonNull
    public static w1 a(@NonNull View view) {
        int i4 = b.j.f1741b2;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i4);
        if (imageButton != null) {
            i4 = b.j.Yg;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
            if (textView != null) {
                return new w1((FrameLayout) view, imageButton, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static w1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2142t2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f65834a;
    }
}
