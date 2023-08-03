package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: FragmentSettingsBinding.java */
/* loaded from: classes3.dex */
public final class u implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65762a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CheckedTextView f65763b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckedTextView f65764c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CheckedTextView f65765d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final y f65766e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Toolbar f65767f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65768g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f65769h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f65770i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f65771j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f65772k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f65773l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f65774m;

    private u(@NonNull LinearLayout linearLayout, @NonNull CheckedTextView checkedTextView, @NonNull CheckedTextView checkedTextView2, @NonNull CheckedTextView checkedTextView3, @NonNull y yVar, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f65762a = linearLayout;
        this.f65763b = checkedTextView;
        this.f65764c = checkedTextView2;
        this.f65765d = checkedTextView3;
        this.f65766e = yVar;
        this.f65767f = toolbar;
        this.f65768g = textView;
        this.f65769h = textView2;
        this.f65770i = textView3;
        this.f65771j = textView4;
        this.f65772k = textView5;
        this.f65773l = textView6;
        this.f65774m = textView7;
    }

    @NonNull
    public static u a(@NonNull View view) {
        View findChildViewById;
        int i4 = b.j.M2;
        CheckedTextView checkedTextView = (CheckedTextView) ViewBindings.findChildViewById(view, i4);
        if (checkedTextView != null) {
            i4 = b.j.checkBoxNotifications;
            CheckedTextView checkedTextView2 = (CheckedTextView) ViewBindings.findChildViewById(view, i4);
            if (checkedTextView2 != null) {
                i4 = b.j.checkBoxSounds;
                CheckedTextView checkedTextView3 = (CheckedTextView) ViewBindings.findChildViewById(view, i4);
                if (checkedTextView3 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.Z7))) != null) {
                    y a10 = y.a(findChildViewById);
                    i4 = b.j.Hf;
                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i4);
                    if (toolbar != null) {
                        i4 = b.j.tvAdminPanel;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView != null) {
                            i4 = b.j.tvBlockedUsers;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                            if (textView2 != null) {
                                i4 = b.j.tvClearAll;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                if (textView3 != null) {
                                    i4 = b.j.tvDataUsage;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i4);
                                    if (textView4 != null) {
                                        i4 = b.j.tvSetAvatar;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i4);
                                        if (textView5 != null) {
                                            i4 = b.j.tvSetBio;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i4);
                                            if (textView6 != null) {
                                                i4 = b.j.tvSetNickname;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                if (textView7 != null) {
                                                    return new u((LinearLayout) view, checkedTextView, checkedTextView2, checkedTextView3, a10, toolbar, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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
    public static u c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.V0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65762a;
    }
}
