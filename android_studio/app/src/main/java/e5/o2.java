package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: ItemGiftBigBinding.java */
/* loaded from: classes3.dex */
public final class o2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62854a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62855b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62856c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f62857d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62858e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f62859f;

    private o2(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull ImageView imageView2) {
        this.f62854a = linearLayout;
        this.f62855b = imageView;
        this.f62856c = textView;
        this.f62857d = simpleDraweeView;
        this.f62858e = textView2;
        this.f62859f = imageView2;
    }

    @NonNull
    public static o2 a(@NonNull View view) {
        int i4 = R.id.item_gift_continue;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.item_gift_continue);
        if (imageView != null) {
            i4 = R.id.item_gift_experience;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.item_gift_experience);
            if (textView != null) {
                i4 = R.id.item_gift_icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.item_gift_icon);
                if (simpleDraweeView != null) {
                    i4 = R.id.item_gift_money;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.item_gift_money);
                    if (textView2 != null) {
                        i4 = R.id.item_gift_toy;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_gift_toy);
                        if (imageView2 != null) {
                            return new o2((LinearLayout) view, imageView, textView, simpleDraweeView, textView2, imageView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static o2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_gift_big, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62854a;
    }
}
