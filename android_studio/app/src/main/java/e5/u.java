package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.WheelView;

/* compiled from: DialogEditAgeBinding.java */
/* loaded from: classes3.dex */
public final class u implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63161a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f63162b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final WheelView f63163c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f63164d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f63165e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final WheelView f63166f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63167g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f63168h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f63169i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final WheelView f63170j;

    private u(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull WheelView wheelView, @NonNull View view, @NonNull View view2, @NonNull WheelView wheelView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout, @NonNull WheelView wheelView3) {
        this.f63161a = constraintLayout;
        this.f63162b = textView;
        this.f63163c = wheelView;
        this.f63164d = view;
        this.f63165e = view2;
        this.f63166f = wheelView2;
        this.f63167g = textView2;
        this.f63168h = textView3;
        this.f63169i = linearLayout;
        this.f63170j = wheelView3;
    }

    @NonNull
    public static u a(@NonNull View view) {
        int i4 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i4 = R.id.day;
            WheelView wheelView = (WheelView) ViewBindings.findChildViewById(view, R.id.day);
            if (wheelView != null) {
                i4 = R.id.divider1;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider1);
                if (findChildViewById != null) {
                    i4 = R.id.divider2;
                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.divider2);
                    if (findChildViewById2 != null) {
                        i4 = R.id.month;
                        WheelView wheelView2 = (WheelView) ViewBindings.findChildViewById(view, R.id.month);
                        if (wheelView2 != null) {
                            i4 = R.id.ok;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                            if (textView2 != null) {
                                i4 = R.id.title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                if (textView3 != null) {
                                    i4 = R.id.wheels;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.wheels);
                                    if (linearLayout != null) {
                                        i4 = R.id.year;
                                        WheelView wheelView3 = (WheelView) ViewBindings.findChildViewById(view, R.id.year);
                                        if (wheelView3 != null) {
                                            return new u((ConstraintLayout) view, textView, wheelView, findChildViewById, findChildViewById2, wheelView2, textView2, textView3, linearLayout, wheelView3);
                                        }
                                    }
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
    public static u c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_edit_age, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63161a;
    }
}
