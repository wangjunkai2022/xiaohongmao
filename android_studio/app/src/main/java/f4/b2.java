package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: LayoutToolbarSelectChatBinding.java */
/* loaded from: classes3.dex */
public final class b2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Toolbar f65437a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f65438b;

    private b2(@NonNull Toolbar toolbar, @NonNull TextView textView) {
        this.f65437a = toolbar;
        this.f65438b = textView;
    }

    @NonNull
    public static b2 a(@NonNull View view) {
        int i4 = b.j.Vg;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
        if (textView != null) {
            return new b2((Toolbar) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static b2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2172y2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public Toolbar getRoot() {
        return this.f65437a;
    }
}
