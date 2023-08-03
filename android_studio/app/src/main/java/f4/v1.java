package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.im.freechat.utils.MessageEditText;

/* compiled from: LayoutChatDetailsBottomBinding.java */
/* loaded from: classes3.dex */
public final class v1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65805a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Barrier f65806b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageButton f65807c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageButton f65808d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageButton f65809e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageButton f65810f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageButton f65811g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageButton f65812h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageButton f65813i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f65814j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f65815k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final MessageEditText f65816l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Group f65817m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f65818n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f65819o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f65820p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f65821q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f65822r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f65823s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f65824t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f65825u;

    private v1(@NonNull ConstraintLayout constraintLayout, @NonNull Barrier barrier, @NonNull ImageButton imageButton, @NonNull ImageButton imageButton2, @NonNull ImageButton imageButton3, @NonNull ImageButton imageButton4, @NonNull ImageButton imageButton5, @NonNull ImageButton imageButton6, @NonNull ImageButton imageButton7, @NonNull ImageView imageView, @NonNull View view, @NonNull MessageEditText messageEditText, @NonNull Group group, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f65805a = constraintLayout;
        this.f65806b = barrier;
        this.f65807c = imageButton;
        this.f65808d = imageButton2;
        this.f65809e = imageButton3;
        this.f65810f = imageButton4;
        this.f65811g = imageButton5;
        this.f65812h = imageButton6;
        this.f65813i = imageButton7;
        this.f65814j = imageView;
        this.f65815k = view;
        this.f65816l = messageEditText;
        this.f65817m = group;
        this.f65818n = imageView2;
        this.f65819o = imageView3;
        this.f65820p = imageView4;
        this.f65821q = imageView5;
        this.f65822r = textView;
        this.f65823s = textView2;
        this.f65824t = textView3;
        this.f65825u = textView4;
    }

    @NonNull
    public static v1 a(@NonNull View view) {
        View findChildViewById;
        int i4 = b.j.G1;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i4);
        if (barrier != null) {
            i4 = b.j.X1;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i4);
            if (imageButton != null) {
                i4 = b.j.f1752c2;
                ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, i4);
                if (imageButton2 != null) {
                    i4 = b.j.f1763d2;
                    ImageButton imageButton3 = (ImageButton) ViewBindings.findChildViewById(view, i4);
                    if (imageButton3 != null) {
                        i4 = b.j.f1773e2;
                        ImageButton imageButton4 = (ImageButton) ViewBindings.findChildViewById(view, i4);
                        if (imageButton4 != null) {
                            i4 = b.j.f1804h2;
                            ImageButton imageButton5 = (ImageButton) ViewBindings.findChildViewById(view, i4);
                            if (imageButton5 != null) {
                                i4 = b.j.f1856m2;
                                ImageButton imageButton6 = (ImageButton) ViewBindings.findChildViewById(view, i4);
                                if (imageButton6 != null) {
                                    i4 = b.j.f1877o2;
                                    ImageButton imageButton7 = (ImageButton) ViewBindings.findChildViewById(view, i4);
                                    if (imageButton7 != null) {
                                        i4 = b.j.F2;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
                                        if (imageView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.B4))) != null) {
                                            i4 = b.j.f1900q5;
                                            MessageEditText messageEditText = (MessageEditText) ViewBindings.findChildViewById(view, i4);
                                            if (messageEditText != null) {
                                                i4 = b.j.U7;
                                                Group group = (Group) ViewBindings.findChildViewById(view, i4);
                                                if (group != null) {
                                                    i4 = b.j.H8;
                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                                    if (imageView2 != null) {
                                                        i4 = b.j.I8;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                                        if (imageView3 != null) {
                                                            i4 = b.j.O8;
                                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                                            if (imageView4 != null) {
                                                                i4 = b.j.P8;
                                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                                                if (imageView5 != null) {
                                                                    i4 = b.j.cg;
                                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                                                                    if (textView != null) {
                                                                        i4 = b.j.ig;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                                        if (textView2 != null) {
                                                                            i4 = b.j.lg;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                                            if (textView3 != null) {
                                                                                i4 = b.j.Kg;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                                                if (textView4 != null) {
                                                                                    return new v1((ConstraintLayout) view, barrier, imageButton, imageButton2, imageButton3, imageButton4, imageButton5, imageButton6, imageButton7, imageView, findChildViewById, messageEditText, group, imageView2, imageView3, imageView4, imageView5, textView, textView2, textView3, textView4);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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
    public static v1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2136s2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65805a;
    }
}
