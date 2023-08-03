package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemContactSmallBinding.java */
/* loaded from: classes3.dex */
public final class d1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65469a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Barrier f65470b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Barrier f65471c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageButton f65472d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f65473e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f65474f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65475g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f65476h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f65477i;

    private d1(@NonNull ConstraintLayout constraintLayout, @NonNull Barrier barrier, @NonNull Barrier barrier2, @NonNull ImageButton imageButton, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f65469a = constraintLayout;
        this.f65470b = barrier;
        this.f65471c = barrier2;
        this.f65472d = imageButton;
        this.f65473e = imageView;
        this.f65474f = progressBar;
        this.f65475g = textView;
        this.f65476h = textView2;
        this.f65477i = textView3;
    }

    @NonNull
    public static d1 a(@NonNull View view) {
        int i4 = b.j.f1966x1;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i4);
        if (barrier != null) {
            i4 = b.j.G1;
            Barrier barrier2 = (Barrier) ViewBindings.findChildViewById(view, i4);
            if (barrier2 != null) {
                i4 = b.j.f1824j2;
                ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i4);
                if (imageButton != null) {
                    i4 = b.j.J8;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
                    if (imageView != null) {
                        i4 = b.j.Xb;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                        if (progressBar != null) {
                            i4 = b.j.ag;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                            if (textView != null) {
                                i4 = b.j.og;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                                if (textView2 != null) {
                                    i4 = b.j.dh;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                    if (textView3 != null) {
                                        return new d1((ConstraintLayout) view, barrier, barrier2, imageButton, imageView, progressBar, textView, textView2, textView3);
                                    }
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
    public static d1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2034a2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65469a;
    }
}
