package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogFanClubBinding.java */
/* loaded from: classes3.dex */
public final class y implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63335a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Barrier f63336b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f63337c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f63338d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f63339e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f63340f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f63341g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ProgressBar f63342h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f63343i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f63344j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f63345k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f63346l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f63347m;

    private y(@NonNull ConstraintLayout constraintLayout, @NonNull Barrier barrier, @NonNull Button button, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f63335a = constraintLayout;
        this.f63336b = barrier;
        this.f63337c = button;
        this.f63338d = constraintLayout2;
        this.f63339e = imageView;
        this.f63340f = imageView2;
        this.f63341g = imageView3;
        this.f63342h = progressBar;
        this.f63343i = textView;
        this.f63344j = textView2;
        this.f63345k = textView3;
        this.f63346l = textView4;
        this.f63347m = textView5;
    }

    @NonNull
    public static y a(@NonNull View view) {
        int i4 = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i4 = R.id.btn_join_fan_club;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_join_fan_club);
            if (button != null) {
                i4 = R.id.cl_fan_club_level;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.cl_fan_club_level);
                if (constraintLayout != null) {
                    i4 = R.id.iv_fan_club_close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_fan_club_close);
                    if (imageView != null) {
                        i4 = R.id.iv_fan_club_hint;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_fan_club_hint);
                        if (imageView2 != null) {
                            i4 = R.id.iv_fan_club_title;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_fan_club_title);
                            if (imageView3 != null) {
                                i4 = R.id.pb_level;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_level);
                                if (progressBar != null) {
                                    i4 = R.id.tv_current_level;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_current_level);
                                    if (textView != null) {
                                        i4 = R.id.tv_fan_club_details;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fan_club_details);
                                        if (textView2 != null) {
                                            i4 = R.id.tv_fan_club_hint;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fan_club_hint);
                                            if (textView3 != null) {
                                                i4 = R.id.tv_fan_club_join_error;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fan_club_join_error);
                                                if (textView4 != null) {
                                                    i4 = R.id.tv_fan_club_update_hint;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fan_club_update_hint);
                                                    if (textView5 != null) {
                                                        return new y((ConstraintLayout) view, barrier, button, constraintLayout, imageView, imageView2, imageView3, progressBar, textView, textView2, textView3, textView4, textView5);
                                                    }
                                                }
                                            }
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
    public static y c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fan_club, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63335a;
    }
}
