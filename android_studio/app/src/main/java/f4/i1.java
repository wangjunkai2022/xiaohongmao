package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.im.freechat.utils.AudioView;

/* compiled from: ItemHistoryAudioBinding.java */
/* loaded from: classes3.dex */
public final class i1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65576a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AudioView f65577b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f65578c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageButton f65579d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f65580e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65581f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65582g;

    private i1(@NonNull ConstraintLayout constraintLayout, @NonNull AudioView audioView, @NonNull View view, @NonNull ImageButton imageButton, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f65576a = constraintLayout;
        this.f65577b = audioView;
        this.f65578c = view;
        this.f65579d = imageButton;
        this.f65580e = constraintLayout2;
        this.f65581f = textView;
        this.f65582g = textView2;
    }

    @NonNull
    public static i1 a(@NonNull View view) {
        View findChildViewById;
        int i4 = b.j.f1906r1;
        AudioView audioView = (AudioView) ViewBindings.findChildViewById(view, i4);
        if (audioView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.J1))) != null) {
            i4 = b.j.Y1;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i4);
            if (imageButton != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i4 = b.j.Zf;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                if (textView != null) {
                    i4 = b.j.Og;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView2 != null) {
                        return new i1(constraintLayout, audioView, findChildViewById, imageButton, constraintLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static i1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2062f2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65576a;
    }
}
