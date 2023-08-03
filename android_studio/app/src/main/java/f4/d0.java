package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import java.util.Objects;

/* compiled from: ItemChatDetailsElementsCommonBinding.java */
/* loaded from: classes3.dex */
public final class d0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f65464a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CheckBox f65465b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f65466c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f65467d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f65468e;

    private d0(@NonNull View view, @NonNull CheckBox checkBox, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65464a = view;
        this.f65465b = checkBox;
        this.f65466c = frameLayout;
        this.f65467d = textView;
        this.f65468e = textView2;
    }

    @NonNull
    public static d0 a(@NonNull View view) {
        int i4 = b.j.K2;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, i4);
        if (checkBox != null) {
            i4 = b.j.L2;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
            if (frameLayout != null) {
                i4 = b.j.yg;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.Tg;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        return new d0(view, checkBox, frameLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static d0 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(b.m.A1, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f65464a;
    }
}
