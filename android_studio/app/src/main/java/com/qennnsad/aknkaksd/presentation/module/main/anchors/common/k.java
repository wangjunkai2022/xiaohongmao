package com.qennnsad.aknkaksd.presentation.module.main.anchors.common;

import android.widget.TextView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;
import e5.r2;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnchorAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\"\u0014\u0010\u0007\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0006\"\u0014\u0010\t\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0006\"\u0014\u0010\u000b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0006¨\u0006\f"}, d2 = {"Le5/r2;", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "limit", "", "a", "", "I", "TYPE_ANCHOR", "b", "TYPE_BANNER", "c", "TYPE_AD", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final int f51439a = 10;

    /* renamed from: b  reason: collision with root package name */
    public static final int f51440b = 11;

    /* renamed from: c  reason: collision with root package name */
    public static final int f51441c = 12;

    public static final void a(@m8.g r2 r2Var, @m8.h PrivateLimitBean privateLimitBean) {
        Intrinsics.checkNotNullParameter(r2Var, "<this>");
        Integer valueOf = privateLimitBean != null ? Integer.valueOf(privateLimitBean.getPtid()) : null;
        if (valueOf == null) {
            TextView itemHotAnchorTvOnlineLeixing = r2Var.f63001k;
            Intrinsics.checkNotNullExpressionValue(itemHotAnchorTvOnlineLeixing, "itemHotAnchorTvOnlineLeixing");
            itemHotAnchorTvOnlineLeixing.setVisibility(8);
        } else if (valueOf.intValue() == 0) {
            r2Var.f63001k.setText("普通房");
            TextView itemHotAnchorTvOnlineLeixing2 = r2Var.f63001k;
            Intrinsics.checkNotNullExpressionValue(itemHotAnchorTvOnlineLeixing2, "itemHotAnchorTvOnlineLeixing");
            itemHotAnchorTvOnlineLeixing2.setVisibility(8);
        } else if (valueOf.intValue() == 1) {
            r2Var.f63001k.setText("密码房");
            TextView itemHotAnchorTvOnlineLeixing3 = r2Var.f63001k;
            Intrinsics.checkNotNullExpressionValue(itemHotAnchorTvOnlineLeixing3, "itemHotAnchorTvOnlineLeixing");
            itemHotAnchorTvOnlineLeixing3.setVisibility(0);
            r2Var.f63001k.setBackgroundResource(R.drawable.shape_hot_room_type_level);
        } else if (valueOf.intValue() == 2) {
            TextView itemHotAnchorTvOnlineLeixing4 = r2Var.f63001k;
            Intrinsics.checkNotNullExpressionValue(itemHotAnchorTvOnlineLeixing4, "itemHotAnchorTvOnlineLeixing");
            itemHotAnchorTvOnlineLeixing4.setVisibility(0);
            TextView textView = r2Var.f63001k;
            textView.setText("门票:" + privateLimitBean.getPrerequisite() + com.qennnsad.aknkaksd.e.f48515g);
            r2Var.f63001k.setBackgroundResource(R.drawable.shape_hot_room_type_ticket);
            r2Var.f63001k.setCompoundDrawablesWithIntrinsicBounds(R.drawable.index_ticket, 0, 0, 0);
        } else if (valueOf.intValue() == 3) {
            TextView itemHotAnchorTvOnlineLeixing5 = r2Var.f63001k;
            Intrinsics.checkNotNullExpressionValue(itemHotAnchorTvOnlineLeixing5, "itemHotAnchorTvOnlineLeixing");
            itemHotAnchorTvOnlineLeixing5.setVisibility(0);
            TextView textView2 = r2Var.f63001k;
            textView2.setText("等级:" + privateLimitBean.getPrerequisite() + (char) 32423);
            r2Var.f63001k.setBackgroundResource(R.drawable.shape_hot_room_type_level);
        } else if (valueOf.intValue() == 4) {
            TextView itemHotAnchorTvOnlineLeixing6 = r2Var.f63001k;
            Intrinsics.checkNotNullExpressionValue(itemHotAnchorTvOnlineLeixing6, "itemHotAnchorTvOnlineLeixing");
            itemHotAnchorTvOnlineLeixing6.setVisibility(0);
            TextView textView3 = r2Var.f63001k;
            textView3.setText(privateLimitBean.getPrerequisite() + "金币/分钟");
            r2Var.f63001k.setBackgroundResource(R.drawable.shape_hot_room_type_time);
            r2Var.f63001k.setCompoundDrawablesWithIntrinsicBounds(R.drawable.index_time, 0, 0, 0);
        } else if (valueOf.intValue() == 5) {
            TextView itemHotAnchorTvOnlineLeixing7 = r2Var.f63001k;
            Intrinsics.checkNotNullExpressionValue(itemHotAnchorTvOnlineLeixing7, "itemHotAnchorTvOnlineLeixing");
            itemHotAnchorTvOnlineLeixing7.setVisibility(0);
            r2Var.f63001k.setText("福利房");
            r2Var.f63001k.setBackgroundResource(R.drawable.shape_hot_room_type_fuli);
            r2Var.f63001k.setCompoundDrawablesWithIntrinsicBounds(R.drawable.index_fuli, 0, 0, 0);
        }
    }
}
