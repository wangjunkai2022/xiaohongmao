package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: FragmentCreatingChooseMemberBinding.java */
/* loaded from: classes3.dex */
public final class p implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f65679a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FloatingActionButton f65680b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f65681c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f65682d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ProgressBar f65683e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final FrameLayout f65684f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Toolbar f65685g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f65686h;

    private p(@NonNull RelativeLayout relativeLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull ProgressBar progressBar, @NonNull FrameLayout frameLayout, @NonNull Toolbar toolbar, @NonNull TextView textView) {
        this.f65679a = relativeLayout;
        this.f65680b = floatingActionButton;
        this.f65681c = linearLayout;
        this.f65682d = recyclerView;
        this.f65683e = progressBar;
        this.f65684f = frameLayout;
        this.f65685g = toolbar;
        this.f65686h = textView;
    }

    @NonNull
    public static p a(@NonNull View view) {
        int i4 = b.j.Q3;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i4);
        if (floatingActionButton != null) {
            i4 = b.j.y9;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i4);
            if (linearLayout != null) {
                i4 = b.j.na;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
                if (recyclerView != null) {
                    i4 = b.j.mc;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                    if (progressBar != null) {
                        i4 = b.j.Qc;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
                        if (frameLayout != null) {
                            i4 = b.j.Hf;
                            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i4);
                            if (toolbar != null) {
                                i4 = b.j.qg;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                                if (textView != null) {
                                    return new p((RelativeLayout) view, floatingActionButton, linearLayout, recyclerView, progressBar, frameLayout, toolbar, textView);
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
        View inflate = layoutInflater.inflate(b.m.F0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f65679a;
    }
}
