package com.qennnsad.aknkaksd.presentation.ui.room.create;

import android.app.DialogFragment;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.util.h1;
import g5.h;
import java.util.HashMap;
import java.util.regex.Pattern;

@Deprecated
/* loaded from: classes3.dex */
public class PrivateSetStringDialog extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private EditText f53309a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f53310b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f53311c;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, String> f53312d;

    /* renamed from: e  reason: collision with root package name */
    a f53313e;

    /* loaded from: classes3.dex */
    public interface a {
        void a(String str, String str2);
    }

    public static boolean d(String str) {
        Pattern.compile("^[a-zA-Z0-9]+$");
        return Pattern.matches("^[a-zA-Z0-9]+$", str);
    }

    private void f(View view) {
        this.f53310b = (TextView) view.findViewById(R.id.private_setstring_title);
        this.f53311c = (TextView) view.findViewById(R.id.private_setstring_text);
        EditText editText = (EditText) view.findViewById(R.id.private_setstring_edit);
        this.f53309a = editText;
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.create.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                boolean i10;
                i10 = PrivateSetStringDialog.this.i(textView, i4, keyEvent);
                return i10;
            }
        });
        this.f53309a.setInputType(128);
        if (getTag() == null) {
            com.qennnsad.aknkaksd.util.toast.a.a(R.string.msg_unknown_error);
            dismiss();
            return;
        }
        if (getTag().equals("1")) {
            this.f53309a.setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
            this.f53310b.setText(getString(R.string.room_private_pwd_title));
            this.f53311c.setText(getString(R.string.room_private_pwd_text));
            this.f53309a.setHint(getString(R.string.room_private_pwd_edit));
        } else if (getTag().equals("2")) {
            this.f53309a.setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
            this.f53310b.setText(getString(R.string.room_private_ticket_title));
            this.f53311c.setText(getString(R.string.room_private_ticket_text));
            this.f53309a.setHint(getString(R.string.room_private_ticket_edit));
        } else if (getTag().equals("3")) {
            this.f53309a.setFilters(new InputFilter[]{new InputFilter.LengthFilter(3)});
            this.f53310b.setText(getString(R.string.room_private_level_title));
            this.f53311c.setText(getString(R.string.room_private_level_text));
            this.f53309a.setHint(getString(R.string.room_private_level_edit));
        } else if (getTag().equals(h.f67840d)) {
            this.f53309a.setFilters(new InputFilter[]{new InputFilter.LengthFilter(5)});
            this.f53310b.setText(getString(R.string.room_private_time_title));
            this.f53311c.setText(getString(R.string.room_private_time_text));
            this.f53309a.setHint(getString(R.string.room_private_time_edit));
        }
        if (!TextUtils.isEmpty(this.f53312d.get(getTag()))) {
            this.f53309a.setText(this.f53312d.get(getTag()));
        }
        view.findViewById(R.id.private_setstring_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.create.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PrivateSetStringDialog.this.j(view2);
            }
        });
        view.findViewById(R.id.private_setstring_commit).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.create.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PrivateSetStringDialog.this.k(view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean i(TextView textView, int i4, KeyEvent keyEvent) {
        if (i4 == 6 || (keyEvent != null && keyEvent.getKeyCode() == 66)) {
            e();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view) {
        h1.l(this.f53309a, false);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(View view) {
        e();
    }

    public void e() {
        if (TextUtils.isEmpty(this.f53309a.getText().toString())) {
            com.qennnsad.aknkaksd.util.toast.a.h(R.string.room_private_edit_null);
        } else if (getTag().equals("1") && !d(this.f53309a.getText().toString())) {
            com.qennnsad.aknkaksd.util.toast.a.h(R.string.room_private_edit_pwd);
        } else if (!g(this.f53309a.getText().toString()) && getTag().equals("2")) {
            com.qennnsad.aknkaksd.util.toast.a.h(R.string.room_private_edit_error);
        } else if (!g(this.f53309a.getText().toString()) && getTag().equals("3")) {
            com.qennnsad.aknkaksd.util.toast.a.h(R.string.room_private_edit_error);
        } else if (!g(this.f53309a.getText().toString()) && getTag().equals(h.f67840d)) {
            com.qennnsad.aknkaksd.util.toast.a.h(R.string.room_private_edit_error);
        } else {
            a aVar = this.f53313e;
            if (aVar != null) {
                aVar.a(this.f53309a.getText().toString(), getTag());
                this.f53312d.put(getTag(), this.f53309a.getText().toString());
            } else {
                ((d) getActivity()).a(this.f53309a.getText().toString(), getTag());
                this.f53312d.put(getTag(), this.f53309a.getText().toString());
            }
        }
        this.f53309a.setText("");
        h1.l(this.f53309a, false);
        dismiss();
    }

    public boolean g(String str) {
        return Pattern.compile("^[0-9]*$").matcher(str).matches();
    }

    public boolean h(String str) {
        return Pattern.compile("^\\w+$").matcher(str).matches();
    }

    public void l(a aVar) {
        this.f53313e = aVar;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        h1.l(this.f53309a, false);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, 0);
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        View inflate = layoutInflater.inflate(R.layout.private_setstring_dialog_popu, viewGroup, false);
        if (this.f53312d == null) {
            this.f53312d = new HashMap<>();
        }
        f(inflate);
        getDialog().setCanceledOnTouchOutside(false);
        return inflate;
    }
}
