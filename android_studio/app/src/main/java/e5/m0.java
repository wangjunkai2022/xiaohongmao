package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogRoomWarnBinding.java */
/* loaded from: classes3.dex */
public final class m0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62720a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f62721b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f62722c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f62723d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62724e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f62725f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62726g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62727h;

    private m0(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull EditText editText, @NonNull EditText editText2, @NonNull TextView textView, @NonNull Button button2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62720a = constraintLayout;
        this.f62721b = button;
        this.f62722c = editText;
        this.f62723d = editText2;
        this.f62724e = textView;
        this.f62725f = button2;
        this.f62726g = textView2;
        this.f62727h = textView3;
    }

    @NonNull
    public static m0 a(@NonNull View view) {
        int i4 = R.id.dialog_warn_cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_warn_cancel);
        if (button != null) {
            i4 = R.id.dialog_warn_edit_time;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.dialog_warn_edit_time);
            if (editText != null) {
                i4 = R.id.dialog_warn_note;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.dialog_warn_note);
                if (editText2 != null) {
                    i4 = R.id.dialog_warn_notetext;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_warn_notetext);
                    if (textView != null) {
                        i4 = R.id.dialog_warn_sure;
                        Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_warn_sure);
                        if (button2 != null) {
                            i4 = R.id.dialog_warn_timetext;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_warn_timetext);
                            if (textView2 != null) {
                                i4 = R.id.dialog_warn_timetext2;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_warn_timetext2);
                                if (textView3 != null) {
                                    return new m0((ConstraintLayout) view, button, editText, editText2, textView, button2, textView2, textView3);
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
    public static m0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_room_warn, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62720a;
    }
}
