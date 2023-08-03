package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: ItemChatListBinding.java */
/* loaded from: classes3.dex */
public final class b1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65427a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f65428b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f65429c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f65430d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f65431e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65432f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f65433g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f65434h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f65435i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f65436j;

    private b1(@NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f65427a = constraintLayout;
        this.f65428b = frameLayout;
        this.f65429c = imageView;
        this.f65430d = imageView2;
        this.f65431e = imageView3;
        this.f65432f = textView;
        this.f65433g = textView2;
        this.f65434h = textView3;
        this.f65435i = textView4;
        this.f65436j = textView5;
    }

    @NonNull
    public static b1 a(@NonNull View view) {
        int i4 = b.j.L6;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
        if (frameLayout != null) {
            i4 = b.j.U8;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
            if (imageView != null) {
                i4 = b.j.W8;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i4);
                if (imageView2 != null) {
                    i4 = b.j.f1759c9;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i4);
                    if (imageView3 != null) {
                        i4 = b.j.eh;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                        if (textView != null) {
                            i4 = b.j.sg;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                            if (textView2 != null) {
                                i4 = b.j.xg;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                if (textView3 != null) {
                                    i4 = b.j.Tg;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i4);
                                    if (textView4 != null) {
                                        i4 = b.j.Xg;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i4);
                                        if (textView5 != null) {
                                            return new b1((ConstraintLayout) view, frameLayout, imageView, imageView2, imageView3, textView, textView2, textView3, textView4, textView5);
                                        }
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
    public static b1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.Y1, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65427a;
    }
}
