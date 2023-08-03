package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemChatDetailsSelectMessageBinding.java */
/* loaded from: classes3.dex */
public final class q0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f65707a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CheckBox f65708b;

    private q0(@NonNull FrameLayout frameLayout, @NonNull CheckBox checkBox) {
        this.f65707a = frameLayout;
        this.f65708b = checkBox;
    }

    @NonNull
    public static q0 a(@NonNull View view) {
        int i4 = b.j.K2;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, i4);
        if (checkBox != null) {
            return new q0((FrameLayout) view, checkBox);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static q0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.N1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f65707a;
    }
}
