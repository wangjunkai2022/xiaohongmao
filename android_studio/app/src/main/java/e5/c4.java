package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: PkConfirmationDialogBinding.java */
/* loaded from: classes3.dex */
public final class c4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f62304a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f62305b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f62306c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62307d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62308e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62309f;

    private c4(@NonNull CardView cardView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62304a = cardView;
        this.f62305b = simpleDraweeView;
        this.f62306c = simpleDraweeView2;
        this.f62307d = textView;
        this.f62308e = textView2;
        this.f62309f = textView3;
    }

    @NonNull
    public static c4 a(@NonNull View view) {
        int i4 = R.id.avatar_competitor_1;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar_competitor_1);
        if (simpleDraweeView != null) {
            i4 = R.id.avatar_competitor_2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar_competitor_2);
            if (simpleDraweeView2 != null) {
                i4 = R.id.btn_ok;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
                if (textView != null) {
                    i4 = R.id.btn_reject;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_reject);
                    if (textView2 != null) {
                        i4 = R.id.tv_content;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
                        if (textView3 != null) {
                            return new c4((CardView) view, simpleDraweeView, simpleDraweeView2, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static c4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.pk_confirmation_dialog, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f62304a;
    }
}
