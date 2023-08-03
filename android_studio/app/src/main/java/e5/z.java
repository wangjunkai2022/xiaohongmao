package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogFanClubConfirmationBinding.java */
/* loaded from: classes3.dex */
public final class z implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63382a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f63383b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f63384c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f63385d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f63386e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f63387f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63388g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f63389h;

    private z(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull Button button2, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f63382a = constraintLayout;
        this.f63383b = button;
        this.f63384c = button2;
        this.f63385d = view;
        this.f63386e = imageView;
        this.f63387f = imageView2;
        this.f63388g = textView;
        this.f63389h = textView2;
    }

    @NonNull
    public static z a(@NonNull View view) {
        int i4 = R.id.btn_fan_club_cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_fan_club_cancel);
        if (button != null) {
            i4 = R.id.btn_fan_club_confirm;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_fan_club_confirm);
            if (button2 != null) {
                i4 = R.id.divider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                if (findChildViewById != null) {
                    i4 = R.id.iv_fan_club_close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_fan_club_close);
                    if (imageView != null) {
                        i4 = R.id.iv_fan_club_logo;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_fan_club_logo);
                        if (imageView2 != null) {
                            i4 = R.id.tv_fan_club_message;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fan_club_message);
                            if (textView != null) {
                                i4 = R.id.tv_fan_club_title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fan_club_title);
                                if (textView2 != null) {
                                    return new z((ConstraintLayout) view, button, button2, findChildViewById, imageView, imageView2, textView, textView2);
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
    public static z c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fan_club_confirmation, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63382a;
    }
}
