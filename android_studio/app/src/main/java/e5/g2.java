package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ItemChatContactBinding.java */
/* loaded from: classes3.dex */
public final class g2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62454a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Barrier f62455b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62456c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62457d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62458e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62459f;

    private g2(@NonNull ConstraintLayout constraintLayout, @NonNull Barrier barrier, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62454a = constraintLayout;
        this.f62455b = barrier;
        this.f62456c = imageView;
        this.f62457d = textView;
        this.f62458e = textView2;
        this.f62459f = textView3;
    }

    @NonNull
    public static g2 a(@NonNull View view) {
        int i4 = R.id.avatarBarrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.avatarBarrier);
        if (barrier != null) {
            i4 = R.id.ivAvatar;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivAvatar);
            if (imageView != null) {
                i4 = R.id.tvAvatarPlaceholder;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvAvatarPlaceholder);
                if (textView != null) {
                    i4 = R.id.tvLastOnline;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvLastOnline);
                    if (textView2 != null) {
                        i4 = R.id.tvUsername;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvUsername);
                        if (textView3 != null) {
                            return new g2((ConstraintLayout) view, barrier, imageView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static g2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_chat_contact, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62454a;
    }
}
