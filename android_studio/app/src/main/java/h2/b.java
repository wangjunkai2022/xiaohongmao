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
import com.giphy.sdk.ui.views.GifView;

/* compiled from: GphAttributionViewBinding.java */
/* loaded from: classes2.dex */
public final class b implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f68959a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f68960b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GifView f68961c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f68962d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f68963e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f68964f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f68965g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f68966h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ConstraintLayout f68967i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final GifView f68968j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Button f68969k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f68970l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f68971m;

    private b(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull GifView gifView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull ConstraintLayout constraintLayout3, @NonNull GifView gifView2, @NonNull Button button, @NonNull ImageView imageView2, @NonNull ImageView imageView3) {
        this.f68959a = constraintLayout;
        this.f68960b = constraintLayout2;
        this.f68961c = gifView;
        this.f68962d = textView;
        this.f68963e = textView2;
        this.f68964f = linearLayout;
        this.f68965g = imageView;
        this.f68966h = textView3;
        this.f68967i = constraintLayout3;
        this.f68968j = gifView2;
        this.f68969k = button;
        this.f68970l = imageView2;
        this.f68971m = imageView3;
    }

    @NonNull
    public static b a(@NonNull View view) {
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
                                    i4 = p.j.Z2;
                                    GifView gifView2 = (GifView) view.findViewById(i4);
                                    if (gifView2 != null) {
                                        i4 = p.j.f17894h3;
                                        Button button = (Button) view.findViewById(i4);
                                        if (button != null) {
                                            i4 = p.j.f18014w6;
                                            ImageView imageView2 = (ImageView) view.findViewById(i4);
                                            if (imageView2 != null) {
                                                i4 = p.j.K6;
                                                ImageView imageView3 = (ImageView) view.findViewById(i4);
                                                if (imageView3 != null) {
                                                    return new b((ConstraintLayout) view, constraintLayout, gifView, textView, textView2, linearLayout, imageView, textView3, constraintLayout2, gifView2, button, imageView2, imageView3);
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
    public static b c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18086e0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f68959a;
    }
}
