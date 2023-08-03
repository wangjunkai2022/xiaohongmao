package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: RoomLiveOperationBinding.java */
/* loaded from: classes3.dex */
public final class r4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f63024a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63025b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f63026c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageButton f63027d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageButton f63028e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f63029f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageButton f63030g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageButton f63031h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageButton f63032i;

    private r4(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull ImageButton imageButton, @NonNull ImageButton imageButton2, @NonNull LinearLayout linearLayout2, @NonNull ImageButton imageButton3, @NonNull ImageButton imageButton4, @NonNull ImageButton imageButton5) {
        this.f63024a = linearLayout;
        this.f63025b = imageView;
        this.f63026c = relativeLayout;
        this.f63027d = imageButton;
        this.f63028e = imageButton2;
        this.f63029f = linearLayout2;
        this.f63030g = imageButton3;
        this.f63031h = imageButton4;
        this.f63032i = imageButton5;
    }

    @NonNull
    public static r4 a(@NonNull View view) {
        int i4 = R.id.room_imgbtn_gift;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.room_imgbtn_gift);
        if (imageView != null) {
            i4 = R.id.room_imgbtn_public_chat;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.room_imgbtn_public_chat);
            if (relativeLayout != null) {
                i4 = R.id.room_imgbtn_scale;
                ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.room_imgbtn_scale);
                if (imageButton != null) {
                    i4 = R.id.room_imgbtn_share;
                    ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, R.id.room_imgbtn_share);
                    if (imageButton2 != null) {
                        LinearLayout linearLayout = (LinearLayout) view;
                        i4 = R.id.room_pinned_msg;
                        ImageButton imageButton3 = (ImageButton) ViewBindings.findChildViewById(view, R.id.room_pinned_msg);
                        if (imageButton3 != null) {
                            i4 = R.id.rotate_player_view;
                            ImageButton imageButton4 = (ImageButton) ViewBindings.findChildViewById(view, R.id.rotate_player_view);
                            if (imageButton4 != null) {
                                i4 = R.id.translation_view;
                                ImageButton imageButton5 = (ImageButton) ViewBindings.findChildViewById(view, R.id.translation_view);
                                if (imageButton5 != null) {
                                    return new r4(linearLayout, imageView, relativeLayout, imageButton, imageButton2, linearLayout, imageButton3, imageButton4, imageButton5);
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
    public static r4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.room_live_operation, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f63024a;
    }
}
