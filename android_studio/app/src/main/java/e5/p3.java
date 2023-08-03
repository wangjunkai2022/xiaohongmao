package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: LayoutHongbaoPopuBinding.java */
/* loaded from: classes3.dex */
public final class p3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62906a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62907b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62908c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f62909d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62910e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f62911f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62912g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f62913h;

    private p3(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull ImageView imageView3) {
        this.f62906a = relativeLayout;
        this.f62907b = imageView;
        this.f62908c = imageView2;
        this.f62909d = relativeLayout2;
        this.f62910e = textView;
        this.f62911f = simpleDraweeView;
        this.f62912g = textView2;
        this.f62913h = imageView3;
    }

    @NonNull
    public static p3 a(@NonNull View view) {
        int i4 = R.id.bg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg);
        if (imageView != null) {
            i4 = R.id.close;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView2 != null) {
                i4 = R.id.hongbao;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.hongbao);
                if (relativeLayout != null) {
                    i4 = R.id.hongbao_amount;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.hongbao_amount);
                    if (textView != null) {
                        i4 = R.id.hongbao_head;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.hongbao_head);
                        if (simpleDraweeView != null) {
                            i4 = R.id.hongbao_name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.hongbao_name);
                            if (textView2 != null) {
                                i4 = R.id.namecardCopy;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.namecardCopy);
                                if (imageView3 != null) {
                                    return new p3((RelativeLayout) view, imageView, imageView2, relativeLayout, textView, simpleDraweeView, textView2, imageView3);
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
    public static p3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_hongbao_popu, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62906a;
    }
}
