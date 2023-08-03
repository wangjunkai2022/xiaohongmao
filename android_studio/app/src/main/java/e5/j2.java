package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ItemChatRequestBinding.java */
/* loaded from: classes3.dex */
public final class j2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62592a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Barrier f62593b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f62594c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f62595d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62596e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62597f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62598g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62599h;

    private j2(@NonNull ConstraintLayout constraintLayout, @NonNull Barrier barrier, @NonNull Button button, @NonNull Button button2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62592a = constraintLayout;
        this.f62593b = barrier;
        this.f62594c = button;
        this.f62595d = button2;
        this.f62596e = imageView;
        this.f62597f = textView;
        this.f62598g = textView2;
        this.f62599h = textView3;
    }

    @NonNull
    public static j2 a(@NonNull View view) {
        int i4 = R.id.avatarBarrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.avatarBarrier);
        if (barrier != null) {
            i4 = R.id.btn_accept;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_accept);
            if (button != null) {
                i4 = R.id.btn_decline;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_decline);
                if (button2 != null) {
                    i4 = R.id.ivAvatar;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivAvatar);
                    if (imageView != null) {
                        i4 = R.id.tvAvatarPlaceholder;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvAvatarPlaceholder);
                        if (textView != null) {
                            i4 = R.id.tvReason;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvReason);
                            if (textView2 != null) {
                                i4 = R.id.tvUsername;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvUsername);
                                if (textView3 != null) {
                                    return new j2((ConstraintLayout) view, barrier, button, button2, imageView, textView, textView2, textView3);
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
    public static j2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_chat_request, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62592a;
    }
}
