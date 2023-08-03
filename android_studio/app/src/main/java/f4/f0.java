package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import java.util.Objects;

/* compiled from: ItemChatDetailsElementsOtherBinding.java */
/* loaded from: classes3.dex */
public final class f0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f65499a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f65500b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65501c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65502d;

    private f0(@NonNull View view, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f65499a = view;
        this.f65500b = frameLayout;
        this.f65501c = imageView;
        this.f65502d = textView;
    }

    @NonNull
    public static f0 a(@NonNull View view) {
        int i4 = b.j.L6;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
        if (frameLayout != null) {
            i4 = b.j.U8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.ag;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    return new f0(view, frameLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static f0 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(b.m.C1, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f65499a;
    }
}
