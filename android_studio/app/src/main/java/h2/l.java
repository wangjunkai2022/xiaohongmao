package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.GifView;

/* compiled from: GphSmartVideoPreviewItemBinding.java */
/* loaded from: classes2.dex */
public final class l implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f68998a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final GifView f68999b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f69000c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f69001d;

    private l(@NonNull ConstraintLayout constraintLayout, @NonNull GifView gifView, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView) {
        this.f68998a = constraintLayout;
        this.f68999b = gifView;
        this.f69000c = constraintLayout2;
        this.f69001d = imageView;
    }

    @NonNull
    public static l a(@NonNull View view) {
        int i4 = p.j.M2;
        GifView gifView = (GifView) view.findViewById(i4);
        if (gifView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            int i10 = p.j.C5;
            ImageView imageView = (ImageView) view.findViewById(i10);
            if (imageView != null) {
                return new l(constraintLayout, gifView, constraintLayout, imageView);
            }
            i4 = i10;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static l c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18116o0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f68998a;
    }
}
