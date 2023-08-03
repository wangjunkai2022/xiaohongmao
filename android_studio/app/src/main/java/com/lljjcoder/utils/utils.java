package com.lljjcoder.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* loaded from: classes3.dex */
public class utils {
    String cityJsonStr = "";

    private static void applyDim(Activity activity, float f10) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView().getRootView();
        ColorDrawable colorDrawable = new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
        colorDrawable.setBounds(0, 0, viewGroup.getWidth(), viewGroup.getHeight());
        colorDrawable.setAlpha((int) (f10 * 255.0f));
        viewGroup.getOverlay().add(colorDrawable);
    }

    private static void clearDim(Activity activity) {
        ((ViewGroup) activity.getWindow().getDecorView().getRootView()).getOverlay().clear();
    }

    public static String getJson(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getAssets().open(str)));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        return sb.toString();
    }

    public static void setBackgroundAlpha(Context context, float f10) {
        if (f10 == 1.0f) {
            clearDim((Activity) context);
        } else {
            applyDim((Activity) context, f10);
        }
    }
}
