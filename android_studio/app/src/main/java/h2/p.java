package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.GifView;

/* compiled from: GphUserProfileItemBinding.java */
/* loaded from: classes2.dex */
public final class p implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f69020a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Guideline f69021b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GifView f69022c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f69023d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f69024e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f69025f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final FrameLayout f69026g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ConstraintLayout f69027h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageButton f69028i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final GifView f69029j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f69030k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f69031l;

    private p(@NonNull FrameLayout frameLayout, @NonNull Guideline guideline, @NonNull GifView gifView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull View view, @NonNull FrameLayout frameLayout3, @NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull GifView gifView2, @NonNull TextView textView2, @NonNull ImageView imageView) {
        this.f69020a = frameLayout;
        this.f69021b = guideline;
        this.f69022c = gifView;
        this.f69023d = frameLayout2;
        this.f69024e = textView;
        this.f69025f = view;
        this.f69026g = frameLayout3;
        this.f69027h = constraintLayout;
        this.f69028i = imageButton;
        this.f69029j = gifView2;
        this.f69030k = textView2;
        this.f69031l = imageView;
    }

    @NonNull
    public static p a(@NonNull View view) {
        View findViewById;
        int i4 = p.j.f17936n0;
        Guideline guideline = (Guideline) view.findViewById(i4);
        if (guideline != null) {
            i4 = p.j.f17944o0;
            GifView gifView = (GifView) view.findViewById(i4);
            if (gifView != null) {
                i4 = p.j.A0;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(i4);
                if (frameLayout != null) {
                    i4 = p.j.C0;
                    TextView textView = (TextView) view.findViewById(i4);
                    if (textView != null && (findViewById = view.findViewById((i4 = p.j.T0))) != null) {
                        i4 = p.j.f17923l3;
                        FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i4);
                        if (frameLayout2 != null) {
                            i4 = p.j.f17931m3;
                            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i4);
                            if (constraintLayout != null) {
                                i4 = p.j.f17987t3;
                                ImageButton imageButton = (ImageButton) view.findViewById(i4);
                                if (imageButton != null) {
                                    i4 = p.j.I6;
                                    GifView gifView2 = (GifView) view.findViewById(i4);
                                    if (gifView2 != null) {
                                        i4 = p.j.J6;
                                        TextView textView2 = (TextView) view.findViewById(i4);
                                        if (textView2 != null) {
                                            i4 = p.j.K6;
                                            ImageView imageView = (ImageView) view.findViewById(i4);
                                            if (imageView != null) {
                                                return new p((FrameLayout) view, guideline, gifView, frameLayout, textView, findViewById, frameLayout2, constraintLayout, imageButton, gifView2, textView2, imageView);
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
    public static p c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18128s0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f69020a;
    }
}
