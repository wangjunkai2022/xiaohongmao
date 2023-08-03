package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemGroupMemberBinding.java */
/* loaded from: classes3.dex */
public final class h1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65539a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Barrier f65540b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f65541c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f65542d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f65543e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65544f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65545g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f65546h;

    private h1(@NonNull ConstraintLayout constraintLayout, @NonNull Barrier barrier, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f65539a = constraintLayout;
        this.f65540b = barrier;
        this.f65541c = frameLayout;
        this.f65542d = imageView;
        this.f65543e = imageView2;
        this.f65544f = textView;
        this.f65545g = textView2;
        this.f65546h = textView3;
    }

    @NonNull
    public static h1 a(@NonNull View view) {
        int i4 = b.j.G1;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i4);
        if (barrier != null) {
            i4 = b.j.L6;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
            if (frameLayout != null) {
                i4 = b.j.U8;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
                if (imageView != null) {
                    i4 = b.j.f1769d9;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i4);
                    if (imageView2 != null) {
                        i4 = b.j.sg;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView != null) {
                            i4 = b.j.wg;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                            if (textView2 != null) {
                                i4 = b.j.Lg;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                if (textView3 != null) {
                                    return new h1((ConstraintLayout) view, barrier, frameLayout, imageView, imageView2, textView, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static h1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2057e2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65539a;
    }
}
