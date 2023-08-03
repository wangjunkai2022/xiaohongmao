package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;

/* compiled from: GphActionsViewBinding.java */
/* loaded from: classes2.dex */
public final class a implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f68953a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f68954b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f68955c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f68956d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f68957e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f68958f;

    private a(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f68953a = linearLayout;
        this.f68954b = linearLayout2;
        this.f68955c = textView;
        this.f68956d = textView2;
        this.f68957e = textView3;
        this.f68958f = textView4;
    }

    @NonNull
    public static a a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i4 = p.j.Q2;
        TextView textView = (TextView) view.findViewById(i4);
        if (textView != null) {
            i4 = p.j.R2;
            TextView textView2 = (TextView) view.findViewById(i4);
            if (textView2 != null) {
                i4 = p.j.S2;
                TextView textView3 = (TextView) view.findViewById(i4);
                if (textView3 != null) {
                    i4 = p.j.X2;
                    TextView textView4 = (TextView) view.findViewById(i4);
                    if (textView4 != null) {
                        return new a((LinearLayout) view, linearLayout, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static a c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18083d0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f68953a;
    }
}
