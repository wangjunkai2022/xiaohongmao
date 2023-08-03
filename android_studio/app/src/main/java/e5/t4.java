package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: StartThemListItemBinding.java */
/* loaded from: classes3.dex */
public final class t4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f63158a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f63159b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63160c;

    private t4(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f63158a = linearLayout;
        this.f63159b = textView;
        this.f63160c = textView2;
    }

    @NonNull
    public static t4 a(@NonNull View view) {
        int i4 = R.id.item_them_number;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.item_them_number);
        if (textView != null) {
            i4 = R.id.item_them_tv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.item_them_tv);
            if (textView2 != null) {
                return new t4((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static t4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.start_them_list_item, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f63158a;
    }
}
