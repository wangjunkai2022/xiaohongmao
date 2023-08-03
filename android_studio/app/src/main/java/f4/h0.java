package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import java.util.Objects;

/* compiled from: ItemChatDetailsFileBinding.java */
/* loaded from: classes3.dex */
public final class h0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f65534a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f65535b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ProgressBar f65536c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65537d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65538e;

    private h0(@NonNull View view, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65534a = view;
        this.f65535b = imageView;
        this.f65536c = progressBar;
        this.f65537d = textView;
        this.f65538e = textView2;
    }

    @NonNull
    public static h0 a(@NonNull View view) {
        int i4 = b.j.Q8;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
        if (imageView != null) {
            i4 = b.j.Wb;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
            if (progressBar != null) {
                i4 = b.j.jg;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.kg;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        return new h0(view, imageView, progressBar, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static h0 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(b.m.E1, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f65534a;
    }
}
