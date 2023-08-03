package com.facebook.datasource;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BaseBooleanSubscriber.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class b implements f<Boolean> {
    @Override // com.facebook.datasource.f
    public void a(d<Boolean> dataSource) {
    }

    @Override // com.facebook.datasource.f
    public void b(d<Boolean> dataSource) {
        try {
            e(dataSource);
        } finally {
            dataSource.close();
        }
    }

    @Override // com.facebook.datasource.f
    public void c(d<Boolean> dataSource) {
        try {
            f(dataSource.a().booleanValue());
        } finally {
            dataSource.close();
        }
    }

    @Override // com.facebook.datasource.f
    public void d(d<Boolean> dataSource) {
    }

    protected abstract void e(d<Boolean> dataSource);

    protected abstract void f(boolean isFoundInDisk);
}
