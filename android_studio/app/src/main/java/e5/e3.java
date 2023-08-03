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

/* compiled from: ItemViewNobleBinding.java */
/* loaded from: classes3.dex */
public final class e3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62353a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62354b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62355c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62356d;

    private e3(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.f62353a = constraintLayout;
        this.f62354b = imageView;
        this.f62355c = imageView2;
        this.f62356d = textView;
    }

    @NonNull
    public static e3 a(@NonNull View view) {
        int i4 = R.id.iv_noble_check;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_noble_check);
        if (imageView != null) {
            i4 = R.id.iv_noble_pic;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_noble_pic);
            if (imageView2 != null) {
                i4 = R.id.tv_noble_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_noble_title);
                if (textView != null) {
                    return new e3((ConstraintLayout) view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static e3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_view_noble, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62353a;
    }
}
