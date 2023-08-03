package h2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import com.giphy.sdk.ui.p;
import java.util.Objects;

/* compiled from: GphSearchBarBinding.java */
/* loaded from: classes2.dex */
public final class j implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f68991a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f68992b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f68993c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f68994d;

    private j(@NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull EditText editText) {
        this.f68991a = view;
        this.f68992b = imageView;
        this.f68993c = imageView2;
        this.f68994d = editText;
    }

    @NonNull
    public static j a(@NonNull View view) {
        int i4 = p.j.I0;
        ImageView imageView = (ImageView) view.findViewById(i4);
        if (imageView != null) {
            i4 = p.j.G4;
            ImageView imageView2 = (ImageView) view.findViewById(i4);
            if (imageView2 != null) {
                i4 = p.j.f17881f5;
                EditText editText = (EditText) view.findViewById(i4);
                if (editText != null) {
                    return new j(view, imageView, imageView2, editText);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static j b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(p.m.f18110m0, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f68991a;
    }
}
