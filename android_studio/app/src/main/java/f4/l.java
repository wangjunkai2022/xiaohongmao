package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.bigkoo.convenientbanner.ConvenientBanner;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.navigation.NavigationView;
import com.im.freechat.ui.widget.ChatDetailsAudioPlayLayout;

/* compiled from: FragmentChatListBinding.java */
/* loaded from: classes3.dex */
public final class l implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final DrawerLayout f65613a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ChatDetailsAudioPlayLayout f65614b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConvenientBanner f65615c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f65616d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final DrawerLayout f65617e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final FloatingActionButton f65618f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final NavigationView f65619g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ContentLoadingProgressBar f65620h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SearchView f65621i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ProgressBar f65622j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Toolbar f65623k;

    private l(@NonNull DrawerLayout drawerLayout, @NonNull ChatDetailsAudioPlayLayout chatDetailsAudioPlayLayout, @NonNull ConvenientBanner convenientBanner, @NonNull RecyclerView recyclerView, @NonNull DrawerLayout drawerLayout2, @NonNull FloatingActionButton floatingActionButton, @NonNull NavigationView navigationView, @NonNull ContentLoadingProgressBar contentLoadingProgressBar, @NonNull SearchView searchView, @NonNull ProgressBar progressBar, @NonNull Toolbar toolbar) {
        this.f65613a = drawerLayout;
        this.f65614b = chatDetailsAudioPlayLayout;
        this.f65615c = convenientBanner;
        this.f65616d = recyclerView;
        this.f65617e = drawerLayout2;
        this.f65618f = floatingActionButton;
        this.f65619g = navigationView;
        this.f65620h = contentLoadingProgressBar;
        this.f65621i = searchView;
        this.f65622j = progressBar;
        this.f65623k = toolbar;
    }

    @NonNull
    public static l a(@NonNull View view) {
        ConvenientBanner findChildViewById;
        int i4 = b.j.f1886p1;
        ChatDetailsAudioPlayLayout chatDetailsAudioPlayLayout = (ChatDetailsAudioPlayLayout) ViewBindings.findChildViewById(view, i4);
        if (chatDetailsAudioPlayLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.D1))) != null) {
            i4 = b.j.Z2;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
            if (recyclerView != null) {
                DrawerLayout drawerLayout = (DrawerLayout) view;
                i4 = b.j.homeFab;
                FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i4);
                if (floatingActionButton != null) {
                    i4 = b.j.navigationView;
                    NavigationView navigationView = (NavigationView) ViewBindings.findChildViewById(view, i4);
                    if (navigationView != null) {
                        i4 = b.j.progressSmall;
                        ContentLoadingProgressBar contentLoadingProgressBar = (ContentLoadingProgressBar) ViewBindings.findChildViewById(view, i4);
                        if (contentLoadingProgressBar != null) {
                            i4 = b.j.searchView;
                            SearchView searchView = (SearchView) ViewBindings.findChildViewById(view, i4);
                            if (searchView != null) {
                                i4 = b.j.syncProgress;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                                if (progressBar != null) {
                                    i4 = b.j.Hf;
                                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i4);
                                    if (toolbar != null) {
                                        return new l(drawerLayout, chatDetailsAudioPlayLayout, findChildViewById, recyclerView, drawerLayout, floatingActionButton, navigationView, contentLoadingProgressBar, searchView, progressBar, toolbar);
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
    public static l c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.B0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public DrawerLayout getRoot() {
        return this.f65613a;
    }
}
