package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import b4.b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.tabs.TabLayout;

/* compiled from: FragmentUserprofileBinding.java */
/* loaded from: classes3.dex */
public final class v implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65786a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FloatingActionButton f65787b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f65788c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f65789d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f65790e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final z f65791f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f65792g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ViewPager2 f65793h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TabLayout f65794i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final c2 f65795j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f65796k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f65797l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f65798m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f65799n;

    private v(@NonNull ConstraintLayout constraintLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull TextView textView, @NonNull View view, @NonNull FrameLayout frameLayout, @NonNull z zVar, @NonNull LinearLayout linearLayout, @NonNull ViewPager2 viewPager2, @NonNull TabLayout tabLayout, @NonNull c2 c2Var, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f65786a = constraintLayout;
        this.f65787b = floatingActionButton;
        this.f65788c = textView;
        this.f65789d = view;
        this.f65790e = frameLayout;
        this.f65791f = zVar;
        this.f65792g = linearLayout;
        this.f65793h = viewPager2;
        this.f65794i = tabLayout;
        this.f65795j = c2Var;
        this.f65796k = textView2;
        this.f65797l = textView3;
        this.f65798m = textView4;
        this.f65799n = textView5;
    }

    @NonNull
    public static v a(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        int i4 = b.j.X2;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i4);
        if (floatingActionButton != null) {
            i4 = b.j.h4;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
            if (textView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.B4))) != null) {
                i4 = b.j.O6;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
                if (frameLayout != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i4 = b.j.f1820i9))) != null) {
                    z a10 = z.a(findChildViewById2);
                    i4 = b.j.n9;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                    if (linearLayout != null) {
                        i4 = b.j.Mb;
                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i4);
                        if (viewPager2 != null) {
                            i4 = b.j.Re;
                            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, i4);
                            if (tabLayout != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i4 = b.j.Hf))) != null) {
                                c2 a11 = c2.a(findChildViewById3);
                                i4 = b.j.Zg;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                                if (textView2 != null) {
                                    i4 = b.j.ah;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                    if (textView3 != null) {
                                        i4 = b.j.bh;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i4);
                                        if (textView4 != null) {
                                            i4 = b.j.ch;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i4);
                                            if (textView5 != null) {
                                                return new v((ConstraintLayout) view, floatingActionButton, textView, findChildViewById, frameLayout, a10, linearLayout, viewPager2, tabLayout, a11, textView2, textView3, textView4, textView5);
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
    public static v c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.W0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65786a;
    }
}
