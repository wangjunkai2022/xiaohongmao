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

/* compiled from: DialogUserinfoMysteryBinding.java */
/* loaded from: classes3.dex */
public final class r0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62975a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62976b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62977c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62978d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62979e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62980f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62981g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62982h;

    private r0(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62975a = constraintLayout;
        this.f62976b = imageView;
        this.f62977c = imageView2;
        this.f62978d = imageView3;
        this.f62979e = imageView4;
        this.f62980f = textView;
        this.f62981g = textView2;
        this.f62982h = textView3;
    }

    @NonNull
    public static r0 a(@NonNull View view) {
        int i4 = R.id.decor_end;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.decor_end);
        if (imageView != null) {
            i4 = R.id.decor_start;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.decor_start);
            if (imageView2 != null) {
                i4 = R.id.decor_top;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.decor_top);
                if (imageView3 != null) {
                    i4 = R.id.mystery_avatar;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.mystery_avatar);
                    if (imageView4 != null) {
                        i4 = R.id.tv_complaint;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_complaint);
                        if (textView != null) {
                            i4 = R.id.tv_send_name_card;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send_name_card);
                            if (textView2 != null) {
                                i4 = R.id.tv_user_id;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_id);
                                if (textView3 != null) {
                                    return new r0((ConstraintLayout) view, imageView, imageView2, imageView3, imageView4, textView, textView2, textView3);
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
    public static r0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_userinfo_mystery, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62975a;
    }
}
