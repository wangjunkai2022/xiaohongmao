package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ItemChatListBinding.java */
/* loaded from: classes3.dex */
public final class i2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62544a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f62545b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62546c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62547d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62548e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62549f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62550g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62551h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62552i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62553j;

    private i2(@NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f62544a = constraintLayout;
        this.f62545b = frameLayout;
        this.f62546c = imageView;
        this.f62547d = imageView2;
        this.f62548e = imageView3;
        this.f62549f = textView;
        this.f62550g = textView2;
        this.f62551h = textView3;
        this.f62552i = textView4;
        this.f62553j = textView5;
    }

    @NonNull
    public static i2 a(@NonNull View view) {
        int i4 = R.id.flAvatar;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.flAvatar);
        if (frameLayout != null) {
            i4 = R.id.ivIcon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivIcon);
            if (imageView != null) {
                i4 = R.id.ivPinned;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivPinned);
                if (imageView2 != null) {
                    i4 = R.id.ivSendStatus;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivSendStatus);
                    if (imageView3 != null) {
                        i4 = R.id.tv_chat_name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_chat_name);
                        if (textView != null) {
                            i4 = R.id.tvIcon;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvIcon);
                            if (textView2 != null) {
                                i4 = R.id.tvMessage;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMessage);
                                if (textView3 != null) {
                                    i4 = R.id.tvTime;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTime);
                                    if (textView4 != null) {
                                        i4 = R.id.tvUnread;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvUnread);
                                        if (textView5 != null) {
                                            return new i2((ConstraintLayout) view, frameLayout, imageView, imageView2, imageView3, textView, textView2, textView3, textView4, textView5);
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
    public static i2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_chat_list, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62544a;
    }
}
