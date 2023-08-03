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

/* compiled from: DialogCompetittionDurationBinding.java */
/* loaded from: classes3.dex */
public final class t implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f63122a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f63123b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63124c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63125d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63126e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f63127f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63128g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f63129h;

    private t(@NonNull CardView cardView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f63122a = cardView;
        this.f63123b = textView;
        this.f63124c = textView2;
        this.f63125d = textView3;
        this.f63126e = textView4;
        this.f63127f = textView5;
        this.f63128g = textView6;
        this.f63129h = textView7;
    }

    @NonNull
    public static t a(@NonNull View view) {
        int i4 = R.id.btn_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_cancel);
        if (textView != null) {
            i4 = R.id.btn_ok;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
            if (textView2 != null) {
                i4 = R.id.header;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.header);
                if (textView3 != null) {
                    i4 = R.id.tv_duration_1;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_duration_1);
                    if (textView4 != null) {
                        i4 = R.id.tv_duration_10;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_duration_10);
                        if (textView5 != null) {
                            i4 = R.id.tv_duration_15;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_duration_15);
                            if (textView6 != null) {
                                i4 = R.id.tv_duration_20;
                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_duration_20);
                                if (textView7 != null) {
                                    return new t((CardView) view, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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
    public static t c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_competittion_duration, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f63122a;
    }
}
