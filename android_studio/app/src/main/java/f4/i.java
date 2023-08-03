package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.google.android.exoplayer2.ui.PlayerView;
import com.im.freechat.ui.widget.ChatDetailsAudioPlayLayout;
import com.im.freechat.ui.widget.ChatDetailsAudioRecordLayout;
import com.im.freechat.ui.widget.ChatDetailsDownLayout;

/* compiled from: FragmentChatDetailsBinding.java */
/* loaded from: classes3.dex */
public final class i implements ViewBinding {
    @NonNull
    public final z1 A;
    @NonNull
    public final TextView B;
    @NonNull
    public final TextView C;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65547a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ChatDetailsAudioPlayLayout f65548b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ChatDetailsAudioRecordLayout f65549c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final v1 f65550d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f65551e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f65552f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f65553g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f65554h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final CardView f65555i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ConstraintLayout f65556j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RecyclerView f65557k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ConstraintLayout f65558l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f65559m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f65560n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final FrameLayout f65561o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final FrameLayout f65562p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f65563q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final ImageView f65564r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ImageView f65565s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final k f65566t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final ChatDetailsDownLayout f65567u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final FrameLayout f65568v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final ImageView f65569w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final CardView f65570x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final PlayerView f65571y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final RelativeLayout f65572z;

    private i(@NonNull ConstraintLayout constraintLayout, @NonNull ChatDetailsAudioPlayLayout chatDetailsAudioPlayLayout, @NonNull ChatDetailsAudioRecordLayout chatDetailsAudioRecordLayout, @NonNull v1 v1Var, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull CardView cardView, @NonNull ConstraintLayout constraintLayout2, @NonNull RecyclerView recyclerView, @NonNull ConstraintLayout constraintLayout3, @NonNull ImageView imageView5, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull ImageView imageView8, @NonNull k kVar, @NonNull ChatDetailsDownLayout chatDetailsDownLayout, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView9, @NonNull CardView cardView2, @NonNull PlayerView playerView, @NonNull RelativeLayout relativeLayout, @NonNull z1 z1Var, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f65547a = constraintLayout;
        this.f65548b = chatDetailsAudioPlayLayout;
        this.f65549c = chatDetailsAudioRecordLayout;
        this.f65550d = v1Var;
        this.f65551e = imageView;
        this.f65552f = imageView2;
        this.f65553g = imageView3;
        this.f65554h = imageView4;
        this.f65555i = cardView;
        this.f65556j = constraintLayout2;
        this.f65557k = recyclerView;
        this.f65558l = constraintLayout3;
        this.f65559m = imageView5;
        this.f65560n = textView;
        this.f65561o = frameLayout;
        this.f65562p = frameLayout2;
        this.f65563q = imageView6;
        this.f65564r = imageView7;
        this.f65565s = imageView8;
        this.f65566t = kVar;
        this.f65567u = chatDetailsDownLayout;
        this.f65568v = frameLayout3;
        this.f65569w = imageView9;
        this.f65570x = cardView2;
        this.f65571y = playerView;
        this.f65572z = relativeLayout;
        this.A = z1Var;
        this.B = textView2;
        this.C = textView3;
    }

    @NonNull
    public static i a(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        int i4 = b.j.f1886p1;
        ChatDetailsAudioPlayLayout chatDetailsAudioPlayLayout = (ChatDetailsAudioPlayLayout) ViewBindings.findChildViewById(view, i4);
        if (chatDetailsAudioPlayLayout != null) {
            i4 = b.j.f1896q1;
            ChatDetailsAudioRecordLayout chatDetailsAudioRecordLayout = (ChatDetailsAudioRecordLayout) ViewBindings.findChildViewById(view, i4);
            if (chatDetailsAudioRecordLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.P1))) != null) {
                v1 a10 = v1.a(findChildViewById);
                i4 = b.j.Z1;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
                if (imageView != null) {
                    i4 = b.j.f1814i2;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i4);
                    if (imageView2 != null) {
                        i4 = b.j.f1845l2;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i4);
                        if (imageView3 != null) {
                            i4 = b.j.f1867n2;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i4);
                            if (imageView4 != null) {
                                i4 = b.j.D2;
                                CardView cardView = (CardView) ViewBindings.findChildViewById(view, i4);
                                if (cardView != null) {
                                    i4 = b.j.E2;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i4);
                                    if (constraintLayout != null) {
                                        i4 = b.j.W2;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
                                        if (recyclerView != null) {
                                            i4 = b.j.f1857m3;
                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i4);
                                            if (constraintLayout2 != null) {
                                                i4 = b.j.f1869n4;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                                if (imageView5 != null) {
                                                    i4 = b.j.f1796g5;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                                                    if (textView != null) {
                                                        i4 = b.j.N6;
                                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i4);
                                                        if (frameLayout != null) {
                                                            i4 = b.j.O6;
                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i4);
                                                            if (frameLayout2 != null) {
                                                                i4 = b.j.f1757c7;
                                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                                                if (imageView6 != null) {
                                                                    i4 = b.j.f1737a9;
                                                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                                                    if (imageView7 != null) {
                                                                        i4 = b.j.f1748b9;
                                                                        ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                                                        if (imageView8 != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i4 = b.j.f1830j9))) != null) {
                                                                            k a11 = k.a(findChildViewById2);
                                                                            i4 = b.j.o9;
                                                                            ChatDetailsDownLayout chatDetailsDownLayout = (ChatDetailsDownLayout) ViewBindings.findChildViewById(view, i4);
                                                                            if (chatDetailsDownLayout != null) {
                                                                                i4 = b.j.oa;
                                                                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, i4);
                                                                                if (frameLayout3 != null) {
                                                                                    i4 = b.j.gc;
                                                                                    ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, i4);
                                                                                    if (imageView9 != null) {
                                                                                        i4 = b.j.hc;
                                                                                        CardView cardView2 = (CardView) ViewBindings.findChildViewById(view, i4);
                                                                                        if (cardView2 != null) {
                                                                                            i4 = b.j.ic;
                                                                                            PlayerView playerView = (PlayerView) ViewBindings.findChildViewById(view, i4);
                                                                                            if (playerView != null) {
                                                                                                i4 = b.j.td;
                                                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i4);
                                                                                                if (relativeLayout != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i4 = b.j.Hf))) != null) {
                                                                                                    z1 a12 = z1.a(findChildViewById3);
                                                                                                    i4 = b.j.eg;
                                                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                                                                    if (textView2 != null) {
                                                                                                        i4 = b.j.Mg;
                                                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i4);
                                                                                                        if (textView3 != null) {
                                                                                                            return new i((ConstraintLayout) view, chatDetailsAudioPlayLayout, chatDetailsAudioRecordLayout, a10, imageView, imageView2, imageView3, imageView4, cardView, constraintLayout, recyclerView, constraintLayout2, imageView5, textView, frameLayout, frameLayout2, imageView6, imageView7, imageView8, a11, chatDetailsDownLayout, frameLayout3, imageView9, cardView2, playerView, relativeLayout, a12, textView2, textView3);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static i c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2170y0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65547a;
    }
}
