package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: RoomLiveChatInputBinding.java */
/* loaded from: classes3.dex */
public final class p4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62914a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f62915b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62916c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f62917d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f62918e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f62919f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f62920g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final EditText f62921h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f62922i;

    private p4(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull EditText editText, @NonNull LinearLayout linearLayout4) {
        this.f62914a = linearLayout;
        this.f62915b = frameLayout;
        this.f62916c = imageView;
        this.f62917d = button;
        this.f62918e = relativeLayout;
        this.f62919f = linearLayout2;
        this.f62920g = linearLayout3;
        this.f62921h = editText;
        this.f62922i = linearLayout4;
    }

    @NonNull
    public static p4 a(@NonNull View view) {
        int i4 = R.id.emoji;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.emoji);
        if (frameLayout != null) {
            i4 = R.id.emojiBtn;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.emojiBtn);
            if (imageView != null) {
                i4 = R.id.room_btn_send;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.room_btn_send);
                if (button != null) {
                    i4 = R.id.room_danmu;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.room_danmu);
                    if (relativeLayout != null) {
                        i4 = R.id.room_danmu_close;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.room_danmu_close);
                        if (linearLayout != null) {
                            i4 = R.id.room_danmu_open;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.room_danmu_open);
                            if (linearLayout2 != null) {
                                i4 = R.id.room_edt_chat;
                                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.room_edt_chat);
                                if (editText != null) {
                                    LinearLayout linearLayout3 = (LinearLayout) view;
                                    return new p4(linearLayout3, frameLayout, imageView, button, relativeLayout, linearLayout, linearLayout2, editText, linearLayout3);
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
    public static p4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.room_live_chat_input, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62914a;
    }
}
