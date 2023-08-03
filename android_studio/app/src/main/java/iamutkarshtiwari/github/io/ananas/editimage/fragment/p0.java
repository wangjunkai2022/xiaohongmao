package iamutkarshtiwari.github.io.ananas.editimage.fragment;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.adapter.a;

/* compiled from: TextEditorDialogFragment.java */
/* loaded from: classes3.dex */
public class p0 extends DialogFragment {

    /* renamed from: e  reason: collision with root package name */
    public static final String f69489e = p0.class.getSimpleName();

    /* renamed from: f  reason: collision with root package name */
    private static final String f69490f = "extra_input_text";

    /* renamed from: g  reason: collision with root package name */
    private static final String f69491g = "extra_color_code";

    /* renamed from: a  reason: collision with root package name */
    private EditText f69492a;

    /* renamed from: b  reason: collision with root package name */
    private InputMethodManager f69493b;

    /* renamed from: c  reason: collision with root package name */
    private int f69494c;

    /* renamed from: d  reason: collision with root package name */
    private i7.h f69495d;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W(int i4) {
        this.f69494c = i4;
        this.f69492a.setTextColor(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X(View view) {
        i7.h hVar;
        this.f69493b.hideSoftInputFromWindow(view.getWindowToken(), 0);
        String obj = this.f69492a.getText().toString();
        if (!TextUtils.isEmpty(obj) && (hVar = this.f69495d) != null) {
            hVar.a(obj, this.f69494c);
        }
        dismiss();
    }

    public static p0 Z(@NonNull AppCompatActivity appCompatActivity) {
        return a0(appCompatActivity, "", ContextCompat.getColor(appCompatActivity, b.f.F3));
    }

    public static p0 a0(@NonNull AppCompatActivity appCompatActivity, @NonNull String str, @ColorInt int i4) {
        Bundle bundle = new Bundle();
        bundle.putString(f69490f, str);
        bundle.putInt(f69491g, i4);
        p0 p0Var = new p0();
        p0Var.setArguments(bundle);
        p0Var.show(appCompatActivity.getSupportFragmentManager(), f69489e);
        return p0Var;
    }

    public void Y(i7.h hVar) {
        this.f69495d = hVar;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@m8.g LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(b.l.Y, viewGroup, false);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        dialog.getWindow().setLayout(-1, -1);
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f69492a = (EditText) view.findViewById(b.i.f66928t0);
        this.f69493b = (InputMethodManager) getActivity().getSystemService("input_method");
        RecyclerView recyclerView = (RecyclerView) view.findViewById(b.i.f66908r0);
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        recyclerView.setHasFixedSize(true);
        iamutkarshtiwari.github.io.ananas.editimage.adapter.a aVar = new iamutkarshtiwari.github.io.ananas.editimage.adapter.a(getContext());
        aVar.i(new a.InterfaceC0531a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.o0
            @Override // iamutkarshtiwari.github.io.ananas.editimage.adapter.a.InterfaceC0531a
            public final void a(int i4) {
                p0.this.W(i4);
            }
        });
        recyclerView.setAdapter(aVar);
        this.f69492a.setText(getArguments().getString(f69490f));
        int i4 = getArguments().getInt(f69491g);
        this.f69494c = i4;
        this.f69492a.setTextColor(i4);
        this.f69493b.toggleSoftInput(2, 0);
        ((TextView) view.findViewById(b.i.f66918s0)).setOnClickListener(new View.OnClickListener() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                p0.this.X(view2);
            }
        });
    }
}
