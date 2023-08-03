package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: LayRoomDialogPasswordBinding.java */
/* loaded from: classes3.dex */
public final class h3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62503a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62504b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f62505c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62506d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final EditText f62507e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62508f;

    private h3(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull EditText editText, @NonNull TextView textView2) {
        this.f62503a = relativeLayout;
        this.f62504b = imageView;
        this.f62505c = relativeLayout2;
        this.f62506d = textView;
        this.f62507e = editText;
        this.f62508f = textView2;
    }

    @NonNull
    public static h3 a(@NonNull View view) {
        int i4 = R.id.iv_password_ad;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_password_ad);
        if (imageView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i4 = R.id.privater_room_dialog_passwd_commit;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_passwd_commit);
            if (textView != null) {
                i4 = R.id.privater_room_dialog_passwd_pwdedit;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_passwd_pwdedit);
                if (editText != null) {
                    i4 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        return new h3(relativeLayout, imageView, relativeLayout, textView, editText, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static h3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.lay_room_dialog_password, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62503a;
    }
}
