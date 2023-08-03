package com.qennnsad.aknkaksd.presentation.ui.base.page;

import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.data.bean.PageBean;
import com.qennnsad.aknkaksd.presentation.ui.base.page.e;
import io.reactivex.z;

/* compiled from: PagedPresenter.java */
/* loaded from: classes3.dex */
public abstract class d<DataType, SubUiType extends e<DataType>, ManagerType> extends com.qennnsad.aknkaksd.presentation.ui.base.e<SubUiType> {

    /* renamed from: d  reason: collision with root package name */
    private c f52531d;

    /* renamed from: e  reason: collision with root package name */
    private ManagerType f52532e;

    public d(SubUiType subuitype) {
        super(subuitype);
        this.f52532e = g();
        this.f52531d = new c();
    }

    protected abstract z<BaseResponse<PageBean<DataType>>> f(ManagerType managertype, int i4);

    protected abstract ManagerType g();
}
