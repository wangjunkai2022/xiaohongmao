package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.qennnsad.aknkaksd.data.bean.user.SettingsBean;
import e5.d3;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SettingsAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J&\u0010\b\u001a\u00020\u00062\u001e\u0010\u0007\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0004\u0012\u00020\u00060\u0002J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tR0\u0010\u000e\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lkotlin/Function1;", "Lkotlin/Pair;", "", "", "", com.alipay.sdk.authjs.a.f6838i, "e", "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;", "settingsBean", "c", "b", "Lkotlin/jvm/functions/Function1;", "itemCheckCallback", "Le5/d3;", "binding", "<init>", "(Le5/d3;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b0 extends RecyclerView.ViewHolder {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final d3 f53202a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super Pair<String, Boolean>, Unit> f53203b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(@m8.g d3 binding) {
        super(binding.getRoot());
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.f53202a = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(b0 this$0, SettingsBean settingsBean, CompoundButton compoundButton, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(settingsBean, "$settingsBean");
        Function1<? super Pair<String, Boolean>, Unit> function1 = this$0.f53203b;
        if (function1 != null) {
            function1.invoke(new Pair(settingsBean.getName(), Boolean.valueOf(z9)));
        }
    }

    public final void c(@m8.g final SettingsBean settingsBean) {
        Intrinsics.checkNotNullParameter(settingsBean, "settingsBean");
        d3 d3Var = this.f53202a;
        d3Var.f62325c.setText(settingsBean.getDisplayName());
        SwitchCompat switchCompat = d3Var.f62324b;
        switchCompat.setChecked(settingsBean.getEnabled() == 1);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.setting.a0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                b0.d(b0.this, settingsBean, compoundButton, z9);
            }
        });
    }

    public final void e(@m8.g Function1<? super Pair<String, Boolean>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f53203b = callback;
    }
}
