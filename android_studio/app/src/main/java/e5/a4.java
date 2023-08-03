package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: PinnedMsgItemviewExpandedBinding.java */
/* loaded from: classes3.dex */
public final class a4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62246a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f62247b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f62248c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f62249d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f62250e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ConstraintLayout f62251f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62252g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62253h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62254i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62255j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f62256k;

    private a4(@NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f62246a = constraintLayout;
        this.f62247b = frameLayout;
        this.f62248c = simpleDraweeView;
        this.f62249d = relativeLayout;
        this.f62250e = constraintLayout2;
        this.f62251f = constraintLayout3;
        this.f62252g = textView;
        this.f62253h = textView2;
        this.f62254i = textView3;
        this.f62255j = textView4;
        this.f62256k = textView5;
    }

    @NonNull
    public static a4 a(@NonNull View view) {
        int i4 = R.id.avatarLay;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.avatarLay);
        if (frameLayout != null) {
            i4 = R.id.ivAvatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivAvatar);
            if (simpleDraweeView != null) {
                i4 = R.id.layNameAndTimer;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layNameAndTimer);
                if (relativeLayout != null) {
                    i4 = R.id.pinContent;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.pinContent);
                    if (constraintLayout != null) {
                        ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                        i4 = R.id.tvComplaint;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvComplaint);
                        if (textView != null) {
                            i4 = R.id.tvContent;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvContent);
                            if (textView2 != null) {
                                i4 = R.id.tvName;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvName);
                                if (textView3 != null) {
                                    i4 = R.id.tvPrice;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvPrice);
                                    if (textView4 != null) {
                                        i4 = R.id.tvTimer;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTimer);
                                        if (textView5 != null) {
                                            return new a4(constraintLayout2, frameLayout, simpleDraweeView, relativeLayout, constraintLayout, constraintLayout2, textView, textView2, textView3, textView4, textView5);
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
    public static a4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.pinned_msg_itemview_expanded, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62246a;
    }
}
