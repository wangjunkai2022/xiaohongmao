package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentSettingBinding.java */
/* loaded from: classes3.dex */
public final class u1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63178a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f63179b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f63180c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f63181d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f63182e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f63183f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f63184g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f63185h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f63186i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f63187j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SwitchCompat f63188k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final Toolbar f63189l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f63190m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f63191n;

    private u1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull RecyclerView recyclerView, @NonNull ProgressBar progressBar, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SwitchCompat switchCompat, @NonNull Toolbar toolbar, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f63178a = constraintLayout;
        this.f63179b = imageButton;
        this.f63180c = recyclerView;
        this.f63181d = progressBar;
        this.f63182e = relativeLayout;
        this.f63183f = relativeLayout2;
        this.f63184g = relativeLayout3;
        this.f63185h = textView;
        this.f63186i = textView2;
        this.f63187j = textView3;
        this.f63188k = switchCompat;
        this.f63189l = toolbar;
        this.f63190m = textView4;
        this.f63191n = textView5;
    }

    @NonNull
    public static u1 a(@NonNull View view) {
        int i4 = R.id.imgbtn_toolbar_back;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
        if (imageButton != null) {
            i4 = R.id.rv_settings;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_settings);
            if (recyclerView != null) {
                i4 = R.id.setting_prg_clear_cache;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.setting_prg_clear_cache);
                if (progressBar != null) {
                    i4 = R.id.setting_rl_black_list;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.setting_rl_black_list);
                    if (relativeLayout != null) {
                        i4 = R.id.setting_rl_clear_cache;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.setting_rl_clear_cache);
                        if (relativeLayout2 != null) {
                            i4 = R.id.setting_rl_modify_passwd;
                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.setting_rl_modify_passwd);
                            if (relativeLayout3 != null) {
                                i4 = R.id.setting_tv_cache_size;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.setting_tv_cache_size);
                                if (textView != null) {
                                    i4 = R.id.setting_tv_logout;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.setting_tv_logout);
                                    if (textView2 != null) {
                                        i4 = R.id.setting_tv_version;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.setting_tv_version);
                                        if (textView3 != null) {
                                            i4 = R.id.swh_subscribe_notify;
                                            SwitchCompat switchCompat = (SwitchCompat) ViewBindings.findChildViewById(view, R.id.swh_subscribe_notify);
                                            if (switchCompat != null) {
                                                i4 = R.id.toolbar;
                                                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                                if (toolbar != null) {
                                                    i4 = R.id.tv_customer_support;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_customer_support);
                                                    if (textView4 != null) {
                                                        i4 = R.id.tv_toolbar_title;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                                                        if (textView5 != null) {
                                                            return new u1((ConstraintLayout) view, imageButton, recyclerView, progressBar, relativeLayout, relativeLayout2, relativeLayout3, textView, textView2, textView3, switchCompat, toolbar, textView4, textView5);
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
    public static u1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_setting, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63178a;
    }
}
