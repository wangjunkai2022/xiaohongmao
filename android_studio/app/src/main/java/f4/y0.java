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

/* compiled from: ItemChatDetailsVideoBinding.java */
/* loaded from: classes3.dex */
public final class y0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f65855a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f65856b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65857c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f65858d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f65859e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f65860f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65861g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f65862h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f65863i;

    private y0(@NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ProgressBar progressBar, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f65855a = view;
        this.f65856b = imageView;
        this.f65857c = imageView2;
        this.f65858d = progressBar;
        this.f65859e = imageView3;
        this.f65860f = imageView4;
        this.f65861g = textView;
        this.f65862h = textView2;
        this.f65863i = textView3;
    }

    @NonNull
    public static y0 a(@NonNull View view) {
        int i4 = b.j.C4;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
        if (imageView != null) {
            i4 = b.j.X8;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView2 != null) {
                i4 = b.j.Wb;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                if (progressBar != null) {
                    i4 = b.j.fc;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i4);
                    if (imageView3 != null) {
                        i4 = b.j.Ge;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i4);
                        if (imageView4 != null) {
                            i4 = b.j.fg;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                            if (textView != null) {
                                i4 = b.j.gg;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                                if (textView2 != null) {
                                    i4 = b.j.Sg;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                    if (textView3 != null) {
                                        return new y0(view, imageView, imageView2, progressBar, imageView3, imageView4, textView, textView2, textView3);
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
    public static y0 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(b.m.V1, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f65855a;
    }
}
