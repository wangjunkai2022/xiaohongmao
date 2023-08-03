package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import java.util.Objects;

/* compiled from: ItemRoomPublicChatNewFanBinding.java */
/* loaded from: classes3.dex */
public final class a3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextView f62244a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62245b;

    private a3(@NonNull TextView textView, @NonNull TextView textView2) {
        this.f62244a = textView;
        this.f62245b = textView2;
    }

    @NonNull
    public static a3 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new a3(textView, textView);
    }

    @NonNull
    public static a3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.item_room_public_chat_new_fan, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public TextView getRoot() {
        return this.f62244a;
    }
}
