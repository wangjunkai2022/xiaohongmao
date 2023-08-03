package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: LayRoomDialogLevelBinding.java */
/* loaded from: classes3.dex */
public final class g3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f62460a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f62461b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62462c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62463d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f62464e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f62465f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62466g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62467h;

    private g3(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f62460a = relativeLayout;
        this.f62461b = relativeLayout2;
        this.f62462c = textView;
        this.f62463d = textView2;
        this.f62464e = linearLayout;
        this.f62465f = linearLayout2;
        this.f62466g = textView3;
        this.f62467h = textView4;
    }

    @NonNull
    public static g3 a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i4 = R.id.privater_room_dialog_level_commit;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_level_commit);
        if (textView != null) {
            i4 = R.id.privater_room_dialog_level_denied;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_level_denied);
            if (textView2 != null) {
                i4 = R.id.privater_room_dialog_level_infolayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_level_infolayout);
                if (linearLayout != null) {
                    i4 = R.id.privater_room_dialog_level_infolayout_required;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_level_infolayout_required);
                    if (linearLayout2 != null) {
                        i4 = R.id.privater_room_dialog_level_level;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_level_level);
                        if (textView3 != null) {
                            i4 = R.id.privater_room_dialog_level_required;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.privater_room_dialog_level_required);
                            if (textView4 != null) {
                                return new g3(relativeLayout, relativeLayout, textView, textView2, linearLayout, linearLayout2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static g3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.lay_room_dialog_level, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f62460a;
    }
}
