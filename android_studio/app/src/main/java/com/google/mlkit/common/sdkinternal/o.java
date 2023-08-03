package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.mlkit_common.zzan;
import java.util.List;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class o {
    @NonNull
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    public static final String f35885a = "com.google.android.gms.vision.dynamite";
    @NonNull
    @u2.a

    /* renamed from: b  reason: collision with root package name */
    public static final String f35886b = "com.google.android.gms.tflite_dynamite";
    @NonNull
    @u2.a

    /* renamed from: c  reason: collision with root package name */
    public static final String f35887c = "com.google.android.gms.mlkit.nlclassifier";
    @NonNull
    @u2.a

    /* renamed from: d  reason: collision with root package name */
    public static final String f35888d = "com.google.android.gms.mlkit.langid";
    @NonNull
    @u2.a

    /* renamed from: e  reason: collision with root package name */
    public static final String f35889e = "com.google.android.gms.vision.barcode";
    @NonNull
    @u2.a

    /* renamed from: f  reason: collision with root package name */
    public static final String f35890f = "barcode";
    @NonNull
    @u2.a

    /* renamed from: g  reason: collision with root package name */
    public static final String f35891g = "custom_ica";
    @NonNull
    @u2.a

    /* renamed from: h  reason: collision with root package name */
    public static final String f35892h = "face";
    @NonNull
    @u2.a

    /* renamed from: i  reason: collision with root package name */
    public static final String f35893i = "ica";
    @NonNull
    @u2.a

    /* renamed from: j  reason: collision with root package name */
    public static final String f35894j = "ocr";
    @NonNull
    @u2.a

    /* renamed from: k  reason: collision with root package name */
    public static final String f35895k = "langid";
    @NonNull
    @u2.a

    /* renamed from: l  reason: collision with root package name */
    public static final String f35896l = "nlclassifier";
    @NonNull
    @u2.a

    /* renamed from: m  reason: collision with root package name */
    public static final String f35897m = "tflite_dynamite";
    @NonNull
    @u2.a

    /* renamed from: n  reason: collision with root package name */
    public static final String f35898n = "barcode_ui";
    @NonNull
    @u2.a

    /* renamed from: o  reason: collision with root package name */
    public static final String f35899o = "smart_reply";

    private o() {
    }

    @u2.a
    public static boolean a(@NonNull Context context, @NonNull List<String> list) {
        try {
            for (String str : list) {
                DynamiteModule.e(context, DynamiteModule.f29329b, str);
            }
            return true;
        } catch (DynamiteModule.LoadingException unused) {
            return false;
        }
    }

    @u2.a
    public static void b(@NonNull Context context, @NonNull String str) {
        c(context, zzan.zzj(str));
    }

    @u2.a
    public static void c(@NonNull Context context, @NonNull List<String> list) {
        Intent intent = new Intent();
        intent.setClassName("com.google.android.gms", "com.google.android.gms.vision.DependencyBroadcastReceiverProxy");
        intent.setAction("com.google.android.gms.vision.DEPENDENCY");
        intent.putExtra("com.google.android.gms.vision.DEPENDENCIES", TextUtils.join(",", list));
        intent.putExtra("requester_app_package", context.getApplicationInfo().packageName);
        context.sendBroadcast(intent);
    }
}
