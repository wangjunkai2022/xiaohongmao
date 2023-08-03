package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ActivityMessageGalleryBinding.java */
/* loaded from: classes3.dex */
public final class d implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65459a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Toolbar f65460b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65461c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f65462d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65463e;

    private d(@NonNull ConstraintLayout constraintLayout, @NonNull Toolbar toolbar, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.f65459a = constraintLayout;
        this.f65460b = toolbar;
        this.f65461c = imageView;
        this.f65462d = recyclerView;
        this.f65463e = textView;
    }

    @NonNull
    public static d a(@NonNull View view) {
        int i4 = b.j.f1767d7;
        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i4);
        if (toolbar != null) {
            i4 = b.j.R8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.Ac;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
                if (recyclerView != null) {
                    i4 = b.j.dg;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView != null) {
                        return new d((ConstraintLayout) view, toolbar, imageView, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static d c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.I, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65459a;
    }
}
