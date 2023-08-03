package com.im.freechat.ui.main;

import android.view.View;
import android.widget.ImageView;
import b4.b;
import com.bigkoo.convenientbanner.holder.Holder;
import com.im.freechat.extend.m;
import com.im.freechat.shared.entities.banner.Banner;
import kotlin.Metadata;
import m8.h;

/* compiled from: BannerHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\u0012\u0010\b\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/ui/main/a;", "Lcom/bigkoo/convenientbanner/holder/Holder;", "Lcom/im/freechat/shared/entities/banner/Banner;", "Landroid/view/View;", "itemView", "", "a", "data", "b", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "image", "<init>", "(Landroid/view/View;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends Holder<Banner> {
    @h

    /* renamed from: a  reason: collision with root package name */
    private ImageView f43575a;

    public a(@h View view) {
        super(view);
    }

    protected void a(@h View view) {
        this.f43575a = view != null ? (ImageView) view.findViewById(b.j.ivBanner) : null;
    }

    /* renamed from: b */
    public void c(@h Banner banner) {
        ImageView imageView = this.f43575a;
        if (imageView != null) {
            m.s(imageView, banner != null ? banner.getPathSmall() : null, 0.0f, false, 0, 14, null);
        }
    }
}
