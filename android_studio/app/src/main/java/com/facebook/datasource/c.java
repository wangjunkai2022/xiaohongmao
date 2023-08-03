package com.facebook.datasource;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BaseDataSubscriber.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class c<T> implements f<T> {
    @Override // com.facebook.datasource.f
    public void a(@r7.g d<T> dataSource) {
    }

    @Override // com.facebook.datasource.f
    public void b(@r7.g d<T> dataSource) {
        try {
            e(dataSource);
        } finally {
            dataSource.close();
        }
    }

    @Override // com.facebook.datasource.f
    public void c(@r7.g d<T> dataSource) {
        boolean b10 = dataSource.b();
        try {
            f(dataSource);
        } finally {
            if (b10) {
                dataSource.close();
            }
        }
    }

    @Override // com.facebook.datasource.f
    public void d(@r7.g d<T> dataSource) {
    }

    protected abstract void e(@r7.g d<T> dataSource);

    protected abstract void f(@r7.g d<T> dataSource);
}
