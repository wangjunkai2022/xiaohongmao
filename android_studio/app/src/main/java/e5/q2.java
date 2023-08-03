package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ItemHotAdTextBinding.java */
/* loaded from: classes3.dex */
public final class q2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62957a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62958b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62959c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f62960d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62961e;

    private q2(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2) {
        this.f62957a = relativeLayout;
        this.f62958b = imageView;
        this.f62959c = textView;
        this.f62960d = linearLayout;
        this.f62961e = textView2;
    }

    @NonNull
    public static q2 a(@NonNull View view) {
        int i4 = R.id.ad_img_view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ad_img_view);
        if (imageView != null) {
            i4 = R.id.ad_one_mine;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ad_one_mine);
            if (textView != null) {
                i4 = R.id.ad_text_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ad_text_layout);
                if (linearLayout != null) {
                    i4 = R.id.ad_two_mine;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ad_two_mine);
                    if (textView2 != null) {
                        return new q2((RelativeLayout) view, imageView, textView, linearLayout, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static q2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_hot_ad_text, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62957a;
    }
}
