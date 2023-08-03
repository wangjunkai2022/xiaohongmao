package eltos.simpledialogfragment;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import androidx.annotation.CallSuper;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.f;

/* compiled from: SimpleDialog.java */
/* loaded from: classes3.dex */
public class f<This extends f<This>> extends DialogFragment {
    public static final String TAG = "SimpleDialog.";

    /* renamed from: d  reason: collision with root package name */
    protected static final String f65114d = "SimpleDialog.title";

    /* renamed from: e  reason: collision with root package name */
    protected static final String f65115e = "SimpleDialog.message";

    /* renamed from: f  reason: collision with root package name */
    protected static final String f65116f = "SimpleDialog.positiveButtonText";

    /* renamed from: g  reason: collision with root package name */
    protected static final String f65117g = "SimpleDialog.negativeButtonText";

    /* renamed from: h  reason: collision with root package name */
    protected static final String f65118h = "SimpleDialog.neutralButtonText";

    /* renamed from: i  reason: collision with root package name */
    protected static final String f65119i = "SimpleDialog.iconResource";

    /* renamed from: j  reason: collision with root package name */
    protected static final String f65120j = "SimpleDialog.cancelable";

    /* renamed from: k  reason: collision with root package name */
    protected static final String f65121k = "SimpleDialog.theme";

    /* renamed from: l  reason: collision with root package name */
    protected static final String f65122l = "SimpleDialog.html";

    /* renamed from: m  reason: collision with root package name */
    protected static final String f65123m = "SimpleDialog.bundle";

    /* renamed from: a  reason: collision with root package name */
    private DialogInterface.OnClickListener f65124a = new a();

    /* renamed from: b  reason: collision with root package name */
    private AlertDialog f65125b;

    /* renamed from: c  reason: collision with root package name */
    private Context f65126c;

    /* compiled from: SimpleDialog.java */
    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i4) {
            f.this.V(i4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleDialog.java */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f65128a;

        b(View view) {
            this.f65128a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f65128a.requestFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) f.this.getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(this.f65128a, 1);
            }
        }
    }

    /* compiled from: SimpleDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        public static final int X1 = 0;
        public static final int Y1 = -1;
        public static final int Z1 = -2;

        /* renamed from: a2  reason: collision with root package name */
        public static final int f65130a2 = -3;

        boolean R(@NonNull String str, int i4, @NonNull Bundle bundle);
    }

    public f() {
        Z();
        r0(17039370);
    }

    public static f U() {
        return new f();
    }

    public void A0(FragmentActivity fragmentActivity) {
        String str = null;
        try {
            str = (String) getClass().getField("TAG").get(null);
        } catch (Exception unused) {
        }
        B0(fragmentActivity, str);
    }

    public void B0(FragmentActivity fragmentActivity, String str) {
        C0(fragmentActivity, str, null);
    }

    public void C0(FragmentActivity fragmentActivity, String str, String str2) {
        FragmentManager fragmentManager;
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(str2);
        if (findFragmentByTag != null && (fragmentManager = findFragmentByTag.getFragmentManager()) != null) {
            FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
            beginTransaction.remove(findFragmentByTag);
            beginTransaction.commit();
        }
        try {
            super.show(supportFragmentManager, str);
        } catch (IllegalStateException unused) {
        }
    }

    public void D0(View view) {
        view.postDelayed(new b(view), 100L);
    }

    public This E0(@StyleRes int i4) {
        return t0(f65121k, i4);
    }

    public This F0(@StringRes int i4) {
        return t0(f65114d, i4);
    }

    public This G0(String str) {
        return v0(f65114d, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public boolean V(int i4, @Nullable Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putAll(a0());
        boolean z9 = false;
        if (getTag() != null) {
            for (Fragment targetFragment = getTargetFragment(); !z9 && targetFragment != null; targetFragment = targetFragment.getParentFragment()) {
                if (targetFragment instanceof c) {
                    z9 = ((c) getTargetFragment()).R(getTag(), i4, bundle);
                }
            }
            return (z9 || !(getActivity() instanceof c)) ? z9 : ((c) getActivity()).R(getTag(), i4, bundle);
        }
        return false;
    }

    public This W(boolean z9) {
        return w0(f65120j, z9);
    }

    public This X(Bundle bundle) {
        Z().putBundle(f65123m, bundle);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String Y(String str) {
        Object obj = Z().get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof Integer) {
            return getString(((Integer) obj).intValue());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public final Bundle Z() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            Bundle bundle = new Bundle();
            setArguments(bundle);
            return bundle;
        }
        return arguments;
    }

    @NonNull
    public Bundle a0() {
        Bundle bundle = Z().getBundle(f65123m);
        return bundle != null ? bundle : new Bundle();
    }

    @Nullable
    public String b0() {
        return Y(f65115e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Button c0() {
        AlertDialog alertDialog = this.f65125b;
        if (alertDialog == null) {
            return null;
        }
        return alertDialog.getButton(-2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Button d0() {
        AlertDialog alertDialog = this.f65125b;
        if (alertDialog == null) {
            return null;
        }
        return alertDialog.getButton(-3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Button e0() {
        AlertDialog alertDialog = this.f65125b;
        if (alertDialog == null) {
            return null;
        }
        return alertDialog.getButton(-1);
    }

    @Nullable
    public String f0() {
        return Y(f65114d);
    }

    public This g0(@DrawableRes int i4) {
        return t0(f65119i, i4);
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        Context context = this.f65126c;
        return context != null ? context : super.getContext();
    }

    public This h0(@StringRes int i4) {
        return t0(f65115e, i4);
    }

    public This i0(String str) {
        return v0(f65115e, str);
    }

    @Override // androidx.fragment.app.DialogFragment
    public boolean isCancelable() {
        return Z().getBoolean(f65120j, true);
    }

    public This j0(@StringRes int i4) {
        w0(f65122l, true);
        return t0(f65115e, i4);
    }

    public This k0(String str) {
        w0(f65122l, true);
        return v0(f65115e, str);
    }

    public This l0() {
        return m0(17039369);
    }

    public This m0(@StringRes int i4) {
        return t0(f65117g, i4);
    }

    public This n0(String str) {
        return v0(f65117g, str);
    }

    public This o0() {
        return p0(17039360);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    @CallSuper
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        V(0, null);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @CallSuper
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        setCancelable(isCancelable());
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        Integer valueOf;
        if (Z().containsKey(f65121k)) {
            valueOf = Integer.valueOf(Z().getInt(f65121k));
        } else {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(c.d.Qb, typedValue, true);
            valueOf = typedValue.type == 1 ? Integer.valueOf(typedValue.resourceId) : null;
        }
        if (valueOf != null) {
            this.f65125b = new AlertDialog.Builder(getContext(), valueOf.intValue()).create();
            setStyle(0, valueOf.intValue());
        } else {
            this.f65125b = new AlertDialog.Builder(getContext()).create();
        }
        this.f65126c = this.f65125b.getContext();
        this.f65125b.setTitle(f0());
        String b02 = b0();
        if (b02 != null) {
            if (Z().getBoolean(f65122l)) {
                if (Build.VERSION.SDK_INT >= 24) {
                    this.f65125b.setMessage(Html.fromHtml(b02, 0));
                } else {
                    this.f65125b.setMessage(Html.fromHtml(b02));
                }
            } else {
                this.f65125b.setMessage(b02);
            }
        }
        String Y = Y(f65116f);
        if (Y != null) {
            this.f65125b.setButton(-1, Y, this.f65124a);
        }
        String Y2 = Y(f65117g);
        if (Y2 != null) {
            this.f65125b.setButton(-2, Y2, this.f65124a);
        }
        String Y3 = Y(f65118h);
        if (Y3 != null) {
            this.f65125b.setButton(-3, Y3, this.f65124a);
        }
        if (Z().containsKey(f65119i)) {
            this.f65125b.setIcon(Z().getInt(f65119i));
        }
        this.f65125b.setCancelable(isCancelable());
        return this.f65125b;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @CallSuper
    public void onDestroyView() {
        if (this.f65125b != null && getRetainInstance()) {
            this.f65125b.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    public This p0(@StringRes int i4) {
        return t0(f65118h, i4);
    }

    public This q0(String str) {
        return v0(f65118h, str);
    }

    public This r0(@StringRes int i4) {
        return t0(f65116f, i4);
    }

    public This s0(String str) {
        return v0(f65116f, str);
    }

    @Override // androidx.fragment.app.DialogFragment
    @Deprecated
    public void show(FragmentManager fragmentManager, String str) {
        try {
            super.show(fragmentManager, str);
        } catch (IllegalStateException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final This t0(String str, int i4) {
        Z().putInt(str, i4);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final This u0(String str, long j4) {
        Z().putLong(str, j4);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final This v0(String str, String str2) {
        Z().putString(str, str2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final This w0(String str, boolean z9) {
        Z().putBoolean(str, z9);
        return this;
    }

    public void x0(Fragment fragment) {
        String str = null;
        try {
            str = (String) getClass().getField("TAG").get(null);
        } catch (Exception unused) {
        }
        y0(fragment, str);
    }

    public void y0(Fragment fragment, String str) {
        z0(fragment, str, null);
    }

    public void z0(Fragment fragment, String str, String str2) {
        FragmentManager fragmentManager;
        FragmentManager fragmentManager2 = fragment.getFragmentManager();
        if (fragmentManager2 != null) {
            Fragment findFragmentByTag = fragmentManager2.findFragmentByTag(str2);
            if (findFragmentByTag != null && (fragmentManager = findFragmentByTag.getFragmentManager()) != null) {
                FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
                beginTransaction.remove(findFragmentByTag);
                beginTransaction.commit();
            }
            setTargetFragment(fragment, -1);
            try {
                super.show(fragmentManager2, str);
            } catch (IllegalStateException unused) {
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @Deprecated
    public int show(FragmentTransaction fragmentTransaction, String str) {
        try {
            return super.show(fragmentTransaction, str);
        } catch (IllegalStateException unused) {
            return -1;
        }
    }
}
