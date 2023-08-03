package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.GifView;

/* compiled from: GphUserProfileInfoDialogBinding.java */
/* loaded from: classes2.dex */
public final class o implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f69009a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final NestedScrollView f69010b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f69011c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f69012d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f69013e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final CoordinatorLayout f69014f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f69015g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final GifView f69016h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f69017i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f69018j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f69019k;

    private o(@NonNull FrameLayout frameLayout, @NonNull NestedScrollView nestedScrollView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout, @NonNull GifView gifView, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull TextView textView4) {
        this.f69009a = frameLayout;
        this.f69010b = nestedScrollView;
        this.f69011c = frameLayout2;
        this.f69012d = textView;
        this.f69013e = textView2;
        this.f69014f = coordinatorLayout;
        this.f69015g = linearLayout;
        this.f69016h = gifView;
        this.f69017i = textView3;
        this.f69018j = imageView;
        this.f69019k = textView4;
    }

    @NonNull
    public static o a(@NonNull View view) {
        int i4 = p.j.f17960q0;
        NestedScrollView nestedScrollView = (NestedScrollView) view.findViewById(i4);
        if (nestedScrollView != null) {
            i4 = p.j.A0;
            FrameLayout frameLayout = (FrameLayout) view.findViewById(i4);
            if (frameLayout != null) {
                i4 = p.j.B0;
                TextView textView = (TextView) view.findViewById(i4);
                if (textView != null) {
                    i4 = p.j.C0;
                    TextView textView2 = (TextView) view.findViewById(i4);
                    if (textView2 != null) {
                        i4 = p.j.f17863d1;
                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view.findViewById(i4);
                        if (coordinatorLayout != null) {
                            i4 = p.j.f18037z5;
                            LinearLayout linearLayout = (LinearLayout) view.findViewById(i4);
                            if (linearLayout != null) {
                                i4 = p.j.I6;
                                GifView gifView = (GifView) view.findViewById(i4);
                                if (gifView != null) {
                                    i4 = p.j.J6;
                                    TextView textView3 = (TextView) view.findViewById(i4);
                                    if (textView3 != null) {
                                        i4 = p.j.K6;
                                        ImageView imageView = (ImageView) view.findViewById(i4);
                                        if (imageView != null) {
                                            i4 = p.j.Q6;
                                            TextView textView4 = (TextView) view.findViewById(i4);
                                            if (textView4 != null) {
                                                return new o((FrameLayout) view, nestedScrollView, frameLayout, textView, textView2, coordinatorLayout, linearLayout, gifView, textView3, imageView, textView4);
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
    public static o c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18125r0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f69009a;
    }
}
