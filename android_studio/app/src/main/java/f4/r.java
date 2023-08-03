package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: FragmentDataUsageBinding.java */
/* loaded from: classes3.dex */
public final class r implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65713a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f65714b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f65715c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f65716d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RecyclerView f65717e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Toolbar f65718f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65719g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f65720h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f65721i;

    private r(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f65713a = linearLayout;
        this.f65714b = button;
        this.f65715c = frameLayout;
        this.f65716d = linearLayout2;
        this.f65717e = recyclerView;
        this.f65718f = toolbar;
        this.f65719g = textView;
        this.f65720h = textView2;
        this.f65721i = textView3;
    }

    @NonNull
    public static r a(@NonNull View view) {
        int i4 = b.j.f1947v2;
        Button button = (Button) ViewBindings.findChildViewById(view, i4);
        if (button != null) {
            i4 = b.j.M6;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
            if (frameLayout != null) {
                i4 = b.j.I9;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                if (linearLayout != null) {
                    i4 = b.j.ed;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
                    if (recyclerView != null) {
                        i4 = b.j.Hf;
                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i4);
                        if (toolbar != null) {
                            i4 = b.j.bg;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                            if (textView != null) {
                                i4 = b.j.Bg;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                                if (textView2 != null) {
                                    i4 = b.j.Cg;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                    if (textView3 != null) {
                                        return new r((LinearLayout) view, button, frameLayout, linearLayout, recyclerView, toolbar, textView, textView2, textView3);
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
    public static r c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.H0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65713a;
    }
}
