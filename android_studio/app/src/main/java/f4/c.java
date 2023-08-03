package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.google.android.material.navigation.NavigationView;

/* compiled from: ActivityHomeImBinding.java */
/* loaded from: classes3.dex */
public final class c implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final DrawerLayout f65439a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final DrawerLayout f65440b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FragmentContainerView f65441c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final NavigationView f65442d;

    private c(@NonNull DrawerLayout drawerLayout, @NonNull DrawerLayout drawerLayout2, @NonNull FragmentContainerView fragmentContainerView, @NonNull NavigationView navigationView) {
        this.f65439a = drawerLayout;
        this.f65440b = drawerLayout2;
        this.f65441c = fragmentContainerView;
        this.f65442d = navigationView;
    }

    @NonNull
    public static c a(@NonNull View view) {
        DrawerLayout drawerLayout = (DrawerLayout) view;
        int i4 = b.j.Y6;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, i4);
        if (fragmentContainerView != null) {
            i4 = b.j.lb;
            NavigationView navigationView = (NavigationView) ViewBindings.findChildViewById(view, i4);
            if (navigationView != null) {
                return new c(drawerLayout, drawerLayout, fragmentContainerView, navigationView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static c c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.F, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public DrawerLayout getRoot() {
        return this.f65439a;
    }
}
