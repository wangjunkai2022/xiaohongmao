package com.google.android.material.datepicker;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.dialog.MaterialDialogs;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.TESTS})
/* loaded from: classes2.dex */
public class MaterialStyledDatePickerDialog extends DatePickerDialog {
    @AttrRes
    private static final int DEF_STYLE_ATTR = 16843612;
    @StyleRes
    private static final int DEF_STYLE_RES = R.style.MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner;
    @NonNull
    private final Drawable background;
    @NonNull
    private final Rect backgroundInsets;

    public MaterialStyledDatePickerDialog(@NonNull Context context) {
        this(context, 0);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.background);
        getWindow().getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(this, this.backgroundInsets));
    }

    public MaterialStyledDatePickerDialog(@NonNull Context context, int i4) {
        this(context, i4, null, -1, -1, -1);
    }

    public MaterialStyledDatePickerDialog(@NonNull Context context, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i4, int i10, int i11) {
        this(context, 0, onDateSetListener, i4, i10, i11);
    }

    public MaterialStyledDatePickerDialog(@NonNull Context context, int i4, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i10, int i11, int i12) {
        super(context, i4, onDateSetListener, i10, i11, i12);
        Context context2 = getContext();
        int resolveOrThrow = MaterialAttributes.resolveOrThrow(getContext(), R.attr.colorSurface, getClass().getCanonicalName());
        int i13 = DEF_STYLE_RES;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, DEF_STYLE_ATTR, i13);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(resolveOrThrow));
        Rect dialogBackgroundInsets = MaterialDialogs.getDialogBackgroundInsets(context2, DEF_STYLE_ATTR, i13);
        this.backgroundInsets = dialogBackgroundInsets;
        this.background = MaterialDialogs.insetDrawable(materialShapeDrawable, dialogBackgroundInsets);
    }
}
