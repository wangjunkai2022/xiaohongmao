package com.qennnsad.aknkaksd.presentation.ui.room;

import android.app.DialogFragment;
import android.app.FragmentManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.Nullable;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.room.create.PrivateSetStringDialog;
import com.qennnsad.aknkaksd.util.o0;

/* loaded from: classes3.dex */
public class ChargeRoomDialog extends DialogFragment implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public static final String f53262d = "TIME";

    /* renamed from: e  reason: collision with root package name */
    public static final String f53263e = "TICKET";

    /* renamed from: a  reason: collision with root package name */
    a f53264a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f53265b = false;

    /* renamed from: c  reason: collision with root package name */
    PrivateSetStringDialog f53266c;

    /* loaded from: classes3.dex */
    public interface a {
        void a(String str, int i4);
    }

    private void b(View view) {
        view.findViewById(R.id.dialog_chargeroom_ticket).setOnClickListener(this);
        view.findViewById(R.id.dialog_chargeroom_time).setOnClickListener(this);
        view.findViewById(R.id.dialog_chargeroom_cancel).setOnClickListener(this);
        view.findViewById(R.id.dialog_chargeroom_rootlayout).setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str, String str2) {
        o0.g("privateStringSet", "str:" + str + "type:" + str2);
        if (str2.equals("2")) {
            this.f53264a.a(f53263e, Integer.parseInt(str));
        } else if (str2.equals(g5.h.f67840d)) {
            this.f53264a.a(f53262d, Integer.parseInt(str));
        }
    }

    public void d(a aVar) {
        this.f53264a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f53266c == null) {
            PrivateSetStringDialog privateSetStringDialog = new PrivateSetStringDialog();
            this.f53266c = privateSetStringDialog;
            privateSetStringDialog.l(new PrivateSetStringDialog.a() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.d
                @Override // com.qennnsad.aknkaksd.presentation.ui.room.create.PrivateSetStringDialog.a
                public final void a(String str, String str2) {
                    ChargeRoomDialog.this.c(str, str2);
                }
            });
        }
        switch (view.getId()) {
            case R.id.dialog_chargeroom_cancel /* 2131362287 */:
                dismiss();
                return;
            case R.id.dialog_chargeroom_rootlayout /* 2131362288 */:
                dismiss();
                return;
            case R.id.dialog_chargeroom_ticket /* 2131362289 */:
                this.f53266c.show(getFragmentManager(), "2");
                dismiss();
                return;
            case R.id.dialog_chargeroom_time /* 2131362290 */:
                this.f53266c.show(getFragmentManager(), g5.h.f67840d);
                dismiss();
                return;
            default:
                return;
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, 0);
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Window window = getDialog().getWindow();
        View inflate = layoutInflater.inflate(R.layout.dialog_chargeroom, (ViewGroup) window.findViewById(16908290), false);
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setLayout(-1, -2);
        b(inflate);
        return inflate;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        o0.g("ChargeRoomDialog", "ChargeRoomDialog isFragmentShown:" + this.f53265b);
        if (this.f53265b) {
            return;
        }
        this.f53265b = true;
        super.show(fragmentManager, str);
    }
}
