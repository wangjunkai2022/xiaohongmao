package com.hbb20;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.FastScroller;
import com.hbb20.i;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CountryCodeDialog.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Field f37125a;

    /* renamed from: b  reason: collision with root package name */
    private static final Field f37126b;

    /* renamed from: c  reason: collision with root package name */
    private static final Field f37127c;

    /* renamed from: d  reason: collision with root package name */
    static Dialog f37128d;

    /* renamed from: e  reason: collision with root package name */
    static Context f37129e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountryCodeDialog.java */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.f37128d.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountryCodeDialog.java */
    /* loaded from: classes2.dex */
    public class b implements DialogInterface.OnDismissListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CountryCodePicker f37130a;

        b(final CountryCodePicker val$codePicker) {
            this.f37130a = val$codePicker;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            f.d(f.f37129e);
            if (this.f37130a.getDialogEventsListener() != null) {
                this.f37130a.getDialogEventsListener().a(dialogInterface);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountryCodeDialog.java */
    /* loaded from: classes2.dex */
    public class c implements DialogInterface.OnCancelListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CountryCodePicker f37131a;

        c(final CountryCodePicker val$codePicker) {
            this.f37131a = val$codePicker;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            f.d(f.f37129e);
            if (this.f37131a.getDialogEventsListener() != null) {
                this.f37131a.getDialogEventsListener().c(dialogInterface);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    static {
        /*
            r0 = 1
            r1 = 0
            java.lang.Class<android.widget.TextView> r2 = android.widget.TextView.class
            java.lang.String r3 = "mCursorDrawableRes"
            java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch: java.lang.Exception -> L2d
            r2.setAccessible(r0)     // Catch: java.lang.Exception -> L2b
            java.lang.Class<android.widget.TextView> r3 = android.widget.TextView.class
            java.lang.String r4 = "mEditor"
            java.lang.reflect.Field r3 = r3.getDeclaredField(r4)     // Catch: java.lang.Exception -> L2b
            r3.setAccessible(r0)     // Catch: java.lang.Exception -> L29
            java.lang.Class r4 = r3.getType()     // Catch: java.lang.Exception -> L29
            java.lang.String r5 = "mCursorDrawable"
            java.lang.reflect.Field r4 = r4.getDeclaredField(r5)     // Catch: java.lang.Exception -> L29
            r4.setAccessible(r0)     // Catch: java.lang.Exception -> L27
            r0 = 0
            goto L30
        L27:
            goto L30
        L29:
            r4 = r1
            goto L30
        L2b:
            r3 = r1
            goto L2f
        L2d:
            r2 = r1
            r3 = r2
        L2f:
            r4 = r3
        L30:
            if (r0 == 0) goto L39
            com.hbb20.f.f37125a = r1
            com.hbb20.f.f37126b = r1
            com.hbb20.f.f37127c = r1
            goto L3f
        L39:
            com.hbb20.f.f37125a = r3
            com.hbb20.f.f37126b = r4
            com.hbb20.f.f37127c = r2
        L3f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.f.<clinit>():void");
    }

    f() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        Dialog dialog = f37128d;
        if (dialog != null) {
            dialog.dismiss();
        }
        f37128d = null;
        f37129e = null;
    }

    private static Drawable c(Context context, int id) {
        return context.getDrawable(id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context) {
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
            View currentFocus = activity.getCurrentFocus();
            if (currentFocus == null) {
                currentFocus = new View(activity);
            }
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    public static void e(final CountryCodePicker codePicker) {
        f(codePicker, null);
    }

    public static void f(final CountryCodePicker codePicker, final String countryNameCode) {
        boolean z9;
        f37129e = codePicker.getContext();
        f37128d = new Dialog(f37129e);
        codePicker.K();
        codePicker.M();
        List<com.hbb20.b> l10 = com.hbb20.b.l(f37129e, codePicker);
        f37128d.requestWindowFeature(1);
        f37128d.getWindow().setContentView(i.k.G);
        f37128d.getWindow().setBackgroundDrawable(ContextCompat.getDrawable(f37129e, 17170445));
        RecyclerView recyclerView = (RecyclerView) f37128d.findViewById(i.h.f37757t2);
        TextView textView = (TextView) f37128d.findViewById(i.h.f37758t3);
        RelativeLayout relativeLayout = (RelativeLayout) f37128d.findViewById(i.h.f37777x2);
        ImageView imageView = (ImageView) f37128d.findViewById(i.h.U1);
        EditText editText = (EditText) f37128d.findViewById(i.h.G1);
        TextView textView2 = (TextView) f37128d.findViewById(i.h.f37748r3);
        CardView cardView = (CardView) f37128d.findViewById(i.h.f37761u1);
        ImageView imageView2 = (ImageView) f37128d.findViewById(i.h.V1);
        if (codePicker.z() && codePicker.v()) {
            new WindowInsetsControllerCompat(f37128d.getWindow(), editText).show(WindowInsetsCompat.Type.ime());
            editText.requestFocus();
        } else {
            f37128d.getWindow().setSoftInputMode(2);
        }
        try {
            if (codePicker.getDialogTypeFace() != null) {
                if (codePicker.getDialogTypeFaceStyle() != -99) {
                    textView2.setTypeface(codePicker.getDialogTypeFace(), codePicker.getDialogTypeFaceStyle());
                    editText.setTypeface(codePicker.getDialogTypeFace(), codePicker.getDialogTypeFaceStyle());
                    textView.setTypeface(codePicker.getDialogTypeFace(), codePicker.getDialogTypeFaceStyle());
                } else {
                    textView2.setTypeface(codePicker.getDialogTypeFace());
                    editText.setTypeface(codePicker.getDialogTypeFace());
                    textView.setTypeface(codePicker.getDialogTypeFace());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (codePicker.getDialogBackgroundColor() != 0) {
            cardView.setCardBackgroundColor(codePicker.getDialogBackgroundColor());
        }
        if (codePicker.getDialogBackgroundResId() != 0) {
            cardView.setBackgroundResource(codePicker.getDialogBackgroundResId());
        }
        cardView.setRadius(codePicker.getDialogCornerRadius());
        if (codePicker.A()) {
            imageView2.setVisibility(0);
            imageView2.setOnClickListener(new a());
        } else {
            imageView2.setVisibility(8);
        }
        if (!codePicker.getCcpDialogShowTitle()) {
            textView.setVisibility(8);
        }
        if (codePicker.getDialogTextColor() != 0) {
            int dialogTextColor = codePicker.getDialogTextColor();
            imageView.setColorFilter(dialogTextColor);
            imageView2.setColorFilter(dialogTextColor);
            textView.setTextColor(dialogTextColor);
            textView2.setTextColor(dialogTextColor);
            editText.setTextColor(dialogTextColor);
            editText.setHintTextColor(Color.argb(100, Color.red(dialogTextColor), Color.green(dialogTextColor), Color.blue(dialogTextColor)));
        }
        if (codePicker.getDialogSearchEditTextTintColor() != 0) {
            editText.setBackgroundTintList(ColorStateList.valueOf(codePicker.getDialogSearchEditTextTintColor()));
            g(editText, codePicker.getDialogSearchEditTextTintColor());
        }
        textView.setText(codePicker.getDialogTitle());
        editText.setHint(codePicker.getSearchHintText());
        textView2.setText(codePicker.getNoResultACK());
        if (!codePicker.z()) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) recyclerView.getLayoutParams();
            layoutParams.height = -2;
            recyclerView.setLayoutParams(layoutParams);
        }
        e eVar = new e(f37129e, l10, codePicker, relativeLayout, editText, textView2, f37128d, imageView);
        recyclerView.setLayoutManager(new LinearLayoutManager(f37129e));
        recyclerView.setAdapter(eVar);
        FastScroller fastScroller = (FastScroller) f37128d.findViewById(i.h.K1);
        fastScroller.setRecyclerView(recyclerView);
        if (codePicker.B()) {
            if (codePicker.getFastScrollerBubbleColor() != 0) {
                fastScroller.setBubbleColor(codePicker.getFastScrollerBubbleColor());
            }
            if (codePicker.getFastScrollerHandleColor() != 0) {
                fastScroller.setHandleColor(codePicker.getFastScrollerHandleColor());
            }
            if (codePicker.getFastScrollerBubbleTextAppearance() != 0) {
                try {
                    fastScroller.setBubbleTextAppearance(codePicker.getFastScrollerBubbleTextAppearance());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } else {
            fastScroller.setVisibility(8);
        }
        f37128d.setOnDismissListener(new b(codePicker));
        f37128d.setOnCancelListener(new c(codePicker));
        if (countryNameCode != null) {
            List<com.hbb20.b> list = codePicker.W;
            if (list != null) {
                for (com.hbb20.b bVar : list) {
                    if (bVar.f37093a.equalsIgnoreCase(countryNameCode)) {
                        z9 = true;
                        break;
                    }
                }
            }
            z9 = false;
            if (!z9) {
                List<com.hbb20.b> list2 = codePicker.W;
                int size = (list2 == null || list2.size() <= 0) ? 0 : codePicker.W.size() + 1;
                int i4 = 0;
                while (true) {
                    if (i4 >= l10.size()) {
                        break;
                    } else if (l10.get(i4).f37093a.equalsIgnoreCase(countryNameCode)) {
                        recyclerView.scrollToPosition(i4 + size);
                        break;
                    } else {
                        i4++;
                    }
                }
            }
        }
        f37128d.show();
        if (codePicker.getDialogEventsListener() != null) {
            codePicker.getDialogEventsListener().b(f37128d);
        }
    }

    static void g(EditText editText, int color) {
        Field field = f37126b;
        if (field == null) {
            return;
        }
        try {
            Drawable c10 = c(editText.getContext(), f37127c.getInt(editText));
            c10.setColorFilter(color, PorterDuff.Mode.SRC_IN);
            field.set(f37125a.get(editText), new Drawable[]{c10, c10});
        } catch (Exception unused) {
        }
    }
}
