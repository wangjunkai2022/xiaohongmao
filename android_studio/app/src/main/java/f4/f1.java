package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemCreateChatMemberBinding.java */
/* loaded from: classes3.dex */
public final class f1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f65503a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f65504b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65505c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65506d;

    private f1(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f65503a = relativeLayout;
        this.f65504b = frameLayout;
        this.f65505c = imageView;
        this.f65506d = textView;
    }

    @NonNull
    public static f1 a(@NonNull View view) {
        int i4 = b.j.L6;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
        if (frameLayout != null) {
            i4 = b.j.L8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.Ag;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    return new f1((RelativeLayout) view, frameLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static f1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2046c2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f65503a;
    }
}
