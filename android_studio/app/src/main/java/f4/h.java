package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.SubtitleView;
import java.util.Objects;

/* compiled from: ExoPlayerViewBinding.java */
/* loaded from: classes3.dex */
public final class h implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f65524a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f65525b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65526c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f65527d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final AspectRatioFrameLayout f65528e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f65529f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65530g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final FrameLayout f65531h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final View f65532i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SubtitleView f65533j;

    private h(@NonNull View view, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull AspectRatioFrameLayout aspectRatioFrameLayout, @NonNull View view2, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull View view3, @NonNull SubtitleView subtitleView) {
        this.f65524a = view;
        this.f65525b = frameLayout;
        this.f65526c = imageView;
        this.f65527d = progressBar;
        this.f65528e = aspectRatioFrameLayout;
        this.f65529f = view2;
        this.f65530g = textView;
        this.f65531h = frameLayout2;
        this.f65532i = view3;
        this.f65533j = subtitleView;
    }

    @NonNull
    public static h a(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        int i4 = b.j.f1960w5;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
        if (frameLayout != null) {
            i4 = b.j.f1970x5;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.B5;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                if (progressBar != null) {
                    i4 = b.j.E5;
                    AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) ViewBindings.findChildViewById(view, i4);
                    if (aspectRatioFrameLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.G5))) != null) {
                        i4 = b.j.J5;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView != null) {
                            i4 = b.j.W5;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i4);
                            if (frameLayout2 != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i4 = b.j.f1849l6))) != null) {
                                i4 = b.j.f1881o6;
                                SubtitleView subtitleView = (SubtitleView) ViewBindings.findChildViewById(view, i4);
                                if (subtitleView != null) {
                                    return new h(view, frameLayout, imageView, progressBar, aspectRatioFrameLayout, findChildViewById, textView, frameLayout2, findChildViewById2, subtitleView);
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
    public static h b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(b.m.f2104n0, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f65524a;
    }
}
