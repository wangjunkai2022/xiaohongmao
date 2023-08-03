package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;

/* compiled from: GphSuggestionItemBinding.java */
/* loaded from: classes2.dex */
public final class m implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f69002a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f69003b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f69004c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f69005d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f69006e;

    private m(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.f69002a = linearLayout;
        this.f69003b = linearLayout2;
        this.f69004c = imageView;
        this.f69005d = imageView2;
        this.f69006e = textView;
    }

    @NonNull
    public static m a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i4 = p.j.R5;
        ImageView imageView = (ImageView) view.findViewById(i4);
        if (imageView != null) {
            i4 = p.j.S5;
            ImageView imageView2 = (ImageView) view.findViewById(i4);
            if (imageView2 != null) {
                i4 = p.j.T5;
                TextView textView = (TextView) view.findViewById(i4);
                if (textView != null) {
                    return new m((LinearLayout) view, linearLayout, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static m c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(p.m.f18119p0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f69002a;
    }
}
