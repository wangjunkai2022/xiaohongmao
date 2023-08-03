package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.GPHVideoPlayerView;
import com.giphy.sdk.ui.views.GifView;

/* compiled from: GphVideoAttributionViewBinding.java */
/* loaded from: classes2.dex */
public final class q implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f69032a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f69033b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GifView f69034c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f69035d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f69036e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f69037f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f69038g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f69039h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ConstraintLayout f69040i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f69041j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final GPHVideoPlayerView f69042k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f69043l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f69044m;

    private q(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull GifView gifView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull ConstraintLayout constraintLayout3, @NonNull Button button, @NonNull GPHVideoPlayerView gPHVideoPlayerView, @NonNull ImageView imageView2, @NonNull ImageView imageView3) {
        this.f69032a = constraintLayout;
        this.f69033b = constraintLayout2;
        this.f69034c = gifView;
        this.f69035d = textView;
        this.f69036e = textView2;
        this.f69037f = linearLayout;
        this.f69038g = imageView;
        this.f69039h = textView3;
        this.f69040i = constraintLayout3;
        this.f69041j = button;
        this.f69042k = gPHVideoPlayerView;
        this.f69043l = imageView2;
        this.f69044m = imageView3;
    }

    @NonNull
    public static q a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i4 = p.j.f18032z0;
        GifView gifView = (GifView) view.findViewById(i4);
        if (gifView != null) {
            i4 = p.j.C0;
            TextView textView = (TextView) view.findViewById(i4);
            if (textView != null) {
                i4 = p.j.O2;
                TextView textView2 = (TextView) view.findViewById(i4);
                if (textView2 != null) {
                    i4 = p.j.T2;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i4);
                    if (linearLayout != null) {
                        i4 = p.j.U2;
                        ImageView imageView = (ImageView) view.findViewById(i4);
                        if (imageView != null) {
                            i4 = p.j.V2;
                            TextView textView3 = (TextView) view.findViewById(i4);
                            if (textView3 != null) {
                                i4 = p.j.W2;
                                ConstraintLayout constraintLayout2 = (ConstraintLayout) view.findViewById(i4);
                                if (constraintLayout2 != null) {
                                    i4 = p.j.f17894h3;
                                    Button button = (Button) view.findViewById(i4);
                                    if (button != null) {
                                        i4 = p.j.f17901i3;
                                        GPHVideoPlayerView gPHVideoPlayerView = (GPHVideoPlayerView) view.findViewById(i4);
                                        if (gPHVideoPlayerView != null) {
                                            i4 = p.j.f18014w6;
                                            ImageView imageView2 = (ImageView) view.findViewById(i4);
                                            if (imageView2 != null) {
                                                i4 = p.j.K6;
                                                ImageView imageView3 = (ImageView) view.findViewById(i4);
                                                if (imageView3 != null) {
                                                    return new q((ConstraintLayout) view, constraintLayout, gifView, textView, textView2, linearLayout, imageView, textView3, constraintLayout2, button, gPHVideoPlayerView, imageView2, imageView3);
                                                }
                                            }
                                        }
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
    public static q c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18131t0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f69032a;
    }
}
