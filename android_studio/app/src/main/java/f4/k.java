package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: FragmentChatDetailsPinnedMessageBinding.java */
/* loaded from: classes3.dex */
public final class k implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65597a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f65598b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65599c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f65600d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f65601e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65602f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65603g;

    private k(@NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull ImageView imageView, @NonNull View view, @NonNull View view2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65597a = constraintLayout;
        this.f65598b = imageButton;
        this.f65599c = imageView;
        this.f65600d = view;
        this.f65601e = view2;
        this.f65602f = textView;
        this.f65603g = textView2;
    }

    @NonNull
    public static k a(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        int i4 = b.j.f1834k2;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i4);
        if (imageButton != null) {
            i4 = b.j.V8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.cc))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i4 = b.j.ec))) != null) {
                i4 = b.j.Eg;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.Fg;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        return new k((ConstraintLayout) view, imageButton, imageView, findChildViewById, findChildViewById2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static k c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.A0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65597a;
    }
}
