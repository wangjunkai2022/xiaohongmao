package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogGuestForceLinkBinding.java */
/* loaded from: classes3.dex */
public final class a0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f62225a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f62226b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f62227c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62228d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62229e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62230f;

    private a0(@NonNull CardView cardView, @NonNull Button button, @NonNull Button button2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62225a = cardView;
        this.f62226b = button;
        this.f62227c = button2;
        this.f62228d = imageView;
        this.f62229e = textView;
        this.f62230f = textView2;
    }

    @NonNull
    public static a0 a(@NonNull View view) {
        int i4 = R.id.btn_link_phone;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_link_phone);
        if (button != null) {
            i4 = R.id.btn_logout;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_logout);
            if (button2 != null) {
                i4 = R.id.iv_bg;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bg);
                if (imageView != null) {
                    i4 = R.id.tv_desc;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc);
                    if (textView != null) {
                        i4 = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            return new a0((CardView) view, button, button2, imageView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static a0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_guest_force_link, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f62225a;
    }
}
