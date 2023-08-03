package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ItemMeFragmentBinding.java */
/* loaded from: classes3.dex */
public final class u2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63192a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63193b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f63194c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63195d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63196e;

    private u2(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f63192a = constraintLayout;
        this.f63193b = imageView;
        this.f63194c = imageView2;
        this.f63195d = textView;
        this.f63196e = textView2;
    }

    @NonNull
    public static u2 a(@NonNull View view) {
        int i4 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrow);
        if (imageView != null) {
            i4 = R.id.item_me_img_left;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_me_img_left);
            if (imageView2 != null) {
                i4 = R.id.item_me_tip;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.item_me_tip);
                if (textView != null) {
                    i4 = R.id.item_me_txt;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.item_me_txt);
                    if (textView2 != null) {
                        return new u2((ConstraintLayout) view, imageView, imageView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static u2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_me_fragment, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63192a;
    }
}
