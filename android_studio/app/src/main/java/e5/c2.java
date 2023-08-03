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

/* compiled from: IndexTableItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class c2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62292a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f62293b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62294c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62295d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f62296e;

    private c2(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout) {
        this.f62292a = relativeLayout;
        this.f62293b = view;
        this.f62294c = imageView;
        this.f62295d = textView;
        this.f62296e = linearLayout;
    }

    @NonNull
    public static c2 a(@NonNull View view) {
        int i4 = R.id.index_indicator;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.index_indicator);
        if (findChildViewById != null) {
            i4 = R.id.index_table_item_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.index_table_item_img);
            if (imageView != null) {
                i4 = R.id.index_table_item_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.index_table_item_tv);
                if (textView != null) {
                    i4 = R.id.tab_title;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tab_title);
                    if (linearLayout != null) {
                        return new c2((RelativeLayout) view, findChildViewById, imageView, textView, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static c2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.index_table_item_layout, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62292a;
    }
}
