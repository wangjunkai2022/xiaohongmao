package com.qennnsad.aknkaksd.util.extentions;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FragmentExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/fragment/app/Fragment;", "Landroidx/appcompat/app/AppCompatActivity;", "a", "(Landroidx/fragment/app/Fragment;)Landroidx/appcompat/app/AppCompatActivity;", "appCompatActivity", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @h
    public static final AppCompatActivity a(@g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        FragmentActivity activity = fragment.getActivity();
        if (activity instanceof AppCompatActivity) {
            return (AppCompatActivity) activity;
        }
        return null;
    }
}
