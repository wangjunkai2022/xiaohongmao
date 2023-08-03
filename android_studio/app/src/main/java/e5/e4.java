package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: PkPanelRoot2Binding.java */
/* loaded from: classes3.dex */
public final class e4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62357a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f62358b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f62359c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f62360d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f62361e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f62362f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f62363g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ConstraintLayout f62364h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ConstraintLayout f62365i;

    private e4(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull SimpleDraweeView simpleDraweeView4, @NonNull SimpleDraweeView simpleDraweeView5, @NonNull SimpleDraweeView simpleDraweeView6, @NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2) {
        this.f62357a = linearLayout;
        this.f62358b = simpleDraweeView;
        this.f62359c = simpleDraweeView2;
        this.f62360d = simpleDraweeView3;
        this.f62361e = simpleDraweeView4;
        this.f62362f = simpleDraweeView5;
        this.f62363g = simpleDraweeView6;
        this.f62364h = constraintLayout;
        this.f62365i = constraintLayout2;
    }

    @NonNull
    public static e4 a(@NonNull View view) {
        int i4 = R.id.donator_avatar_left_1;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.donator_avatar_left_1);
        if (simpleDraweeView != null) {
            i4 = R.id.donator_avatar_left_2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.donator_avatar_left_2);
            if (simpleDraweeView2 != null) {
                i4 = R.id.donator_avatar_left_3;
                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.donator_avatar_left_3);
                if (simpleDraweeView3 != null) {
                    i4 = R.id.donator_avatar_right_1;
                    SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.donator_avatar_right_1);
                    if (simpleDraweeView4 != null) {
                        i4 = R.id.donator_avatar_right_2;
                        SimpleDraweeView simpleDraweeView5 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.donator_avatar_right_2);
                        if (simpleDraweeView5 != null) {
                            i4 = R.id.donator_avatar_right_3;
                            SimpleDraweeView simpleDraweeView6 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.donator_avatar_right_3);
                            if (simpleDraweeView6 != null) {
                                i4 = R.id.pk_avatars_list_left;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.pk_avatars_list_left);
                                if (constraintLayout != null) {
                                    i4 = R.id.pk_avatars_list_right;
                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.pk_avatars_list_right);
                                    if (constraintLayout2 != null) {
                                        return new e4((LinearLayout) view, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, simpleDraweeView5, simpleDraweeView6, constraintLayout, constraintLayout2);
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
    public static e4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.pk_panel_root_2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62357a;
    }
}
