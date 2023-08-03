package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: PinnedMsgItemviewCollapsedHistoryBinding.java */
/* loaded from: classes3.dex */
public final class z3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63420a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f63421b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63422c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63423d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63424e;

    private z3(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f63420a = constraintLayout;
        this.f63421b = simpleDraweeView;
        this.f63422c = textView;
        this.f63423d = textView2;
        this.f63424e = textView3;
    }

    @NonNull
    public static z3 a(@NonNull View view) {
        int i4 = R.id.ivAvatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivAvatar);
        if (simpleDraweeView != null) {
            i4 = R.id.tvContent;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvContent);
            if (textView != null) {
                i4 = R.id.tvName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvName);
                if (textView2 != null) {
                    i4 = R.id.tvPrice;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvPrice);
                    if (textView3 != null) {
                        return new z3((ConstraintLayout) view, simpleDraweeView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static z3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.pinned_msg_itemview_collapsed_history, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63420a;
    }
}
