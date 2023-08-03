package iamutkarshtiwari.github.io.ananas;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;

/* loaded from: classes3.dex */
public class BaseActivity extends AppCompatActivity {
    public static Dialog G(Context context, int i4, boolean z9) {
        return H(context, context.getString(i4), z9);
    }

    public static Dialog H(Context context, String str, boolean z9) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setCancelable(z9);
        progressDialog.setMessage(str);
        return progressDialog;
    }
}
