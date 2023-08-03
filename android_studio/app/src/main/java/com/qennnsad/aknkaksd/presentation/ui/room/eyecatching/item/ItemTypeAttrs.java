package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.item;

import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import com.didi.live.spring.R;
import kotlin.Metadata;

/* compiled from: ItemTypeAttrs.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u001d\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B?\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0016\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006R\u0017\u0010\u0013\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006R\u0017\u0010\u0016\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0004\u001a\u0004\b\u0015\u0010\u0006j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001e¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;", "", "", "a", "I", "getType", "()I", "type", "b", "getPrice", "price", "c", "getDurationMin", "durationMin", "d", "getBgPurchaseResId", "bgPurchaseResId", "e", "getBgExpandResId", "bgExpandResId", "f", "getColorTitleResId", "colorTitleResId", "<init>", "(Ljava/lang/String;IIIIIII)V", "Type1", "Type2", "Type3", "Type4", "Type5", "Type6", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public enum ItemTypeAttrs {
    Type1(1, 300, 1, R.drawable.pinned_purchase_item_1, R.drawable.pinned_bg_expand_1, R.string.blue_1),
    Type2(2, 500, 2, R.drawable.pinned_purchase_item_2, R.drawable.pinned_bg_expand_2, R.string.purple_2),
    Type3(3, 1000, 5, R.drawable.pinned_purchase_item_3, R.drawable.pinned_bg_expand_3, R.string.pink_5),
    Type4(4, 5000, 30, R.drawable.pinned_purchase_item_4, R.drawable.pinned_bg_expand_4, R.string.green_30),
    Type5(5, 10000, 60, R.drawable.pinned_purchase_item_5, R.drawable.pinned_bg_expand_5, R.string.red_60),
    Type6(6, 50000, 120, R.drawable.pinned_purchase_item_6, R.drawable.pinned_bg_expand_6, R.string.gold_120);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f53365a;

    /* renamed from: b  reason: collision with root package name */
    private final int f53366b;

    /* renamed from: c  reason: collision with root package name */
    private final int f53367c;

    /* renamed from: d  reason: collision with root package name */
    private final int f53368d;

    /* renamed from: e  reason: collision with root package name */
    private final int f53369e;

    /* renamed from: f  reason: collision with root package name */
    private final int f53370f;

    ItemTypeAttrs(int i4, int i10, int i11, @DrawableRes int i12, @DrawableRes int i13, @StringRes int i14) {
        this.f53365a = i4;
        this.f53366b = i10;
        this.f53367c = i11;
        this.f53368d = i12;
        this.f53369e = i13;
        this.f53370f = i14;
    }

    public final int getBgExpandResId() {
        return this.f53369e;
    }

    public final int getBgPurchaseResId() {
        return this.f53368d;
    }

    public final int getColorTitleResId() {
        return this.f53370f;
    }

    public final int getDurationMin() {
        return this.f53367c;
    }

    public final int getPrice() {
        return this.f53366b;
    }

    public final int getType() {
        return this.f53365a;
    }
}
