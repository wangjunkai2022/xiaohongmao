package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.github.chrisbanes.photoview.PhotoView;

/* compiled from: ItemGalleryBinding.java */
/* loaded from: classes3.dex */
public final class g1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f65519a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f65520b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f65521c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PhotoView f65522d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65523e;

    private g1(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull PhotoView photoView, @NonNull TextView textView) {
        this.f65519a = frameLayout;
        this.f65520b = imageView;
        this.f65521c = frameLayout2;
        this.f65522d = photoView;
        this.f65523e = textView;
    }

    @NonNull
    public static g1 a(@NonNull View view) {
        int i4 = b.j.f1783f2;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
        if (imageView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i4 = b.j.ac;
            PhotoView photoView = (PhotoView) ViewBindings.findChildViewById(view, i4);
            if (photoView != null) {
                i4 = b.j.fg;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    return new g1(frameLayout, imageView, frameLayout, photoView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static g1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2052d2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f65519a;
    }
}
