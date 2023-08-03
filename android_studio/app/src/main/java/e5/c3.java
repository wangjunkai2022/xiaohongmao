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

/* compiled from: ItemSearchResultBinding.java */
/* loaded from: classes3.dex */
public final class c3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62297a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62298b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62299c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62300d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62301e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62302f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62303g;

    private c3(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62297a = constraintLayout;
        this.f62298b = imageView;
        this.f62299c = imageView2;
        this.f62300d = imageView3;
        this.f62301e = textView;
        this.f62302f = textView2;
        this.f62303g = textView3;
    }

    @NonNull
    public static c3 a(@NonNull View view) {
        int i4 = R.id.iv_avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_avatar);
        if (imageView != null) {
            i4 = R.id.iv_level;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_level);
            if (imageView2 != null) {
                i4 = R.id.iv_sex;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_sex);
                if (imageView3 != null) {
                    i4 = R.id.tv_follow_user;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_follow_user);
                    if (textView != null) {
                        i4 = R.id.tv_id;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_id);
                        if (textView2 != null) {
                            i4 = R.id.tv_nickname;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nickname);
                            if (textView3 != null) {
                                return new c3((ConstraintLayout) view, imageView, imageView2, imageView3, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static c3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_search_result, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62297a;
    }
}
