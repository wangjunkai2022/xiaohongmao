package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import java.util.Objects;

/* compiled from: ItemChatDetailsElementsMeBinding.java */
/* loaded from: classes3.dex */
public final class e0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f65483a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f65484b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65485c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f65486d;

    private e0(@NonNull View view, @NonNull ImageButton imageButton, @NonNull ImageView imageView, @NonNull ProgressBar progressBar) {
        this.f65483a = view;
        this.f65484b = imageButton;
        this.f65485c = imageView;
        this.f65486d = progressBar;
    }

    @NonNull
    public static e0 a(@NonNull View view) {
        int i4 = b.j.f1794g2;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i4);
        if (imageButton != null) {
            i4 = b.j.Y8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.rc;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                if (progressBar != null) {
                    return new e0(view, imageButton, imageView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static e0 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(b.m.B1, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f65483a;
    }
}
