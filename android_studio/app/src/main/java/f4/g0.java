package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import java.util.Objects;

/* compiled from: ItemChatDetailsExtraBinding.java */
/* loaded from: classes3.dex */
public final class g0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f65510a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Group f65511b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Group f65512c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f65513d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f65514e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65515f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65516g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f65517h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f65518i;

    private g0(@NonNull View view, @NonNull Group group, @NonNull Group group2, @NonNull ImageView imageView, @NonNull View view2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f65510a = view;
        this.f65511b = group;
        this.f65512c = group2;
        this.f65513d = imageView;
        this.f65514e = view2;
        this.f65515f = textView;
        this.f65516g = textView2;
        this.f65517h = textView3;
        this.f65518i = textView4;
    }

    @NonNull
    public static g0 a(@NonNull View view) {
        View findChildViewById;
        int i4 = b.j.W6;
        Group group = (Group) ViewBindings.findChildViewById(view, i4);
        if (group != null) {
            i4 = b.j.sc;
            Group group2 = (Group) ViewBindings.findChildViewById(view, i4);
            if (group2 != null) {
                i4 = b.j.tc;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
                if (imageView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.uc))) != null) {
                    i4 = b.j.mg;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView != null) {
                        i4 = b.j.ng;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView2 != null) {
                            i4 = b.j.Gg;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                            if (textView3 != null) {
                                i4 = b.j.Hg;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i4);
                                if (textView4 != null) {
                                    return new g0(view, group, group2, imageView, findChildViewById, textView, textView2, textView3, textView4);
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
    public static g0 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(b.m.D1, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f65510a;
    }
}
