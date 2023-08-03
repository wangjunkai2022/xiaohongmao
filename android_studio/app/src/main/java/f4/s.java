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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import b4.b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.tabs.TabLayout;

/* compiled from: FragmentGroupManagerBinding.java */
/* loaded from: classes3.dex */
public final class s implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65727a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FloatingActionButton f65728b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f65729c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f65730d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f65731e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ConstraintLayout f65732f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f65733g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final FrameLayout f65734h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f65735i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final y1 f65736j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f65737k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RecyclerView f65738l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ViewPager2 f65739m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final FrameLayout f65740n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TabLayout f65741o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final a2 f65742p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f65743q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f65744r;

    private s(@NonNull ConstraintLayout constraintLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull RecyclerView recyclerView, @NonNull View view, @NonNull FrameLayout frameLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout2, @NonNull y1 y1Var, @NonNull LinearLayout linearLayout3, @NonNull RecyclerView recyclerView2, @NonNull ViewPager2 viewPager2, @NonNull FrameLayout frameLayout3, @NonNull TabLayout tabLayout, @NonNull a2 a2Var, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65727a = constraintLayout;
        this.f65728b = floatingActionButton;
        this.f65729c = recyclerView;
        this.f65730d = view;
        this.f65731e = frameLayout;
        this.f65732f = constraintLayout2;
        this.f65733g = linearLayout;
        this.f65734h = frameLayout2;
        this.f65735i = linearLayout2;
        this.f65736j = y1Var;
        this.f65737k = linearLayout3;
        this.f65738l = recyclerView2;
        this.f65739m = viewPager2;
        this.f65740n = frameLayout3;
        this.f65741o = tabLayout;
        this.f65742p = a2Var;
        this.f65743q = textView;
        this.f65744r = textView2;
    }

    @NonNull
    public static s a(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        int i4 = b.j.T0;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i4);
        if (floatingActionButton != null) {
            i4 = b.j.I2;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
            if (recyclerView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.B4))) != null) {
                i4 = b.j.O6;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
                if (frameLayout != null) {
                    i4 = b.j.f1809h8;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i4);
                    if (constraintLayout != null) {
                        i4 = b.j.y9;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                        if (linearLayout != null) {
                            i4 = b.j.z9;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i4);
                            if (frameLayout2 != null) {
                                i4 = b.j.E9;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                                if (linearLayout2 != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i4 = b.j.G9))) != null) {
                                    y1 a10 = y1.a(findChildViewById2);
                                    i4 = b.j.J9;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                                    if (linearLayout3 != null) {
                                        i4 = b.j.na;
                                        RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i4);
                                        if (recyclerView2 != null) {
                                            i4 = b.j.Mb;
                                            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i4);
                                            if (viewPager2 != null) {
                                                i4 = b.j.Qc;
                                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, i4);
                                                if (frameLayout3 != null) {
                                                    i4 = b.j.Re;
                                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, i4);
                                                    if (tabLayout != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i4 = b.j.Hf))) != null) {
                                                        a2 a11 = a2.a(findChildViewById3);
                                                        i4 = b.j.Wf;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                                                        if (textView != null) {
                                                            i4 = b.j.Qg;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                            if (textView2 != null) {
                                                                return new s((ConstraintLayout) view, floatingActionButton, recyclerView, findChildViewById, frameLayout, constraintLayout, linearLayout, frameLayout2, linearLayout2, a10, linearLayout3, recyclerView2, viewPager2, frameLayout3, tabLayout, a11, textView, textView2);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static s c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.T0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65727a;
    }
}
